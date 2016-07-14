#cleanup some administrative and bookeeping files that are not really needed.
rm README.md
rm LICENSE
rm -rf .gitignore

#install google-test
mkdir -p lib/gtest/headers
mkdir -p lib/gmock/headers

mkdir -p temp/gtest

wget https://github.com/google/googletest/archive/master.zip


unzip master.zip -d temp/gtest
# cp -r temp/gtest/googletest-master/googletest/src libs/gtest/cpp
# cp -r temp/gtest/googletest-master/googletest/include	libs/gtest/headers

# cp -r temp/gtest/googletest-master/googlemock/src libs/gmock/cpp
# cp -r temp/gtest/googletest-master/googlemock/include libs/gmock/headers

pushd temp/gtest/googletest-master

cmake .
make gtest_main
make gtest 
make gmock_main
make gmock
popd

cp -r temp/gtest/googletest-master/googletest/include/	lib/gtest/headers/
cp -r temp/gtest/googletest-master/googlemock/include/ lib/gmock/headers/

cp temp/gtest/googletest-master/googlemock/gtest/libgtest.a lib/gtest/
cp temp/gtest/googletest-master/googlemock/gtest/libgtest_main.a lib/gtest/
cp temp/gtest/googletest-master/googlemock/libgmock_main.a lib/gmock/
cp temp/gtest/googletest-master/googlemock/libgmock.a lib/gmock/



#cleanup
rm master.zip
rm -r temp