default:
    just --list

build-docker version='0.4':
    docker image build . -f Dockerfile -t psibi/tornado-websocket:v{{version}}

login:
    docker login docker.io

push version: (build-docker version)
    docker push psibi/tornado-websocket:v{{version}}

run version:
    docker run -p 8888:8888 psibi/tornado-websocket:v{{version}}
