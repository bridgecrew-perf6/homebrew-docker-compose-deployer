# Deployer Docker Compose Environment

## Installation
### Homebrew (MacOs/Linux/Windows)
Install Homebrew by following guide https://docs.brew.sh/Installation


### Formula
Just install by the command
```bash
brew install lab-dvsoftware/docker-compose-deployer/docker-compose-deployer
```

## Usage
Export your composer auth tokens
If you use github only
```bash
export COMPOSE_PROJECT_COMPOSER_AUTH='{
    "github-oauth": {
        "github.com": "xxxxxxxxxxxx"
    }
}'
````

To use specific php version just export environment variable:
```bash
export COMPOSE_PROJECT_PHP_VERSION=7.4
```
> following versions are supported: 7.2, 7.3, 7.4, 8.0

Create the new project or navigate to exists
```bash
mkdir ~/deployer && cd ~/deployer
```

Install dependencies (if needed)
```bash
docker-compose-deployer run --rm cli composer install -o --no-interaction --prefer-dist
```

Do some action
```bash
docker-compose-deployer run --rm cli bin/dep help
```

Start the stack in the background mode
```bash
docker-compose-deployer up -d
```

Start the stack in the foreground mode
```bash
docker-compose-deployer up
```

Stop the stack
```bash
docker-compose-deployer down
```

Destroy the whole data
```bash
docker-compose-deployer down -v
```

## Supported Environment Variables
* `COMPOSE_PROJECT_MODE` - (`mutagen`|`default`)
* `COMPOSE_PROJECT_PHP_VERSION` - (`7.1`|`7.2`|`7.3`|`7.4`|`8.0`)
* `COMPOSE_PROJECT_NAME` - by default the project directory will be used
