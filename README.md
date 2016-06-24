# docker-cdr-stats
Docker container for cdr-stats

# build and setup the container:
- docker build -t gled-rs/cdr-stats .
- docker run -d --name cdr-stats -P gled-rs/cdr-stats
- docker exec -ti cdr-stats bash
- /usr/src/install-cdr-stats.sh
