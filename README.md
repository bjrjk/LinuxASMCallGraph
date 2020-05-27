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
sudo apt install python3-dev graphviz-dev graphviz python3 python3-pip gcc g++
sudo pip3 install pygraphviz
sudo python3 setup.py install
```

### Usage
##### Current Version: 1.2
##### Please generate your assembly file in Linux OS to get a better results.
Use ```gcc -S [Your C Filename]``` or ```g++ -S [Your CPP Filename]``` to generate the assembly code for your high level programming language. 

Then command:
```
callgraph -f [FileName.s]
```
Generated Call Graph will be saved in ```[FileName.png]```.

Other Options:
```
usage: callgraph [options] -f <file>

optional arguments:
  -h, --help            show this help message and exit
  --enable-stl, -stl    Draw Call Graphs of C++ Standard Library.
  --enable-plt, -plt    Draw Call Graphs of External Functions like puts and
                        printf in libc.
  --file filename.s, -f filename.s
                        Assembly File Name.
```
### Examples
[Examples->README.md](https://github.com/bjrjk/LinuxASMCallGraph/blob/master/examples/README.md)

### Online Call Graph Generator
You may visit [here](http://linuxasmcallgraph.renjikai.com/) .

### Deploy from Docker
```
git clone https://github.com/bjrjk/LinuxASMCallGraph.git
cd LinuxASMCallGraph
docker-compose up
```

### About
This project will improve continuously. 

If you have any suggestions or have bugs to report, you are welcomed to open an issue.
