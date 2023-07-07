import std.stdio;

//Problem #2 (Even Fibonacci Numbers)
//Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
//	1, 2, 3, 5, 8, 13, 21, 34, 55, 89. ...
//By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

void main(){
	long sum;
	long[] fibNums = findFibNums();
	for(int i = 0; i<fibNums.length; i++){
		if(fibNums[i]%2 == 0){
			sum += fibNums[i];
		}
	}
	writeln(sum);
}

long[] findFibNums(){
	long[] fibNums = [1,2];

	for(long i=1; i<4_000_000; i++){
		if(fibNums[i] + fibNums[i-1] > 4_000_000){
			break;
		}
		fibNums ~= fibNums[i] + fibNums[i-1];
	}

	return fibNums;
}