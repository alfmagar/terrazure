# Terrazure

Docker image for Azure deployments using Terraform.

Includes Checkov as vulnerabilites scanning tool.

Compatible with most used CI/CD tools such as GitHub Actions or BitBucket Pipelines.

### ¿Why Terrazure?

This image allows to login to Azure using a standard account, instead of using a service principal or enterprise application, which is the main limitation of the standard Terraform Docker image.

### Docker Hub

This image is already built and ready to use here:

[Docker Hub - Terrazure](https://hub.docker.com/r/alfmagar/terrazure)

### How to build

```sh
docker build -t <your-image-name>:<your-tag> .
```

### Admitted vars

> **TF_RELEASE:** Terraform release number to be installed.

This variable is only used at build time.

### ¿Where is data stored?

No data is stored.

### How to use

```sh
docker run -ti -v /<your-terraform-code-folder>:/data --name terrazure alfmagar/terrazure:latest
```

Mount your terraform code folder as volume inside the container.

Then login using Azure CLI:

```sh
az login --username <your-user> --tenant <your-tenant-id> --password <your-password>
```

Now you can execute Terraform and/or Checkov as usual.
