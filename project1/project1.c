#include"REGX51.h"
#define I unsigned int
#define U unsigned char
#define L unsigned long
#define R return
#define V void
#define F if
U C[]={126,48,109,121,51,91,95,112,127,123};V E(U b){U i;for(i=0;i<8;i++){P2_2=0;P2_4=(b&128);b<<=1;P2_2=1;}}V S(U a,U d){P2_3=0;E(a);E(d);P2_3=1;}V D(L n){I d,i;for(i=1;i<=8;i++)F(i>1&&!n)S(i,0);else{d=n%10;n/=10;S(i,C[d]);}}L O(L a,L b,U o){F(o==1)R a+b;F(o==2)R a-b;F(o==3)R a*b;F(o==4)R a/b;R b;}V M(I m){I a;U b;for(a=0;a<m;a++)for(b=0;b<120;b++);}V main(){U a,b,d,e,f,g,h,j,k,s=0,m,n,o,q=0,t,l,i;L p=0,c=0;S(12,1);S(15,0);S(9,0);S(1,7);S(10,0);while(1){P3_6=P3_5=P3_4=1;F(!s)P3_6=0;F(s==1)P3_5=0;F(s==1)P3_5=0;F(s==2)P3_4=0;F(k==s){P2_7&&(m=0);P2_6&&(n=0);P2_5&&(o=0);}F(!P0_7&&a||!P2_7&&b||!P2_6&&d||!P2_5&&e){M(10);k=s;F(q){t=q;q=0;c=0;}!P0_7&&(c*=10);F(!P2_7&&!m){m=1;c=c*10+(1+s*3);}F(!P2_6&&!n){n=1;c=c*10+(2+s*3);}F(!P2_5&&!o){o=1;c=c*10+(3+s*3);}}F(!P3_2&&f||!P3_3&&g||!P2_0&&h||!P2_1&&j){M(10);F(!P3_2){F(!q){c=O(p,c,t);p=c;}(++q==5)&&(q=1);}!P3_3&&(c/=10);F(!P2_0){q=0;t=0;c=0;p=0;}F(!P2_1){c=O(p,c,t);q=0;}}++s==3&&(s=0);for(l=16,i=4-q;i;--i)l<<=1;P1=~l;a=P0_7;b=P2_7;d=P2_6;e=P2_5;f=P3_2;g=P3_3;h=P2_0;j=P2_1;D(c);}}