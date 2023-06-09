# containerized ipecho 

Containerization of the ipecho project:<br>
https://github.com/lgrn/ipecho
<br>

The app builder and executable are separated into different images in order to make the executable container minimalistic.<br>

## how-to

build:<br>
```
docker build -t ipecho .
```
<br>
run:<br>
```
docker run --rm -d --name ipecho -p 80:80 ipecho 
```

