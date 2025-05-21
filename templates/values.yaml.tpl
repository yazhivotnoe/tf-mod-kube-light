generic:
    labels: {}
    annotations: {}
    extraSelectorLabels: {}
    podLabels: {}
    podAnnotations: {}
    extraVolumes: []
    extraImagePullSecrets: []
    usePredefinedAffinity: true

podAffinityPreset: soft

podAntiAffinityPreset: soft

nodeAffinityPreset: {}

diagnosticMode:
    enbled: false
    command: [ "sleep" ]
    args: [ "infinity" ]

releasePrefix: "-"

image:
    name: "${image_name}"
    tag: "${image_tag}"
    pullPolicy: "IfNotPresent"

IngressEnable: ${ingress_enable}
ingresses:
  - name: light-ingress
    hosts:
      - hostname: ${ingress_host_name}
        paths:
          - path: /
            serviceName: light-svc
            servicePort: ${app_port}

ServiceEnable: ${service_enable}
services:
    light-svc:
        type: ClusterIP
        ports:
          - name: web
            port: ${app_port}
            targetPort: ${app_port}
        extraSelectorLabels:
            app: light

deployments:
    light:
        replicas: ${app_replicas}
        extraSelectorLabels:
            app: light
        restartPolicy: Always
        serviceAccountName: light-sa
        volumes:
          - type: secret
            name: light-config-secret
        containers:
          - name: light
            ports:
              - name: light-port
                containerPort: ${app_port}
            volumeMounts:
              - name: light-config-secret
                mountPath: /root/config/config.yml
                subPath: config.yml

secrets:
    light-config-secret:
        data:
            config.yml: |-
                # base server config
                host: ${app_host}
                port: "${app_port}"

                clusterName: "${cluster_name}"

                # deployed apiAddress
                cluesterApiAddress: "${cluster_api_address}"


                # default path to CA cluster cert if it placed in pods with serviceaccount 
                clusterCAPath: "/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"

                # keycloak vars
                keycloakHost: "${keycloak_host}"
                keycloakRealm: "${keycloak_realm}" # realm with client

                idpIssuerUrl: "${keycloak_host}/realms/${keycloak_realm}"
                clientID: "${client_id}" # client in keycloakRealm 
                clientSecret: "${client_secret}"

                usernameClaim: "preferred_username"

                # app vars
                TemplatesDir: "templates"
                jwtsecret: ${jwt_secret}
                cookieSecure: false

serviceAccount:
    light-sa:
        role:
            name: light-role
            rules:
              - apiGroups:
                  - "*"
                resources:
                  - "*"
                verbs:
                  - "*"