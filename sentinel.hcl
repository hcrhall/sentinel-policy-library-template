// The Sentinel CLI's configuration file can be used to control the behavior of the CLI during apply and test operations.
// Reference: https://developer.hashicorp.com/sentinel/docs/configuration

// -------------------------------------------------------------
// FEATURES
// -------------------------------------------------------------
sentinel {
  features = {
    apply-all = true
    terraform = true
  }
}

// -------------------------------------------------------------
// PLUGINS
// -------------------------------------------------------------
import "module" "timely" {
    source = ""
}

// -------------------------------------------------------------
// GLOBALS
// -------------------------------------------------------------
global "assert" {
  value = {
    rules = {
      security_and_analysis = {
        advanced_security = {
          status = "enabled"
        }
        secret_scanning = {
          status = "enabled"
        }
        secret_scanning_push_protection = {
          status = "enabled"
        }
      }
    }
  }
}

// -------------------------------------------------------------
// POLICIES
// -------------------------------------------------------------
policy "advanced_security_is_enabled" {
  source            = "./policies/example.sentinel"
  enforcement_level = "hard-mandatory"
  params = {
    block   = "security_and_analysis"
    feature = "advanced_security"
  }
}
