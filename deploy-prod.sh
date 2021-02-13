#!/bin/bash

git fetch . HEAD:prod &&
  git push origin prod &&
  ansible-playbook playbook.yml -l west -u hank --e "@ansible-env-prod.yml"
