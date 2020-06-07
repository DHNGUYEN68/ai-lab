#!/bin/bash

TAG=20.06

cd src

echo -e "\nBuilding images\n"

docker build . -f base.Dockerfile -t nvaitc/ai-lab:$TAG-base
#docker build . -f tf.Dockerfile -t nvaitc/ai-lab:$TAG-tf
docker build . -f tf2.Dockerfile -t nvaitc/ai-lab:$TAG-tf2
docker build . -f full.Dockerfile -t nvaitc/ai-lab:$TAG
docker build . -f vnc.Dockerfile -t nvaitc/ai-lab:$TAG-vnc

echo -e "\nPushing images\n"

docker push nvaitc/ai-lab:$TAG-base
#docker push nvaitc/ai-lab:$TAG-tf
docker push nvaitc/ai-lab:$TAG-tf2
docker push nvaitc/ai-lab:$TAG
docker push nvaitc/ai-lab:$TAG-vnc
