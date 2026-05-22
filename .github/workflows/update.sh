#!/bin/bash
set -euo pipefail
for NAME in ../../*/keyboard.toml; do
    NAME=${NAME%/keyboard.toml}
    NAME=${NAME#\.\./\.\./}
    echo $NAME
    cat build.template | sed "s/\$NAME/$NAME/g" > $NAME.yaml
done
