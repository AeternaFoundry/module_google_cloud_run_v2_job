output "cloud_run_v2_jobs_id" {
  description = "Map of id values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no id are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_run_v2_jobs_annotations" {
  description = "Map of annotations values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no annotations are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "cloud_run_v2_jobs_binary_authorization" {
  description = "Map of binary_authorization values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no binary_authorization are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => one(v.binary_authorization) if v.binary_authorization != null && length(v.binary_authorization) > 0 }
}
output "cloud_run_v2_jobs_client" {
  description = "Map of client values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no client are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.client if v.client != null && length(v.client) > 0 }
}
output "cloud_run_v2_jobs_client_version" {
  description = "Map of client_version values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no client_version are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.client_version if v.client_version != null && length(v.client_version) > 0 }
}
output "cloud_run_v2_jobs_conditions" {
  description = "Map of conditions values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no conditions are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "cloud_run_v2_jobs_create_time" {
  description = "Map of create_time values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no create_time are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "cloud_run_v2_jobs_creator" {
  description = "Map of creator values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no creator are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.creator if v.creator != null && length(v.creator) > 0 }
}
output "cloud_run_v2_jobs_delete_time" {
  description = "Map of delete_time values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no delete_time are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "cloud_run_v2_jobs_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_run_v2_jobs_deletion_protection" {
  description = "Map of deletion_protection values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no deletion_protection are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.deletion_protection if v.deletion_protection != null }
}
output "cloud_run_v2_jobs_effective_annotations" {
  description = "Map of effective_annotations values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no effective_annotations are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "cloud_run_v2_jobs_effective_labels" {
  description = "Map of effective_labels values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no effective_labels are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "cloud_run_v2_jobs_etag" {
  description = "Map of etag values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no etag are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloud_run_v2_jobs_execution_count" {
  description = "Map of execution_count values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no execution_count are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.execution_count if v.execution_count != null }
}
output "cloud_run_v2_jobs_expire_time" {
  description = "Map of expire_time values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no expire_time are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "cloud_run_v2_jobs_generation" {
  description = "Map of generation values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no generation are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.generation if v.generation != null && length(v.generation) > 0 }
}
output "cloud_run_v2_jobs_labels" {
  description = "Map of labels values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no labels are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "cloud_run_v2_jobs_last_modifier" {
  description = "Map of last_modifier values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no last_modifier are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.last_modifier if v.last_modifier != null && length(v.last_modifier) > 0 }
}
output "cloud_run_v2_jobs_latest_created_execution" {
  description = "Map of latest_created_execution values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no latest_created_execution are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.latest_created_execution if v.latest_created_execution != null && length(v.latest_created_execution) > 0 }
}
output "cloud_run_v2_jobs_launch_stage" {
  description = "Map of launch_stage values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no launch_stage are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.launch_stage if v.launch_stage != null && length(v.launch_stage) > 0 }
}
output "cloud_run_v2_jobs_location" {
  description = "Map of location values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no location are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cloud_run_v2_jobs_name" {
  description = "Map of name values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no name are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_run_v2_jobs_observed_generation" {
  description = "Map of observed_generation values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no observed_generation are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.observed_generation if v.observed_generation != null && length(v.observed_generation) > 0 }
}
output "cloud_run_v2_jobs_project" {
  description = "Map of project values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no project are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "cloud_run_v2_jobs_reconciling" {
  description = "Map of reconciling values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no reconciling are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.reconciling if v.reconciling != null }
}
output "cloud_run_v2_jobs_run_execution_token" {
  description = "Map of run_execution_token values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no run_execution_token are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.run_execution_token if v.run_execution_token != null && length(v.run_execution_token) > 0 }
}
output "cloud_run_v2_jobs_start_execution_token" {
  description = "Map of start_execution_token values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no start_execution_token are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.start_execution_token if v.start_execution_token != null && length(v.start_execution_token) > 0 }
}
output "cloud_run_v2_jobs_tags" {
  description = "Map of tags values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no tags are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloud_run_v2_jobs_template" {
  description = "Map of template values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no template are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => one(v.template) if v.template != null && length(v.template) > 0 }
}
output "cloud_run_v2_jobs_terminal_condition" {
  description = "Map of terminal_condition values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no terminal_condition are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.terminal_condition if v.terminal_condition != null && length(v.terminal_condition) > 0 }
}
output "cloud_run_v2_jobs_terraform_labels" {
  description = "Map of terraform_labels values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "cloud_run_v2_jobs_uid" {
  description = "Map of uid values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no uid are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "cloud_run_v2_jobs_update_time" {
  description = "Map of update_time values across all cloud_run_v2_jobs, keyed the same as var.cloud_run_v2_jobs except keys with no update_time are omitted"
  value       = { for k, v in google_cloud_run_v2_job.cloud_run_v2_jobs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

