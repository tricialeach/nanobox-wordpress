#!/bin/bash
echo 'Check to make sure wordpress is here at all'
if test -d ./wp/
then
  echo 'yup we good'
else
  echo 'nope we need that'
  git clone git@github.com:nanobox-quickstarts/nanobox-wordpress.git wp
fi
rsync -va --delete ./plugins/ ./wp/wp-content/plugins/
rsync -va --exclude='node_modules' --delete ./themes/ ./wp/wp-content/themes/