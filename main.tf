resource "helm_release" "this" {
  name             = var.release_name
  namespace        = var.deployment_namespace
  create_namespace = var.create_namespace
  repository       = var.helm_repo
  chart            = var.chart_name
  values = [templatefile("${path.module}/templates/values.yaml.tpl", {
    image_name          = var.image_name
    image_tag           = var.image_tag
    ingress_enable      = var.ingress_enable
    ingress_host_name   = local.ingress_host_name
    service_enable      = var.service_enable
    app_replicas        = var.app_replicas
    app_port            = var.app_port
    app_host            = var.app_host
    cluster_name        = var.cluster_name
    cluster_api_address = var.cluster_api_address
    keycloak_host       = var.keycloak_host
    keycloak_realm      = var.keycloak_realm
    client_id           = var.client_id
    client_secret       = var.client_secret
    jwt_secret          = var.jwt_secret
  })]
}
