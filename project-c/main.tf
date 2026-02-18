data "external" "slow_plan" {
  program = ["bash", "-c", "sleep 60 && echo '{}'"]
}

resource "null_resource" "noop" {}

output "result" {
  value = data.external.slow_plan.result
}
