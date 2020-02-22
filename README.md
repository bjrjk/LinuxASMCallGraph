# LinuxASMCallGraph
### Description
In order to complete the homework of Data Structure & Algorithm Course, among which has a require to draw the **call graph** of the programming code. So I created this repository to facilitate this process.
### Supported Programming Language
Only C/C++ is tested.
### Dependencies
graphviz

python3, pygraphviz

gcc, g++, c++filt (GNU compiler collection)

How to install in Debian/Ubuntu:
```
sudo apt update
sudo apt install python3-dev graphviz-dev python3-pip gcc g++
pip3 install pygraphviz
```

### Usage
##### Current Version: 1.1
Use ```gcc -S [Your C Filename]``` or ```g++ -S [Your CPP Filename]``` to generate the assembly code for your high level programming language. 

And then place your assembly file under the software root directory.

Then command:
```
python3 CallGraph.py [FileName.s]
```
Generated Call Graph will be saved in ```[FileName.png]```.

Other Options:
```
Usage: python3 CallGraph.py [--help] [--enable-stl] [--enable-plt] filename.s
Options:
--help: Show this help information.
--enable-stl:   Draw Call Graphs of C++ Standard Library.(Default Disabled)
--enable-plt:   Draw Call Graphs of External Functions like puts and printf in libc.(Default Disabled)
```

### About
This project will improve continuously. 

If you have any suggestions or have bugs to report, you are welcomed to open an issue.