#!/bin/bash

if [ $# -eq 0 ]
  then $1="\!NAME\!"; $2="\!GITHUBID\!"
else if [ $# -eq 1 ]
  then $2="\!GITHUBID\!"
fi

mkdir target
mkdir project
mkdir src
mkdir src/main
mkdir src/main/scala
mkdir src/main/resources
mkdir src/main/java
mkdir src/test
mkdir src/test/resources
mkdir src/test/scala
mkdir src/test/java

curl https://raw.githubusercontent.com/jtfmumm/sbt-init/master/sbt-init/build.sbt.template > build.sbt

cat build.sbt | sed s/\!NAME\!/$1/ | tee build.sbt
cat build.sbt | sed s/\!GITHUBID\!/$2/ | tee build.sbt
