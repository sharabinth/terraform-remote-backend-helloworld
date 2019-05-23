# Terraform Null Provider Hello World With Remote State

Terraform code to show the usage of Null Provider for Hello World using TFE remote state for storage.

TFE ```organisation``` and the ```workspace``` name are specified in the ```terraform``` block.

It uses the ```local-exec``` to print ```Hello World!```

## Usage

Make sure TFE User Token is created from the User Settings menu.  This is required to be input when ```terraform init``` is performed.

```
$ terraform fmt
$ terraform init
Initializing the backend...
access_token
  Access token to use to access Atlas. If ATLAS_TOKEN is set then
  this will override any saved value for this.

  Enter a value: xxxxxxxxxxxxxxxxxxxxx


Successfully configured the backend "atlas"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "null" (2.1.2)...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.null: version = "~> 2.1"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.


$ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + null_resource.helloWorld
      id: <computed>


Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

null_resource.helloWorld: Creating...
null_resource.helloWorld: Provisioning with 'local-exec'...
null_resource.helloWorld (local-exec): Executing: ["/bin/sh" "-c" "echo hello world using remote state!"]
null_resource.helloWorld (local-exec): hello world using remote state!

```
The state information can be found in TFE by checking the ```States``` tab for the given workspace.
