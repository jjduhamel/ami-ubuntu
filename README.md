# Ubuntu AMI

These are the packer files for a basic Ubuntu AMI.  The AMI bundles the DUO TFA and Credstash, along with several useful CLI tools.

By default, the ami will be built in us-west-2 (Oregon), using the standard Ubuntu base AMI.

```bash
$ packer build \
	-var "vpc_id=<vpc>" \
	-var "subnet_id=<subnet>" \
	packer.json
```

If you wish to build the AMI in a different region, you'll need to set up a variable file that specifies the region and base_ami you wish to use.

```bash
$ echo vars.eu-west-1.json >> .gitignore
$ cp variables.json vars.eu-west-1.json
$ vim vars.eu-west-1.json
...
$ packer build \
	-var-file vars.eu-west-1 \
	packer.json
```