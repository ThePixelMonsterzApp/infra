#!/bin/sh -x

test ! -f .bootstrap_done || exit

for repo in hello monsterz-den ; do
  git clone -o upstream "git@github.com:ThePixelMonsterzApp/${repo}"
done

docker-compose -f scope/docker-compose.yml up -d

touch .bootstrap_done
