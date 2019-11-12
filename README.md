# Terraform-random -> repo that you can use to see how random work

## how can I use this repository?

This repo has as dependencies a command line or shell git and terraform.You can find the install instructions bellow on [EXTRAS](#extras) section.

## How can I use this repo`?`

### Task - clone repo Terraform-random

- open your shell or command line and go to the directory where you pretend to add the repo

```bash
cd <directory where pretend to add the repo>
```

```git
git clone git@github.com:Orpere/Terraform-random.git
```

### Task - move to your repo folder

```bash
cd Terraform-random
```

### Task - terraform init

- this will retrieve all dependencies for terraform scripts

```terraform
terraform init
```

### Task - run terraform apply

```terraform
terraform apply
```

- This step will prompt <<Do you want to perform these actions?>>
  the answer should be **yes** 

 

### Task - check the result of the random

- In this case was used random what should give to your resource a pet name as bellow

```terraform 
random_integer.Server[1]: Creating...
random_integer.Server[0]: Creating...
random_integer.Server[0]: Creation complete after 0s [id=90]
random_integer.Server[1]: Creation complete after 0s [id=90]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ips = [
  90,
  90,
]
```

### Task - Terraform destroy

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