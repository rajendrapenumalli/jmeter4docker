NAME="jamesdbloom/mockserver"

docker pull  ${NAME}
docker run -d -p 1080:1080 jamesdbloom/mockserver  /opt/mockserver/run_mockserver.sh -serverPort 1080 -logLevel INFO
sleep 30
docker stop $(docker ps -a | grep jamesdbloom/mockserver | awk '{print $1}')
docker rm $(docker ps -a | grep jamesdbloom/mockserver | awk '{print $1}')
