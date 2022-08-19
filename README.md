# docker-imagetragick

This is an updated version of Craig Hurleys `docker-imagetragick` work.

It has been ported to Python3 and made ready for OpenShift. A full exploit [demo for OpenShift is available here](https://github.com/thomasfricke/training-kubernetes-security/tree/main/OpenShift)

Run a containerised Flask app that relies on a version of ImageMagic that is vulnerable to the ImageTragick bug. This is just a build environment, I do not provide containers.

## Steps

1. Download this repo and build a container:

2. Upload it to a registry of your choice

3. Deploy it in a cluster

4. Create all the services you need, see my notebooks 

Edit the contents of `exploit.mvg` so that it uses the correct IP address that `nc` is listening on 
or change the command

5. Upload exploit to vulnerable application:

        $ curl -v -F file=@exploit.mvg http://127.0.0.1:8080

## Kudos 

Based on the [original idea by Craig Hurley](https://github.com/craighurley/docker-imagetragick)

## Links

https://imagetragick.com/
