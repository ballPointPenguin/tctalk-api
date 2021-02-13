#!/bin/bash

git fetch . HEAD:stage &&
  git push origin stage &&
  ansible-playbook playbook.yml -l west -u hank --e "@ansible-env-stage.yml"
