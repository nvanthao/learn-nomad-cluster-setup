data_dir   = "/opt/nomad/data"
bind_addr  = "0.0.0.0"
datacenter = "dc1"

# Enable the client
client {
  enabled = true
  options {
    "driver.raw_exec.enable"    = "1"
    "docker.privileged.enabled" = "true"
  }
}

acl {
  enabled = true
}

consul {
  address = "127.0.0.1:8500"
  token   = "CONSUL_TOKEN"
}

vault {
  enabled = true
  address = "http://active.vault.service.consul:8200"
}

log_level = "TRACE"
