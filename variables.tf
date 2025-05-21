variable "config_context" {
  description = "Set context name from kubeconf here"
  type        = string
}
variable "config_path" {
  default     = "~/.kube/config"
  description = "Set path to k8s contexts file"
  type        = string
}

variable "helm_repo" {
  default     = "https://yazhivotnoe.github.io/charts/"
  description = "Set helm repository name or url here"
  type        = string
}

variable "chart_name" {
  default     = "light"
  description = "Set light chart name here"
  type        = string
}

variable "create_namespace" {
  default     = true
  description = "Set light create namespace"
  type        = bool
}

variable "release_name" {
  default     = "light"
  description = "Set light release name"
  type        = string
}

variable "deployment_namespace" {
  default     = "light"
  description = "Set light deployment namespace"
  type        = string
}

variable "image_name" {
  description = "The name of the image"
  type        = string
  default     = "yazhivotnoe/light"
}

variable "image_tag" {
  description = "The tag of the image"
  type        = string
  default     = "0.0.1"
}

variable "ingress_enable" {
  description = "Enable or disable ingress"
  type        = bool
  default     = true
}

variable "ingress_host_name" {
  description = "The host name for ingress"
  default     = "need_to_overwrite"
  type        = string
}

variable "service_enable" {
  description = "Enable or disable the service"
  type        = bool
  default     = true
}

variable "app_replicas" {
  description = "Number of application replicas"
  type        = number
  default     = 3
}

variable "app_port" {
  description = "The port on which the application runs"
  type        = number
  default     = 9999
}

variable "app_host" {
  description = "The host address for the application"
  type        = string
  default     = "0.0.0.0"
}

variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "cluster_api_address" {
  description = "The API address of the cluster"
  type        = string
}

variable "keycloak_host" {
  description = "The host for Keycloak"
  type        = string
}

variable "keycloak_realm" {
  description = "The realm for Keycloak"
  type        = string
  default     = "master"
}

variable "client_id" {
  description = "The client ID for Keycloak"
  type        = string
  default     = "kubernetes"
}

variable "client_secret" {
  description = "The client secret for Keycloak"
  type        = string
}

variable "jwt_secret" {
  default = "n3X9QIPKn5ZfMFJq9i2p"
  type    = string
}
