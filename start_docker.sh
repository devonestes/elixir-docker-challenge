mix deps.get
docker build . -t fucking_docker:latest
docker run -d --network host fucking_docker:latest
