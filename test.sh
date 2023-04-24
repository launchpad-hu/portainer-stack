set -eo pipefail
set -x
ssh dokku@dev apps:destroy --force portainer || true
ssh dokku@dev apps:create portainer
ssh dokku@dev proxy:set portainer traefik
ssh dokku@dev builder:set portainer selected null
ssh dokku@dev scheduler:set portainer selected swarm
git push dokku HEAD