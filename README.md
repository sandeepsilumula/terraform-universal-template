# terraform-universal-template

Markdown
# Terraform AWS Infrastructure Template
This repository contains a modular, production-ready AWS architecture.
## Getting Started
1. Create the S3 bucket and DynamoDB lock table in AWS Console.
2. Update `backend.tf` with your bucket name.
3. Configure `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` in GitHub
Secrets.
4. Push your code to `main` to trigger the CI/CD pipeline.
## SSH Access
After the pipeline runs, find your new IP in the GitHub Actions logs.
SSH using your key:
`ssh -i "YourKeyName.pem" ec2-user@<IP_ADDRESS>`
