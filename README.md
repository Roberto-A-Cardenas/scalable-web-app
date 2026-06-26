# Scalable Web Application on AWS with Load Balancer and Auto Scaling

This project uses Terraform to deploy a fully scalable, fault-tolerant web application on AWS. It demonstrates key cloud architecture concepts including Infrastructure as Code (IaC), auto-healing, and high availability.

---

## Technologies Used

- Terraform – Infrastructure as Code
- AWS EC2 – Virtual servers for web hosting
- AWS Launch Templates – Standardized instance configurations
- AWS Auto Scaling Group – Elastic scaling
- AWS Application Load Balancer (ALB) – Distributes traffic across instances
- Amazon Linux 2 – Base OS for EC2
- Nginx – Lightweight web server
- IAM Roles – Secure instance permissions
- CloudWatch Logs – Debugging via user-data

---

## What It Does

- Provisions a Launch Template with EC2 + Nginx installed
- Creates an Auto Scaling Group with 2 to 4 EC2 instances
- Sets up an Application Load Balancer with target group and health checks
- Uses default VPC and subnets for quick deployment
- Automatically bootstraps web servers with a custom landing page

---

## File Structure

```
scalable-web-app/
├── main.tf              # Infrastructure definition
├── variables.tf         # Input variables
├── terraform.tfvars     # Variable values
├── outputs.tf           # Useful output values
├── user_data.sh         # EC2 startup script (Nginx setup)
└── README.md            # Project documentation
```

---

## How to Deploy

### Prerequisites
- Terraform installed
- AWS CLI configured
- EC2 Key Pair (.pem file)

### Steps

```bash
terraform init
terraform plan
terraform apply
```

After deployment, visit the ALB DNS name from Terraform outputs to access the web app.

---

## Future Improvements

- Add CloudWatch alarms for monitoring
- Add HTTPS via ACM + ALB Listener
- Deploy from GitHub using CodeDeploy
- Replace default VPC with custom VPC

---

## License

MIT License
