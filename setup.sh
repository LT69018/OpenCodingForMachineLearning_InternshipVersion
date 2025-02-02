#!/bin/bash
# a command I always have to do but forget to run
# /bin/sh -ec 'export NODE_OPTIONS=--openssl-legacy-provider'
# doing that didn't work^ so I'm going to try and add a file to run that
# similarly, installing material-ui always says unable to resolve dependencies, so I just force it.
/bin/sh -ec 'cd ./interface && npm cache verify && npm install --save --legacy-peer-deps  && npm install  --force node-fetch@2 && npm install--force http-proxy-middleware --save'

# TODO: M1 machines have different installation instructions
# added installing transformers library and `accelerate` dependency.
/bin/sh -ec 'cd ./server && python3 -m venv venv && . venv/bin/activate && pip install Flask && pip install numpy && pip install torch && pip install simpletransformers && pip install transformers && pip install accelerate && pip install tqdm && deactivate'
