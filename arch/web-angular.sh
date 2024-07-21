#!/bin/bash
rm -rf ./build
rm -rf ./node_modules
rm ./package.json
rm ./package-lock.json
npm cache clean --force
git fetch --all
git reset --hard origin/$1
git pull
git checkout $1
git pull
npm i
npm run build
tar -cf build.tar build
e=./build/
for f in ./build/*;
do f=${f//$e/}
ssh arch@example.com 'rm -rf /home/user/html/'$f'';
done
ssh arch@example.com 'rm /home/user/html/build.tar'
scp ./build.tar arch@example.com:/home/user/html/
ssh arch@example.com 'tar -xf /home/user/html/build.tar -C /home/user/html/ && mv /home/user/html/build/* /home/user/html/ && rm -rf /home/user/html/build'
