//
// Created by Patrick Wilson on 8/17/16.
//

#include "src/example.h"

int main(int argc, char** argv) {
    Example* e = new Example();

    e -> printMessage();

    delete  e;
}
