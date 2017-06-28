#include <stdio.h>
#include <unistd.h>
#include <sys/mman.h>
//proto
void empty();
char ELF[] = {0x7F, 'E','L','F'};
int main(void)  {
    int s = getpagesize();
    int m = &main;
    int text_page_start = (m/s)*s;
    //mprotect(0, &empty, PROT_READ);
    //perror("mprotect");
    FILE *z = fopen("b.out", "w");
    //fwrite(ELF, 1, strlen(ELF), z);
    for(int i = 0x00400520; i < &empty; i++){
        fwrite(i, 1, 1, z);
    }
    fclose(z);
    return 0;
}

void empty(){}
