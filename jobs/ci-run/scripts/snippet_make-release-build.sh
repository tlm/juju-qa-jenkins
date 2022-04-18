#!/bin/bash

set -eux

echo GIT_COMMIT=${{GIT_COMMIT}}
echo JUJU_BUILD_NUMBER=${{JUJU_BUILD_NUMBER:-}}
echo JUJU_GOMOD_MODE=${{JUJU_GOMOD_MODE}}
echo CLIENT_PACKAGE_PLATFORMS=${{CLIENT_PACKAGE_PLATFORMS}}
echo AGENT_PACKAGE_PLATFORMS=${{AGENT_PACKAGE_PLATFORMS}}
echo BUILD_TAGS=${{BUILD_TAGS:-}}

cd ${{JUJU_SRC_PATH}}
make build
