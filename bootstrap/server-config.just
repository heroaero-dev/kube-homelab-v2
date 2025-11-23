set shell := ["bash", "-cu"]
server:
	#!/usr/bin/env bash
	sudo apt install gh -y
	sudo apt install git -y
	brew install fluxcd/tap/flux
	curl -sS https://webinstall.dev/k9s | bash

