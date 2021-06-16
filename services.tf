
resource "cloudfoundry_service_instance" "s3" {
  name         = "s3"
  space        = local.space_id
  service_plan = data.cloudfoundry_service.s3.service_plans["US Standard"]

  depends_on = [cloudfoundry_space_users.users]
}

resource "cloudfoundry_service_instance" "metrics" {
  name         = "metrics"
  space        = local.space_id
  service_plan = data.cloudfoundry_service.metrics.service_plans["metrics"]

  depends_on = [cloudfoundry_space_users.users]
}