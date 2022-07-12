FROM README:

### Credentials

Credentials are stored in the [vault.yml](group_vars/all/vault.yml). The Password is "vault".
Please change the password with `ansible-vault rekey group_vars/all/vault.yml`.

- Database user: "vmail", pass: "vmail" (Please change it)
- Mail user: "mail", pass: "mail" (Please change it)
- Rspam admin password: "rspamadmpw"