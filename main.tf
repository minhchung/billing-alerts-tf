provider "google" {
  project = var.project_id
  user_project_override = true
  billing_project = var.project_id
}

data "google_billing_account" "account" {
  billing_account = var.billing_account_id
}

data "google_project" "project" {
  project_id = var.project_id
}

resource "google_billing_budget" "budget" {
  billing_account = data.google_billing_account.account.id
  display_name    = "${var.display_name}"

  budget_filter {
    projects = ["projects/${data.google_project.project.number}"]
  }

  amount {
    last_period_amount = true
  }

 threshold_rules {
    threshold_percent = 0.5
  }

  threshold_rules {
    threshold_percent = 0.8
  }

  threshold_rules {
    threshold_percent = 1.00
  }

  threshold_rules {
    threshold_percent = 1.25
    spend_basis = "FORECASTED_SPEND"
  }

  all_updates_rule {
    pubsub_topic = "${var.topic}"
  }
}
