# containerized ipecho 

Containerization of the ipecho project:<br>
https://github.com/lgrn/ipecho
<br>

The app builder and executable are split into different images in order to make the executable container minimalistic.<br>

## how-to

Build the artifact builder:<br>
```
docker build -t ipecho-builder -f Dockerfile-builder .
```

Create the artifact by running the builder container and mount the current host folder:<br>
```
docker run ---name ipecho-builder --rm -v $PWD:/hostdir ipecho-builder
```

Build and tag the app container (with ipecho binary in the current folder):<br>
```
docker build -t ipecho -f Dockerfile-exec .
```

Run example:<br>
```
docker run --name ipecho --rm -d -p 80:80 ipecho
``` 
