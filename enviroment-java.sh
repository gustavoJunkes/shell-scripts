#! /usr/bin/bash

# Install java and config java

#sudo apt update

sudo apt-get update

JAVA_VER=$(java -version 2>&1 >/dev/null | egrep "\S+\s+version" | awk '{print $3}' | tr -d '"')

JAVA_PATH=$(which java)

if [ -z "$JAVA_VER" ] && [ -z $JAVA_PATH ]  
then
    echo "Java não está instalado"
    echo "Instalando java..."
    
    sudo apt install default-jdk

    # Set the java home
else
    echo "Java instalation was found"
fi
