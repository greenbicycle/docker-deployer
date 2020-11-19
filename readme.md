# Deployer Docker container


# Deployer docker container

*  For this project, I needed a node.js base container with yarn

## Usage

```
# Build the container
docker-compose build --force-rm

# If you need to run it
docker-compose run deployer bash

```
## Configuration

### Environment variables

* See env-sample and docker-compose.yml


## Todo

* Put a sample deployment script in /bin that will allow this:

```
docker-compose run deployer deploy-project <environment>
```


## Troubleshooting

### Mac OSX

* If you get an error about the osx keychain try `security unlock-keychain`
