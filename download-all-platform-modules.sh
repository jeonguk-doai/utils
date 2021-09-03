#!/bin/bash

# Fields
dir_name="project"
github_root="https://github.com/Do-AI"
arr_repositorys=(
  "platform-common"
  "platform-common-lib"
  "platform-common-mvc"
  "platform-module-amqp"
  "platform-module-cron"
  "platform-module-i18n"
  "platform-module-jpa"
  "platform-module-logging"
  "platform-module-oauth"
  "platform-module-pubsub"
  "platform-module-redis"
)

# Run
echo -e "Enter project root folder name: "
read dir_name
mkdir $dir_name
cd $dir_name
echo -e "Clone Project at >>"
pwd
echo -e "\n\n### Start clone projects"

for i in ${arr_repositorys[@]}; do
  echo -e "[git clone from $github_root/$i.git]"
  git clone "$github_root/$i.git"
done

echo -e "\n\n"
echo -e "All repository downloads complete. BYE!!"