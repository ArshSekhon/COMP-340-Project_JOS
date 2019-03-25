if [ -z "$1" ]
  then
    echo "ERROR: Please pass in a name for the docker image.\nLike ./Docker-Clean.sh 'image-name'"
else
    docker rmi $1 --force
fi

