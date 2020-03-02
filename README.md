# steamcache-pi
Docker-compose setup for running lancachenet/monolithic stack on a raspberry pi. All of the build process depends on lancachenet repos for maximum transparency. There is one intermediate image required, this is built from a dockerfile in this repo, it's a one line change in a config to make the final image 32 bit compatible.

# Usage
Clone the repo with `git clone https://github.com/Titcher/steamcache-pi.git`. 

Edit the `.env` file with your desired settings (see https://github.com/lancachenet/docker-compose/blob/master/README.md for details).

Run `docker-compose up -d` (the -d is flag is daemon, run in the background), the first run will take some time as it builds the images.

Edit your DNS settings to point at the IP (IPv6 too if applicable) of your docker host, this can be found with `hostname -I`
