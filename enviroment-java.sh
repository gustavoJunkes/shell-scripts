#! /usr/bin/bash

# Install and config java

sudo apt update

sudo apt upgrade

JAVA_VER=$(java -version 2>&1 >/dev/null | egrep "\S+\s+version" | awk '{print $3}' | tr -d '"')

JAVA_PATH=$(which java)

if [ -z "$JAVA_VER" ] && [ -z "$JAVA_PATH" ]  
then
    echo "Java não está instalado"
    echo "Instalando JDK 11..."
    
    sudo apt -y install default-jdk

    # Set the java home --later
    echo `update-alternatives --config java`
else
    echo "A Java instalation was found"
fi
