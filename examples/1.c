#include<stdio.h>
void Fun3(){
	
}
void Fun2(){
	Fun3();
}
void Fun1(){
	Fun2();
}
int main(){
	Fun1();
	Fun2();
	Fun3();
}
