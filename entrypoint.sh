#!/usr/bin/env bash

start_librespot() {
  java -jar "$0"
}

render_config() {
eval "cat <<EOF
$(<config.template)
EOF
"
}

generate_config() {
  if [[ ! -f config.toml ]]; then
    render_config > config.toml
  fi
}

generate_config
start_librespot
