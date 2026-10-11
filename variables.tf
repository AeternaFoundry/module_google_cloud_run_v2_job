variable "cloud_run_v2_jobs" {
  description = <<EOT
Map of cloud_run_v2_jobs, attributes below
Required:
    - location
    - name
    - template (block):
        - annotations (optional)
        - delay_execution (optional)
        - labels (optional)
        - parallelism (optional)
        - task_count (optional)
        - template (required, block):
            - containers (optional, block):
                - args (optional)
                - command (optional)
                - depends_on (optional)
                - env (optional, block):
                    - name (required)
                    - value (optional)
                    - value_source (optional, block):
                        - secret_key_ref (optional, block):
                            - secret (required)
                            - version (required)
                - image (required)
                - name (optional)
                - ports (optional, block):
                    - container_port (optional)
                    - name (optional)
                - resources (optional, block):
                    - limits (optional)
                - sandbox_launcher (optional)
                - startup_probe (optional, block):
                    - failure_threshold (optional)
                    - grpc (optional, block):
                        - port (optional)
                        - service (optional)
                    - http_get (optional, block):
                        - http_headers (optional, block):
                            - name (required)
                            - value (optional)
                        - path (optional)
                        - port (optional)
                    - initial_delay_seconds (optional)
                    - period_seconds (optional)
                    - tcp_socket (optional, block):
                        - port (optional)
                    - timeout_seconds (optional)
                - volume_mounts (optional, block):
                    - mount_path (required)
                    - name (required)
                    - sub_path (optional)
                - working_dir (optional)
            - encryption_key (optional)
            - execution_environment (optional)
            - gpu_zonal_redundancy_disabled (optional)
            - max_retries (optional)
            - node_selector (optional, block):
                - accelerator (required)
            - service_account (optional)
            - timeout (optional)
            - volumes (optional, block):
                - cloud_sql_instance (optional, block):
                    - instances (optional)
                - empty_dir (optional, block):
                    - medium (optional)
                    - size_limit (optional)
                - gcs (optional, block):
                    - bucket (required)
                    - mount_options (optional)
                    - read_only (optional)
                - name (required)
                - nfs (optional, block):
                    - path (optional)
                    - read_only (optional)
                    - server (required)
                - secret (optional, block):
                    - default_mode (optional)
                    - items (optional, block):
                        - mode (optional)
                        - path (required)
                        - version (required)
                    - secret (required)
            - vpc_access (optional, block):
                - connector (optional)
                - egress (optional)
                - network_interfaces (optional, block):
                    - network (optional)
                    - subnetwork (optional)
                    - tags (optional)
Optional:
    - annotations
    - client
    - client_version
    - deletion_policy
    - deletion_protection
    - labels
    - launch_stage
    - project
    - run_execution_token
    - start_execution_token
    - tags
    - binary_authorization (block):
        - breakglass_justification (optional)
        - policy (optional)
        - use_default (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location              = string
    name                  = string
    annotations           = optional(map(string))
    client                = optional(string)
    client_version        = optional(string)
    deletion_policy       = optional(string)
    deletion_protection   = optional(bool)
    labels                = optional(map(string))
    launch_stage          = optional(string)
    project               = optional(string)
    run_execution_token   = optional(string)
    start_execution_token = optional(string)
    tags                  = optional(map(string))
    template = object({
      annotations     = optional(map(string))
      delay_execution = optional(bool)
      labels          = optional(map(string))
      parallelism     = optional(number)
      task_count      = optional(number)
      template = object({
        containers = optional(list(object({
          args       = optional(list(string))
          command    = optional(list(string))
          depends_on = optional(list(string))
          env = optional(list(object({
            name  = string
            value = optional(string)
            value_source = optional(object({
              secret_key_ref = optional(object({
                secret  = string
                version = string
              }))
            }))
          })))
          image = string
          name  = optional(string)
          ports = optional(list(object({
            container_port = optional(number)
            name           = optional(string)
          })))
          resources = optional(object({
            limits = optional(map(string))
          }))
          sandbox_launcher = optional(bool)
          startup_probe = optional(object({
            failure_threshold = optional(number)
            grpc = optional(object({
              port    = optional(number)
              service = optional(string)
            }))
            http_get = optional(object({
              http_headers = optional(list(object({
                name  = string
                value = optional(string)
              })))
              path = optional(string)
              port = optional(number)
            }))
            initial_delay_seconds = optional(number)
            period_seconds        = optional(number)
            tcp_socket = optional(object({
              port = optional(number)
            }))
            timeout_seconds = optional(number)
          }))
          volume_mounts = optional(list(object({
            mount_path = string
            name       = string
            sub_path   = optional(string)
          })))
          working_dir = optional(string)
        })))
        encryption_key                = optional(string)
        execution_environment         = optional(string)
        gpu_zonal_redundancy_disabled = optional(bool)
        max_retries                   = optional(number)
        node_selector = optional(object({
          accelerator = string
        }))
        service_account = optional(string)
        timeout         = optional(string)
        volumes = optional(list(object({
          cloud_sql_instance = optional(object({
            instances = optional(list(string))
          }))
          empty_dir = optional(object({
            medium     = optional(string)
            size_limit = optional(string)
          }))
          gcs = optional(object({
            bucket        = string
            mount_options = optional(list(string))
            read_only     = optional(bool)
          }))
          name = string
          nfs = optional(object({
            path      = optional(string)
            read_only = optional(bool)
            server    = string
          }))
          secret = optional(object({
            default_mode = optional(number)
            items = optional(list(object({
              mode    = optional(number)
              path    = string
              version = string
            })))
            secret = string
          }))
        })))
        vpc_access = optional(object({
          connector = optional(string)
          egress    = optional(string)
          network_interfaces = optional(list(object({
            network    = optional(string)
            subnetwork = optional(string)
            tags       = optional(list(string))
          })))
        }))
      })
    })
    binary_authorization = optional(object({
      breakglass_justification = optional(string)
      policy                   = optional(string)
      use_default              = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

