if [ -z "$1" ]
  then
    echo "ERROR: Please pass in a name for the docker image.\nLike ./Docker-Run.sh 'image-name'"
else
    docker build -t $1 .
    docker run -it -v $PWD:/workspace $1 bash
fi

