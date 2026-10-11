resource "google_cloud_run_v2_job" "cloud_run_v2_jobs" {
  for_each = var.cloud_run_v2_jobs

  location              = each.value.location
  name                  = each.value.name
  annotations           = each.value.annotations
  client                = each.value.client
  client_version        = each.value.client_version
  deletion_policy       = each.value.deletion_policy
  deletion_protection   = each.value.deletion_protection
  labels                = each.value.labels
  launch_stage          = each.value.launch_stage
  project               = each.value.project
  run_execution_token   = each.value.run_execution_token
  start_execution_token = each.value.start_execution_token
  tags                  = each.value.tags

  template {
    annotations     = each.value.template.annotations
    delay_execution = each.value.template.delay_execution
    labels          = each.value.template.labels
    parallelism     = each.value.template.parallelism
    task_count      = each.value.template.task_count
    template {
      dynamic "containers" {
        for_each = each.value.template.template.containers != null ? each.value.template.template.containers : []
        content {
          args       = containers.value.args
          command    = containers.value.command
          depends_on = containers.value.depends_on
          dynamic "env" {
            for_each = containers.value.env != null ? containers.value.env : []
            content {
              name  = env.value.name
              value = env.value.value
              dynamic "value_source" {
                for_each = env.value.value_source != null ? [env.value.value_source] : []
                content {
                  dynamic "secret_key_ref" {
                    for_each = value_source.value.secret_key_ref != null ? [value_source.value.secret_key_ref] : []
                    content {
                      secret  = secret_key_ref.value.secret
                      version = secret_key_ref.value.version
                    }
                  }
                }
              }
            }
          }
          image = containers.value.image
          name  = containers.value.name
          dynamic "ports" {
            for_each = containers.value.ports != null ? containers.value.ports : []
            content {
              container_port = ports.value.container_port
              name           = ports.value.name
            }
          }
          dynamic "resources" {
            for_each = containers.value.resources != null ? [containers.value.resources] : []
            content {
              limits = resources.value.limits
            }
          }
          sandbox_launcher = containers.value.sandbox_launcher
          dynamic "startup_probe" {
            for_each = containers.value.startup_probe != null ? [containers.value.startup_probe] : []
            content {
              failure_threshold = startup_probe.value.failure_threshold
              dynamic "grpc" {
                for_each = startup_probe.value.grpc != null ? [startup_probe.value.grpc] : []
                content {
                  port    = grpc.value.port
                  service = grpc.value.service
                }
              }
              dynamic "http_get" {
                for_each = startup_probe.value.http_get != null ? [startup_probe.value.http_get] : []
                content {
                  dynamic "http_headers" {
                    for_each = http_get.value.http_headers != null ? http_get.value.http_headers : []
                    content {
                      name  = http_headers.value.name
                      value = http_headers.value.value
                    }
                  }
                  path = http_get.value.path
                  port = http_get.value.port
                }
              }
              initial_delay_seconds = startup_probe.value.initial_delay_seconds
              period_seconds        = startup_probe.value.period_seconds
              dynamic "tcp_socket" {
                for_each = startup_probe.value.tcp_socket != null ? [startup_probe.value.tcp_socket] : []
                content {
                  port = tcp_socket.value.port
                }
              }
              timeout_seconds = startup_probe.value.timeout_seconds
            }
          }
          dynamic "volume_mounts" {
            for_each = containers.value.volume_mounts != null ? containers.value.volume_mounts : []
            content {
              mount_path = volume_mounts.value.mount_path
              name       = volume_mounts.value.name
              sub_path   = volume_mounts.value.sub_path
            }
          }
          working_dir = containers.value.working_dir
        }
      }
      encryption_key                = each.value.template.template.encryption_key
      execution_environment         = each.value.template.template.execution_environment
      gpu_zonal_redundancy_disabled = each.value.template.template.gpu_zonal_redundancy_disabled
      max_retries                   = each.value.template.template.max_retries
      dynamic "node_selector" {
        for_each = each.value.template.template.node_selector != null ? [each.value.template.template.node_selector] : []
        content {
          accelerator = node_selector.value.accelerator
        }
      }
      service_account = each.value.template.template.service_account
      timeout         = each.value.template.template.timeout
      dynamic "volumes" {
        for_each = each.value.template.template.volumes != null ? each.value.template.template.volumes : []
        content {
          dynamic "cloud_sql_instance" {
            for_each = volumes.value.cloud_sql_instance != null ? [volumes.value.cloud_sql_instance] : []
            content {
              instances = cloud_sql_instance.value.instances
            }
          }
          dynamic "empty_dir" {
            for_each = volumes.value.empty_dir != null ? [volumes.value.empty_dir] : []
            content {
              medium     = empty_dir.value.medium
              size_limit = empty_dir.value.size_limit
            }
          }
          dynamic "gcs" {
            for_each = volumes.value.gcs != null ? [volumes.value.gcs] : []
            content {
              bucket        = gcs.value.bucket
              mount_options = gcs.value.mount_options
              read_only     = gcs.value.read_only
            }
          }
          name = volumes.value.name
          dynamic "nfs" {
            for_each = volumes.value.nfs != null ? [volumes.value.nfs] : []
            content {
              path      = nfs.value.path
              read_only = nfs.value.read_only
              server    = nfs.value.server
            }
          }
          dynamic "secret" {
            for_each = volumes.value.secret != null ? [volumes.value.secret] : []
            content {
              default_mode = secret.value.default_mode
              dynamic "items" {
                for_each = secret.value.items != null ? secret.value.items : []
                content {
                  mode    = items.value.mode
                  path    = items.value.path
                  version = items.value.version
                }
              }
              secret = secret.value.secret
            }
          }
        }
      }
      dynamic "vpc_access" {
        for_each = each.value.template.template.vpc_access != null ? [each.value.template.template.vpc_access] : []
        content {
          connector = vpc_access.value.connector
          egress    = vpc_access.value.egress
          dynamic "network_interfaces" {
            for_each = vpc_access.value.network_interfaces != null ? vpc_access.value.network_interfaces : []
            content {
              network    = network_interfaces.value.network
              subnetwork = network_interfaces.value.subnetwork
              tags       = network_interfaces.value.tags
            }
          }
        }
      }
    }
  }

  dynamic "binary_authorization" {
    for_each = each.value.binary_authorization != null ? [each.value.binary_authorization] : []
    content {
      breakglass_justification = binary_authorization.value.breakglass_justification
      policy                   = binary_authorization.value.policy
      use_default              = binary_authorization.value.use_default
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

