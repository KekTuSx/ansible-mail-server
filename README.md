# ALMOST CERTAINLY DOES NOT WORK

https://thomas-leister.de/mailserver-debian-stretch/

### Credentials

vault.yml password: zelenina

## Run the playbook

```
ansible-playbook -i ./hosts site.yml --ask-vault-pass
```

## Test

### Molecule

The results of the ansible playbook can be tested with [Molecule](https://molecule.readthedocs.io/en/latest/)

#### Test with molecule

Build the mail server

```
ANSIBLE_VAULT_PASSWORD_FILE=<YOUR_VAULT_PASS_FILE_PATH> molecule converge
```

Verify the installation

```
ANSIBLE_VAULT_PASSWORD_FILE=<YOUR_VAULT_PASS_FILE_PATH> molecule verify
```

Build, test and destroy in one command

```
ANSIBLE_VAULT_PASSWORD_FILE=<YOUR_VAULT_PASS_FILE_PATH> molecule test
```

### Bats

Send a email on the ready system with [bats](https://github.com/sstephenson/bats)

```
mail_user=USER mail_pass=PASS mail_host=HOST:587 bats smtp.bats
```
