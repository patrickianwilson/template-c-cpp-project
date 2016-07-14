#include <iostream>
#include "echoer.h"

using namespace std;

int main(int argc, char ** argv) {
	Echoer* echo = new Echoer();

	echo -> echo("Hello World");
 }