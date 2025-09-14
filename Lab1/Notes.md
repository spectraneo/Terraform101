# Terraform Best Practices

- Use environment variables only for secrets and values that need to be introduced programmatically or dynamically.

- Use a default TFR file for application wide settings that don't need to change for each environment, and then create a TFR file for each environment (dev, test, prod, stage, perf test, load test, whatever you name it).

- If you're going to provision it, create a TFR file for it and call it a day.