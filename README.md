Thank you for using DigitalOcean's Rails Application.

The "ufw" firewall is enabled. All ports except for 22, 80, and 443 are BLOCKED.

Let's Encrypt has been pre-installed for you. If you have a domain name, and
you will be using it with this 1-Click app, please see: http://do.co/le-lemp

You can use the following SFTP credentials to upload your files (using FileZilla/WinSCP/Rsync):
  * Host: 159.203.111.105
  * User: rails
  * Pass: 73365dabcf912df058a1c143824bf976
If you provided an ssh-key when creating this Droplet, the key should be used for SFTP as well

You can use the following Postgres database credentials:
  * User: rails
  * Pass: bf7bf84f5cf3b0183842441209a4fb80

Ruby has been configured to use vendored bundles. Please use the 'rails' user to
interact with the default project via "sudo -i -u rails"

Passwords have been saved in /root/.digitalocean.passwords

Nginx is configured to forward requests for rails to a local unix socket
    Public IP: http://159.203.111.105
    Access Logs: /var/log/nginx/access.log
    Error Logs: /var/log/nginx/error.log

Rails using the Puma server is managed via 'systemd'.
    Proccess management: systemctl {start|stop|restart} rails.service
    systemd Unit file: /etc/systemd/system/rails.service

Ruby information:
    All Gems and processes have been installed locally to the 'rails' user. Please
    'sudo -i -u rails' to use this environment.

You can learn more about using this image here: http://do.co/railsapp

-------------------------------------------------------------------------------------
To delete this message of the day: rm -rf /etc/update-motd.d/99-one-click

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.