#!/usr/bin/env bash

start_librespot() {
  java -jar "${LIBRESPOT_JAR}"
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
