user = vmail
password = {{ vault_vmail_pass }}
hosts = 127.0.0.1
dbname = vmail
query = select if(sendonly = true, 'REJECT', 'OK') AS access from accounts where username = '%u' and domain = '%d' and enabled = true LIMIT 1;
