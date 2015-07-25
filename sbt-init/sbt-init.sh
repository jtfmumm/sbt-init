#!/bin/bash

if [ $# -eq 0 ];
  then 
    echo "sbt-init PROJECT-NAME GITHUB-ID"
    echo "You need at least a project/directory name as an argument!"
    echo "An optional second argument can be used for a GitHub ID"
    exit 1
elif [ $# -eq 1 ];
  then
    NAME=$1 
    GITHUBID="\!GITHUBID\!"
else
  NAME=$1
  GITHUBID=$2
fi

mkdir $NAME
cd $NAME

echo "target/ \n project/ \n.gitignore\n *.iml\n .idea/" > .gitignore

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

cat build.sbt | sed s/\!NAME\!/$NAME/ | tee build.sbt
cat build.sbt | sed s/\!GITHUBID\!/$GITHUBID/ | tee build.sbt
