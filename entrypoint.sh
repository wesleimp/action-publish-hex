#!/bin/ash

if [[ -z "${HEX_API_KEY}" ]]; then
	echo "HEX_API_KEY is not set" && exit 1
fi

echo "===> install dependencies"
echo 
mix do deps.get, deps.compile

echo "===> install hex"
echo 
mix local.hex --force
mix local.rebar --force

echo "===> Build hex package"
echo 
mix hex.build

echo "===> Publishing hex package"
echo
mix hex.publish --yes
