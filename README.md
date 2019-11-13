# terraform-random -> repo that you can use to see how random work

## How can I use this repository`?`

This repo has as dependencies a command line or shell git and terraform.You can find the install instructions bellow on [EXTRAS](#extras) section.

## How can I use this repo`?`

### 1 - clone repo terraform-random

- open your shell or command line and go to the directory where you pretend to add the repo

```bash
cd <directory where pretend to add the repo>
```

```git
git clone git@github.com:orlando-pereira/terraform-random.git
```

### 2 - move to your repo folder

```bash
cd terraform-random
```

### 3 - terraform init

- this will retrieve all dependencies for terraform files

```terraform
terraform init
```

### 4 - run terraform apply

```terraform
terraform apply
```

- This step will prompt `<<`Do you want to perform these actions?`>>`
  - the answer should be **yes**

### 5 - check the result of the random

- In this case was used random what should output integer between 80 and 100

```terraform
random_integer.server[0]: Creating...
random_integer.server[1]: Creating...
random_integer.server[0]: Creation complete after 0s [id=90]
random_integer.server[1]: Creation complete after 0s [id=89]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

integer = [
  90,
  89,
]
```

### 6 - terraform destroy

```terraform
terraform destroy
```

- This will request confirmation and if your answer is **yes**
- this will wipe the resources you have builded
  
#### EXTRAS

This repo was based on the [documentation](https://www.terraform.io/docs/providers/random/index.html)

[Install git](https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-intro-md)
for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explanation about all git steps

After clone the repo you can install terraform downloading the adequate version to your OS on [Terraform](https://www.terraform.io/downloads.html)
If you don't know how to install please follow the [tutorial](https://learn.hashicorp.com/terraform/getting-started/install.html)
