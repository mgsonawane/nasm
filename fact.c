#include<stdio.h>

int fact(int n)
{
if (n>1)
{
n=n*fact(n-1);
}
return n;
}
int main()
{
int i=0,n;
printf("Enter number");
scanf("%d",&n);
i=fact(n);
printf("Factorial is %d",i);
return 0;
}
