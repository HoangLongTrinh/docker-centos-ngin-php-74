
### Versioning
| Docker Tag | Git Release | Nginx Version | PHP Version | Alpine Version |
|-----|-------|-----|--------|--------|
| 8-2| Main Branch |1.22.1 | 8.2 | 3.17 |


## Quick Start
To pull from docker hub:
```
docker pull hoanglong01/nginx-php:8-2
```
### Running
To simply run the container:
```
sudo docker run -d hoanglong01/nginx-php:8-2
```
To dynamically pull code from git when starting:
```
docker run -d -e 'GIT_EMAIL=email_address' -e 'GIT_NAME=full_name' -e 'GIT_USERNAME=git_username' -e 'GIT_REPO=github.com/project' -e 'GIT_PERSONAL_TOKEN=<long_token_string_here>' richarvey/nginx-php-fpm:latest
```

You can then browse to ```http://<DOCKER_HOST>``` to view the default install files. To find your ```DOCKER_HOST``` use the ```docker inspect``` to get the IP address (normally 172.17.0.2)

For more detailed examples and explanations please refer to the documentation.
## Documentation
- [Building from source](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/building.md)
- [Versioning](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/versioning.md)
- [Config Flags](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/config_flags.md)
- [Git Auth](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/git_auth.md)
- [Personal Access token](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/git_auth.md#personal-access-token)
- [SSH Keys](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/git_auth.md#ssh-keys)
- [Git Commands](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/git_commands.md)
- [Push](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/git_commands.md#push-code-to-git)
- [Pull](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/git_commands.md#pull-code-from-git-refresh)
- [Repository layout / webroot](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/repo_layout.md)
- [webroot](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/repo_layout.md#src--webroot)
- [User / Group Identifiers](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/UID_GID_Mapping.md)
- [Custom Nginx Config files](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/nginx_configs.md)
- [REAL IP / X-Forwarded-For Headers](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/nginx_configs.md#real-ip--x-forwarded-for-headers)
- [Scripting and Templating](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/scripting_templating.md)
- [Environment Variables](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/scripting_templating.md#using-environment-variables--templating)
- [Lets Encrypt Support](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/lets_encrypt.md)
- [Setup](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/lets_encrypt.md#setup)
- [Renewal](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/lets_encrypt.md#renewal)
- [PHP Modules](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/php_modules.md)
- [Xdebug](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/xdebug.md)
- [Logging and Errors](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/logs.md)

## Guides
- [Running in Kubernetes](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/guides/kubernetes.md)
- [Using Docker Compose](https://github.com/HoangLongTrinh/docker-centos-ngin-php-74/blob/php-8-2/docs/guides/docker_compose.md)
