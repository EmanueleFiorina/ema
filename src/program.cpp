#include <fstream>
#include <iostream>

using namespace std;

#include "program.h"
#include "instructionsfactory.h"

Program::Program(Computer *c, const string& filename)
{
    computer = c;
    InstructionsFactory *factory;
    string line;
    unsigned int line_number = 0;
    ifstream in(filename.c_str());
    if (in.fail())
        throw runtime_error("Assembly file not found");
    //Retrieve and save the labels in the asm file
    while(getline(in,line))
        if (!line.empty())
        {
            vector <string> tokens;
            tokens = Utils::split(line);
            if (tokens.at(0).back() == ':')
                computer->setLabel(tokens.at(0).substr(0,tokens.at(0).size() - 1),line_number);
            line_number++;
        }
    in.close();
    in.open(filename.c_str(), ios::in);
    while(getline(in,line))
    {
        if (!line.empty())
            instructions.push_back(factory->CreateInstruction(c, line));
    }
}

void Program::execute()
{
    while (computer->isRunning())
        instructions.at(computer->getPC())->execute();
}
