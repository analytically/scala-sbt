#!/bin/bash

#
# a simple test for sbt
#
# @see http://stackoverflow.com/a/12781664/714426
#

cat << EOF | sbt
set name := "SbtTest211"
set version := "1.0"
set scalaVersion := "2.11.8"
session save
compile
exit
EOF

cat << EOF | sbt
set name := "SbtTest"
set version := "1.0"
set scalaVersion := "$SCALA_VERSION"
session save
compile
exit
EOF

sbt about