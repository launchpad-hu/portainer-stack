# portainer-stack

A stack to be deployed to Dokku with dokku-scheduler-swarm.

```
git remote add dokku dokku@<host>:<app>
ssh dokku@<host> apps:create <app>
ssh dokku@<host> plugin:install https://github.com/launchpad-hu/dokku-scheduler-swarm.git
ssh dokku@<host> builder:set <app> selected null
ssh dokku@<host> scheduler:set <app> selected swarm
git push dokku HEAD
```
