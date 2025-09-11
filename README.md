# Terraform101

A basic Terraform learning project demonstrating infrastructure as code concepts.

## Project Structure

```
Terraform101/
├── Lab1/
│   └── main.tf          # Lab 1 Terraform configuration
├── .gitignore           # Terraform-specific gitignore rules
└── README.md           # This file
```

## Lab 1

Contains a simple Terraform configuration that creates a random string resource with a length of 6 characters.

### Usage

1. Navigate to the Lab1 directory:
   ```powershell
   cd Lab1
   ```

2. Initialize Terraform:
   ```powershell
   terraform init
   ```

3. Plan the deployment:
   ```powershell
   terraform plan
   ```

4. Apply the configuration:
   ```powershell
   terraform apply
   ```

5. Clean up resources:
   ```powershell
   terraform destroy
   ```

## Prerequisites

- Terraform installed on your system
- Basic understanding of infrastructure as code concepts

## Notes

This project uses a comprehensive `.gitignore` file to exclude Terraform state files, lock files, and other sensitive or transient files from version control.
