#!/usr/bin/env bash

mongod --fork --logpath /var/log/mongodb/mongodb.log --dbpath /var/data/mongodb

FILES=/usr/scripts/createUser.js
for f in $FILES; do mongo $f; done

mongod --dbpath /var/data/mongodb --shutdown
