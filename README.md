# node-ubuntu

A Docker image built on the latest Ubuntu LTS and Node 14.x.  Please read the Dockerfile carefully before using.  

## Build the Docker image

```bash
docker build -t smathewthomas/node-ubuntu
```

## Run the image

```bash
docker run --rm -ti -v $HOME/.ssh:/root/.ssh  smathewthomas/node-ubuntu
```


