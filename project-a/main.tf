data "external" "slow_plan" {
  program = ["bash", "-c", "sleep 60 && echo '{}'"]
}

output "result" {
  value = data.external.slow_plan.result
}

resource "null_resource" "project_a_resource" {
}
