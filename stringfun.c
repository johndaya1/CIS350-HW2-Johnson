#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(void){
size_t maxn = 50;
char *word;
word = (char *) malloc(sizeof(char)*maxn);

getline(&word, &maxn, stdin);
for(int i = strlen(word) - 2; i >= 0; i--){
	if(word[i] == 'g' || word[i] == 'v' || word[i] == 's' || word[i] == 'u'){

	}
	else{
		printf("%c", word[i]);
	}
}
printf("\n");


free(word);

return 0;
}
