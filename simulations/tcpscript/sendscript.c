#include <stdio.h>
int main(){
	int i;
	int n=700; //send times
	int b=200; //send Bytes
	double d=0.0003; //send interval
	
	FILE* out;
	out = fopen("sendscript","w");
	for(i=1;i<n;i++){
		fprintf(out, "%.4f %d; ", d*i+1.2, b);
		if(i% 10 == 0)
			fprintf(out, "\\\n");
	}
	fclose(out);
	return 0;
} 
