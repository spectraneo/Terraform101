# Terraform Lab 1 - Random String Generator

A simple Terraform project that demonstrates basic Terraform concepts including variables, locals, outputs, and the random provider.

## Project Overview

This project creates a random string suffix and combines it with application and environment variables to demonstrate:
- Variable usage and default values
- Local value calculations
- Output values
- Random resource generation

## Project Structure

```
Lab1/
├── main.tf                 # Main Terraform configuration with resources and locals
├── variables.tf            # Variable definitions
├── outputs.tf              # Output value definitions
├── versions.tf             # Provider version constraints
├── terraform.tfvars        # Variable values (optional)
├── default.auto.tfvars     # Auto-loaded variable values
└── README.md               # This file
```

## Resources Created

- **random_string.suffix**: Generates a 6-character random string (lowercase letters and numbers only)

## Variables

| Variable | Type | Default | Description |
|----------|------|---------|-------------|
| `application_name` | string | `"nicolasblog"` | Name of the application |
| `environment_name` | string | `"dev"` | Name of the environment |

## Outputs

| Output | Description |
|--------|-------------|
| `application_name` | The application name |
| `environment_name` | The environment name |
| `environment_prefix` | Combined application and environment name (`application_name-environment_name`) |
| `suffix` | The generated random string |

## Usage

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 0.13
- No cloud provider credentials required (uses local random provider only)

### Quick Start

1. **Clone or navigate to the project directory:**
   ```bash
   cd C:\Users\nicol\source\repos\Terraform101\Lab1
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Review the execution plan:**
   ```bash
   terraform plan
   ```

4. **Apply the configuration:**
   ```bash
   terraform apply
   ```

5. **View outputs:**
   ```bash
   terraform output
   ```

### Customizing Variables

You can customize the variables in several ways:

#### Option 1: Modify terraform.tfvars
```hcl
application_name = "myapp"
environment_name = "prod"
```

#### Option 2: Use command line variables
```bash
terraform apply -var="application_name=myapp" -var="environment_name=prod"
```

#### Option 3: Use environment variables
```bash
export TF_VAR_application_name="myapp"
export TF_VAR_environment_name="prod"
terraform apply
```

## Example Output

After running `terraform apply`, you'll see outputs similar to:

```
Outputs:

application_name = "nicolasblog"
environment_name = "dev"
environment_prefix = "nicolasblog-dev"
suffix = "a1b2c3"
```

## Commands Reference

| Command | Description |
|---------|-------------|
| `terraform init` | Initialize the working directory |
| `terraform plan` | Show execution plan |
| `terraform apply` | Apply the configuration |
| `terraform destroy` | Destroy the resources |
| `terraform output` | Show output values |
| `terraform show` | Show current state |

## Learning Objectives

This lab demonstrates:

1. **Basic Terraform structure** - How to organize Terraform files
2. **Variable usage** - Defining and using input variables
3. **Local values** - Computing derived values
4. **Outputs** - Exposing values for external use
5. **Random provider** - Using community providers
6. **State management** - Understanding Terraform state

## Troubleshooting

### State Lock Issues
If you encounter state lock errors:
```bash
# Stop any running terraform processes
Stop-Process -Name terraform -Force -ErrorAction SilentlyContinue

# Then retry your terraform command
terraform plan
```

### Provider Issues
If you encounter provider download issues:
```bash
terraform init -upgrade
```

## Next Steps

- Explore other providers (AWS, Azure, GCP)
- Learn about remote state backends
- Implement modules for reusable configurations
- Add conditional logic and loops

## Author

Created as part of Terraform 101 learning series.