#!/usr/bin/env bash

start_librespot() {
  if [[ $LIBRESPOT_MODE == "api" ]]; then
    java -jar "${LIBRESPOT_API_JAR}"
  else
    java -jar "${LIBRESPOT_JAR}"
  fi
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
