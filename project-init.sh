#!/usr/bin/env bash
#cleanup some administrative and bookeeping files that are not really needed.
rm README.md
rm LICENSE
rm -rf .gitignore

#install cmake
command -v cmake >/dev/null 2>&1 || { 
	OS=`uname`

	if [ "$OS"="Darwin" ] ; then 
		brew install cmake
	else
		sudo apt-get install cmake
	fi
	
}

#install google-test
mkdir -p lib

wget https://github.com/google/googletest/archive/master.zip

unzip master.zip -d lib

#cleanup
rm master.zip
