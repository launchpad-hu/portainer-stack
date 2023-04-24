# portainer-stack

A stack to be deployed to Dokku with dokku-swarm.

```
git remote add dokku dokku@<host>:<app>
ssh dokku@<host> apps:create <app>
ssh dokku@<host> plugin:install https://github.com/launchpad-hu/dokku-swarm.git
ssh dokku@<host> builder:set <app> selected null
ssh dokku@<host> scheduler:set <app> selected swarm
git push dokku HEAD
```
