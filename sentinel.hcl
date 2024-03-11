// The Sentinel CLI's configuration file can be used to control the behavior of the CLI during apply and test operations.
//  Documentation: https://developer.hashicorp.com/sentinel/docs/configuration

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
// IMPORTS
// -------------------------------------------------------------
import "module" "timely" {
  source = "./imports/modules/timely/timely.sentinel"
}

import "static" "timezone" {
  source = "./imports/static/timezone/data.json"
  format = "json"
}

// -------------------------------------------------------------
// POLICIES
// -------------------------------------------------------------
policy "example" {
  source            = "./policies/example/example.sentinel"
  enforcement_level = "advisory"
  params = {
    year  = 2024
  }
}
