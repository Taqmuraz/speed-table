#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

long long time_ms()
{
    struct timeval tv;
    gettimeofday(&tv, NULL);
    long long ms = tv.tv_sec * 1000LL + tv.tv_usec / 1000;
    return ms;
}

int main(int argc, char** argv)
{
    long long int l = atoi("1000000000");
    long long int sum = 0;
    long long int start = time_ms();
    for(long long int i = 0; i < l; i++)
    {
        sum += i;
    }
    long long int total = time_ms() - start;
    printf("time = %lld ms, sum = %lld\n", total, sum);
}
