#!/bin/bash
set -euxo pipefail

EC2_PK="~/ur-mbp-aws.pem"
EC2_IP="34.201.164.105"
REMOTE_PATH_ROOT="/home/ubuntu/natural-language-processing/project"

for SRC_PATH in 'word_embeddings.tsv' 'tfidf_vectorizer.pkl' 'intent_recognizer.pkl' 'tag_classifier.pkl'; do
    scp -i $EC2_PK $SRC_PATH ubuntu@$EC2_IP:$REMOTE_PATH_ROOT/$SRC_PATH
done

scp -i $EC2_PK -rp thread_embeddings_by_tags ubuntu@$EC2_IP:$REMOTE_PATH_ROOT/thread_embeddings_by_tags
