#/bin/bash

set -euxo pipefail

docker run -it --rm -p 8080:8080 --name coursera-aml-nlp -v $PWD:/root/coursera akashin/coursera-aml-nlp
