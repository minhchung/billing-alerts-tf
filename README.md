# gcp-billing-alerts-tf

A budget enables teams to track their actual Google Cloud spend against their planned spend. Understanding what an average month spend is for an application will empower application owners to be aware of excessive spend out of the norm and build upon accountability to research the increase in spend and take action upon it. Users can also use budgets to automate cost control responses.

Creates a GCP Billing Alert and sends to PubSub

Amount
Start with Last Month's.
Enable teams to converge toward a hardcoded budget

Hardcoded threshold rules.
50% - CURRENT
80% - CURRENT
100% - CURRENT
125% - FORECASTED

Topic Notification Output

{
  “budgetDisplayName”: “name-of-budget”,
  “alertThresholdExceeded”: 1.0,
  “costAmount”: 100.01,
  “costIntervalStart”: “2019–01–01T00:00:00Z”,
  “budgetAmount”: 100.00,
  “budgetAmountType”: “SPECIFIED_AMOUNT”,
  “currencyCode”: “USD”
}

This is just a sample of the message with a subset of properties

