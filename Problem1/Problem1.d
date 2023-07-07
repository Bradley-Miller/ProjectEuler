import std.stdio;

//Problem #1 (Multiples of 3 or 5)
//Bradley Miller, 3/22/2023
//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23.
//Find the sum of all multiples of 3 and 5 below 1000.

void main(){
	int sum;
	for(int i = 1; i<1000; i++){
		if(i % 3 == 0 || i % 5 == 0){
			sum += i;
		}
	}
	writeln(sum);	
}
