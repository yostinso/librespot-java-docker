#!/bin/bash
eval "cat <<EOF
$(<config.template)
EOF
" > config.toml
