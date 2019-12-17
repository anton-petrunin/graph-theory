input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../book}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;

%outputformat := "svg";

beginfig(21) 
save u;
u:=.8cm;

z.a=(0,1)*u;
z.shift=(2.5,0)*u;

draw 
for i=72 step 72 until 360: 
(z.a rotated i)-- endfor cycle;

for i=72 step 72 until 360: dOt (z.a rotated i); endfor

draw 
for i=72 step 72 until 360: 
((z.a rotated (2*i))+z.shift) -- endfor cycle;

for i=72 step 72 until 360: dOt (z.a rotated i)+z.shift; endfor


endfig;

beginfig(22) 
save u;
u:=.8cm;

z.a=(0,1)*u rotated 22.5;
z.shift=(2.5,0)*u;

draw 
for i=45 step 45 until 360: 
(z.a rotated i)-- endfor cycle;


for i=45 step 45 until 180: 
draw (z.a rotated i)--(z.a rotated (180+i)); endfor

for i=45 step 45 until 360: dOt (z.a rotated i); endfor

draw 
for i=45 step 45 until 360: 
((z.a rotated (3*i))+z.shift) -- endfor cycle;

draw 
for i=90 step 90 until 360: 
((z.a rotated (3*i))+z.shift) -- endfor cycle;

draw 
for i=45 step 90 until 360: 
((z.a rotated (3*i))+z.shift) -- endfor cycle;

for i=45 step 45 until 360: dOt (z.a rotated i)+z.shift; endfor
endfig;

beginfig(23) 
save u;
u:=2.3cm;

z.a=(0,1)*u;
z.shift=(2.5,0)*u;

draw 
for i=360/17 step 360/17 until 360: 
(z.a rotated i)-- endfor cycle;

draw 
for i=360/17 step 360/17 until 360: 
(z.a rotated (2*i))-- endfor cycle;

draw 
for i=360/17 step 360/17 until 360: 
(z.a rotated (4*i))-- endfor cycle;

draw 
for i=360/17 step 360/17 until 360: 
(z.a rotated (8*i))-- endfor cycle;

for i=360/17 step 360/17 until 360: dOt (z.a rotated i); endfor

draw 
for i=360/17 step 360/17 until 360: 
((z.a rotated (3*i))+z.shift) -- endfor cycle;

draw 
for i=360/17 step 360/17 until 360: 
((z.a rotated (5*i))+z.shift) -- endfor cycle;

draw 
for i=360/17 step 360/17 until 360: 
((z.a rotated (6*i))+z.shift) -- endfor cycle;

draw 
for i=360/17 step 360/17 until 360: 
((z.a rotated (7*i))+z.shift) -- endfor cycle;

for i=360/17 step 360/17 until 360: dOt (z.a rotated i)+z.shift; endfor


endfig;

beginfig(24) 
save u;
u:=.3cm;

z.a=(4,0)*u;
z.b=(0,4)*u;
z.c=(2,1)*u;
z.d=(-1,2)*u;

draw origin--z.a--z.a+z.b--z.b--cycle;
draw origin+z.c--z.a+z.c--z.a+z.b+z.c--z.b+z.c--cycle;
draw origin+z.d--z.a+z.d--z.a+z.b+z.d--z.b+z.d--cycle;
draw origin+z.c+z.d--z.a+z.c+z.d--z.a+z.b+z.c+z.d--z.b+z.c+z.d--cycle;

draw origin--z.c--z.c+z.d--z.d--cycle;
draw origin+z.a--z.c+z.a--z.c+z.d+z.a--z.d+z.a--cycle;
draw origin+z.b--z.c+z.b--z.c+z.d+z.b--z.d+z.b--cycle;
draw origin+z.a+z.b--z.c+z.a+z.b--z.c+z.d+z.a+z.b--z.d+z.a+z.b--cycle;

dOt origin,z.a,z.b,z.c,z.d,
z.a+z.b, z.a+z.c,z.a+z.d,
z.b+z.c,z.b+z.d,
z.c+z.d,
z.a+z.b+z.c,z.a+z.b+z.d,z.a+z.c+z.d,z.b+z.c+z.d,
z.a+z.b+z.c+z.d;
endfig;


%%%%%%%%%%%%%%%%%%%%%%

beginfig(31) 
save u;
u:=.5cm;

z.shift1=(3,1.5)*u;
z.shift2=(3,-1.4)*u;

z.a0=origin;
z.a1=(0,1)*u;
z.a2=z.a1 rotated 90;
z.a3=z.a1 rotated 180;
z.a4=z.a1 rotated -90;

draw z.a1..z.a2..z.a3..z.a4..cycle;
draw z.a1--z.a3;
draw z.a2--z.a4;

rimmark(z.a1--z.a0);

dOt z.a0,z.a1,z.a2,z.a3,z.a4;

draw (z.a1..z.a2..z.a3..z.a4..cycle) shifted z.shift1;
draw (z.a0--z.a3) shifted z.shift1;
draw (z.a2--z.a4) shifted z.shift1;

dOt z.a0+z.shift1,z.a1+z.shift1,z.a2+z.shift1,z.a3+z.shift1,z.a4+z.shift1;

draw ((.5*z.a1)..{down}z.a2..z.a3..z.a4{up}..(.5*z.a1)) shifted (z.shift2);
draw ((.5*z.a1)--z.a3) shifted (z.shift2);
draw (z.a2{right}..(.5*z.a1)) shifted (z.shift2);
draw ((.5*z.a1)..{right}z.a4) shifted (z.shift2);

dOt .5*z.a1+(z.shift2),z.a2+(z.shift2),z.a3+(z.shift2),z.a4+(z.shift2);

label.lft(btex $G$ etex, z.a2);
label.urt(btex $G{-}e$ etex, (z.a1 rotated -45)+z.shift1);
label.lrt(btex $G/e$ etex, (z.a1 rotated -135)+z.shift2);
endfig;

beginfig(32) 
save u;
u:=.5cm;

z.shift=(5.5,0)*u;

z.a0=origin;
z.a1=(1,0)*u;
z.a2=z.a1 rotated 60;
z.a3=z.a1 rotated 180;
z.a4=z.a1 rotated -60;

draw z.a1..z.a2..z.a3..z.a4..cycle;
draw z.a0--z.a2;
draw z.a0--z.a3;
draw z.a0--z.a4;

z.b0=z.a0+z.shift;
z.b1=z.a1+z.shift;
z.b2=(z.a1 rotated 90)+z.shift;
z.b3=(z.a1 zscaled (-1,1))+z.shift;
z.b4=-z.a1+z.shift;
z.b5=(z.a1 zscaled (-1,-1))+z.shift;
z.b6=(z.a1 zscaled (0,-1))+z.shift;
z.b7=(z.a1 zscaled (1,-1))+z.shift;

draw z.b1{up}..{left}z.b2--z.b3--z.b4--z.b5--z.b6--z.b7--cycle;
draw z.b0--z.b1;
draw z.b0--z.b2;
draw z.b0--z.b4;
draw z.b0--z.b6;

draw z.a1--z.b4 dashed evenly;

dOt z.a0,z.a1,z.a2,z.a3,z.a4;

dOt z.b0,z.b1,z.b2,z.b3,z.b4,z.b5,z.b6,z.b7;

label.bot(btex bank etex, z.a1 rotated -90);
label.bot(btex bank etex, z.b6);
label.bot(btex bridge etex, .5[z.a1,z.b4]);

endfig;

beginfig(33) 
save u;
u:=.5cm;

z.shift1=(4,1.5)*u;
z.shift2=(4,-1.4)*u;

z.a0=origin;
z.a1=(0,1)*u;
z.a2=z.a1 rotated 90;
z.a3=z.a1 rotated 180;
z.a4=z.a1 rotated -90;

draw z.a1..z.a2..z.a3..z.a4..cycle;
draw z.a1--z.a3;
draw z.a2--z.a4;

rimmark(z.a1--z.a0);

dOt z.a0,z.a1,z.a2,z.a3,z.a4;

draw (z.a1..z.a2..z.a3..z.a4..cycle) shifted z.shift1;
draw (z.a0--z.a3) shifted z.shift1;
draw (z.a2--z.a4) shifted z.shift1;

dOt z.a0+z.shift1,z.a1+z.shift1,z.a2+z.shift1,z.a3+z.shift1,z.a4+z.shift1;

draw ((.5*z.a1)..{down}z.a2..z.a3..z.a4{up}..(.5*z.a1)) shifted (z.shift2);
draw ((.5*z.a1)--z.a3) shifted (z.shift2);
draw (z.a2{right}..(.5*z.a1)) shifted (z.shift2);
draw ((.5*z.a1)..{right}z.a4) shifted (z.shift2);

drawdblarrow z.shift2+(1.5*z.a1 rotated 60)--1.5*z.a4--z.shift1+(1.5*z.a1 rotated 120);

dOt .5*z.a1+(z.shift2),z.a2+(z.shift2),z.a3+(z.shift2),z.a4+(z.shift2);

label.lft(btex $G$ etex, z.a2);
label.urt(btex $G{-}e$ etex, (z.a1 rotated -45)+z.shift1);
label.lrt(btex $G/e$ etex, (z.a1 rotated -135)+z.shift2);

endfig;

beginfig(34) 
save u;
u:=.5cm;

z.shift1=(4,2)*u;
z.shift2=(4,-2)*u;

z.a0=origin;
z.a1=(0,1)*u;
z.a2=z.a1 rotated 90;
z.a3=z.a1 rotated 180;
z.a4=z.a1 rotated -90;

draw z.a1..z.a2..z.a3..z.a4..cycle;
draw z.a1--z.a3;
draw z.a2--z.a4;
draw z.a1{1,1.2}..{-1,1.2}(2*z.a1);
draw z.a1{-1,1.2}..{1,1.2}(2*z.a1);

rimmark(z.a1{-1,1.2}..{1,1.2}(2*z.a1));

draw (z.a1..z.a2..z.a3..z.a4..cycle) shifted z.shift1;
draw (z.a1--z.a3) shifted z.shift1;
draw (z.a2--z.a4) shifted z.shift1;
draw (z.a1{1,1.2}..(1.6*z.a1)..z.a1{1,-1.2}) shifted z.shift1;

draw (z.a1..z.a2..z.a3..z.a4..cycle) shifted z.shift2;
draw (z.a1--z.a3) shifted z.shift2;
draw (z.a2--z.a4) shifted z.shift2;
draw (z.a1--(2*z.a1)) shifted z.shift2;

draw (z.a1..z.a2..z.a3..z.a4..cycle) shifted (z.shift2+z.shift1);
draw (z.a1--z.a3) shifted (z.shift2+z.shift1);
draw (z.a2--z.a4) shifted (z.shift2+z.shift1);

drawdblarrow z.shift2+(1.5*z.a1 rotated 45)--1.5*z.a4--z.shift1+(1.5*z.a1 rotated 135);
drawdblarrow z.shift2+(1.5*z.a1 rotated -60)--z.shift1+z.shift2+(1.5*z.a1 rotated 120);
drawdblarrow z.shift1+(1.5*z.a1 rotated -120)--z.shift1+z.shift2+(1.5*z.a1 rotated 60);

dOt z.a0,z.a1,2*z.a1,z.a2,z.a3,z.a4;
dOt z.a0+z.shift1,z.a1+z.shift1,z.a2+z.shift1,z.a3+z.shift1,z.a4+z.shift1;
dOt z.a0+z.shift2,z.a1+z.shift2,2*z.a1+z.shift2,z.a2+z.shift2,z.a3+z.shift2,z.a4+z.shift2;
dOt z.a0+z.shift1+z.shift2,z.a1+z.shift1+z.shift2,z.a2+z.shift1+z.shift2,z.a3+z.shift1+z.shift2,z.a4+z.shift1+z.shift2;

label.llft(btex $G$ etex, z.a1 rotated 120);
label.lrt(btex $H$ etex, (z.a1 rotated -120)+z.shift1+z.shift2);
endfig;

beginfig(35) 
save u;
u:=.8cm;

z.shift=(2,0)*u;

z.a=origin;
z.b=(1,0)*u;

draw z.a--z.b;

dOt z.a,z.b;

draw 
(for i=-1 step 2 until 1: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted z.shift;

for i=-1 step 2 until 1:
dOt((z.b rotated (i*15)) shifted z.shift);
endfor

dOt z.a + z.shift;


draw 
(for i=-2 step 2 until 2: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (2*z.shift);

for i=0 step 2 until 0:
draw (z.a--(z.b rotated (i*15))) shifted (2*z.shift);
endfor

for i=-2 step 2 until 2:
dOt((z.b rotated (i*15)) shifted (2*z.shift));
endfor

dOt z.a + 2*z.shift;

draw 
(for i=-3 step 2 until 3: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (3*z.shift);

for i=-1 step 2 until 1:
draw (z.a--(z.b rotated (i*15))) shifted (3*z.shift);
endfor

for i=-3 step 2 until 3:
dOt((z.b rotated (i*15)) shifted (3*z.shift));
endfor

dOt z.a + 3*z.shift;

draw 
(for i=-4 step 2 until 4: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (4*z.shift);

for i=-2 step 2 until 2:
draw (z.a--(z.b rotated (i*15))) shifted (4*z.shift);
endfor

for i=-4 step 2 until 4:
dOt((z.b rotated (i*15)) shifted (4*z.shift));
endfor

dOt z.a + 4*z.shift;

draw 
(for i=-5 step 2 until 5: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (5*z.shift);

for i=-3 step 2 until 3:
draw (z.a--(z.b rotated (i*15))) shifted (5*z.shift);
endfor

for i=-5 step 2 until 5:
dOt((z.b rotated (i*15)) shifted (5*z.shift));
endfor

dOt z.a + 5*z.shift;



label.top(btex $F_1$ etex, .5*z.b);
label.top(btex $F_2$ etex, (.5*z.b rotated (1*20))+1*(z.shift+(-.5,-1)));
label.top(btex $F_3$ etex, (.5*z.b rotated (2*20))+2*(z.shift+(-.5,-1)));
label.top(btex $F_4$ etex, (.5*z.b rotated (3*20))+3*(z.shift+(-.5,-1)));
label.top(btex $F_5$ etex, (.5*z.b rotated (4*20))+4*(z.shift+(-.5,-1)));
label.top(btex $F_6$ etex, (.5*z.b rotated (5*20))+5*(z.shift+(-.5,-1)));
label(btex {\Large$\dots$} etex, 6*z.shift);
endfig;

beginfig(36) 
save u;
u:=.8cm;

z.shift=(-3,0)*u;
z.vertshift=(1.5,-3)*u;

z.a=origin;
z.b=(1,0)*u;

draw 
(for i=-3 step 2 until 3: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (3*z.shift);

rimmark(((z.b rotated (3*15))+3*z.shift--z.a+3*z.shift));

for i=-1 step 2 until 1:
draw (z.a--(z.b rotated (i*15))) shifted (3*z.shift);
endfor

for i=-3 step 2 until 3:
dOt((z.b rotated (i*15)) shifted (3*z.shift));
endfor

dOt z.a + 3*z.shift;

draw 
(for i=-4 step 2 until 4: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (4*z.shift);

rimmark(((z.b rotated (4*15))+4*z.shift--z.a+4*z.shift));

for i=-2 step 2 until 2:
draw (z.a--(z.b rotated (i*15))) shifted (4*z.shift);
endfor

for i=-4 step 2 until 4:
dOt((z.b rotated (i*15)) shifted (4*z.shift));
endfor

dOt z.a + 4*z.shift;


draw 
(for i=-4 step 2 until 2: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (4*z.shift+z.vertshift);

for i=-2 step 2 until 0:
draw (z.a--(z.b rotated (i*15))) shifted (4*z.shift+z.vertshift);
endfor

draw (z.a{z.b rotated (6*15)}..(z.b rotated (2*15))) shifted (4*z.shift+z.vertshift);
rimmark((z.a{z.b rotated (6*15)}..(z.b rotated (2*15))) shifted (4*z.shift+z.vertshift));

for i=-4 step 2 until 2:
dOt((z.b rotated (i*15)) shifted (4*z.shift+z.vertshift));
endfor

dOt z.a + 4*z.shift+z.vertshift;

draw 
(for i=-5 step 2 until 5: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (5*z.shift);

rimmark(((z.b rotated (5*15))+5*z.shift--z.a+5*z.shift));

for i=-3 step 2 until 3:
draw (z.a--(z.b rotated (i*15))) shifted (5*z.shift);
endfor

for i=-5 step 2 until 5:
dOt((z.b rotated (i*15)) shifted (5*z.shift));
endfor

dOt z.a + 5*z.shift;

draw 
(for i=-5 step 2 until 3: 
(z.b rotated (i*15))-- endfor z.a--cycle) shifted (5*z.shift+z.vertshift);

for i=-3 step 2 until 1:
draw (z.a--(z.b rotated (i*15))) shifted (5*z.shift+z.vertshift);
endfor

draw (z.a{z.b rotated (7*15)}..(z.b rotated (3*15))) shifted (5*z.shift+z.vertshift);
rimmark((z.a{z.b rotated (7*15)}..(z.b rotated (3*15))) shifted (5*z.shift+z.vertshift));

for i=-5 step 2 until 3:
dOt((z.b rotated (i*15)) shifted (5*z.shift+z.vertshift));
endfor

dOt z.a + 5*z.shift+z.vertshift;

drawdblarrow (0,1)*u+ 5*z.shift+z.vertshift--(1.1,-.6)*u+ 5*z.shift--(-.2,-.2)*u+ 4*z.shift;
drawdblarrow (0,1)*u+ 4*z.shift+z.vertshift--(1.1,-.6)*u+ 4*z.shift--(-.2,-.2)*u+ 3*z.shift;

drawdblarrow (0,-1)*u+4*z.shift--(1.1,.6)*u+ 5*z.shift+z.vertshift--(-.2,.3)*u+ 4*z.shift+z.vertshift;

label.top(btex $F_4$ etex, (.5*z.b rotated (3*20))+3*(z.shift+(-.5,-1))+(-1,1));
label.top(btex $F_5$ etex, (.5*z.b rotated (4*20))+4*(z.shift+(-.5,-1))+(-1,1));
label.top(btex $F_6$ etex, (.5*z.b rotated (5*20))+5*(z.shift+(-.5,-1))+(-1,1));

label(btex $F_4'$ etex, (.5*z.b rotated (-4*20))+4*(z.shift+(-.5,-1))+(-1,-1)+z.vertshift);
label(btex $F_5'$ etex, (.5*z.b rotated (-5*20))+5*(z.shift+(-.5,-1))+(-1,-1)+z.vertshift);

label(btex {\Large$\dots$} etex, 5*z.shift-(1,0)*u);
label(btex {\Large$\dots$} etex, 5*z.shift-(1,0)*u+z.vertshift);
label(btex {\Large$\dots$} etex, 3*z.shift+z.b+(1,0)*u);
label(btex {\Large$\dots$} etex, 4*z.shift+z.vertshift+z.b+(1,0)*u);
endfig;

beginfig(37) 
save u;
u:=.5cm;


z2=(0,1)*u;
z1=z2 rotated 60;

z.shift=-z2/4+(2.5,0)*u;

for j=3 step 1 until 10:
z[j]=z[j-2]+z2;
endfor

for i=2 step 1 until 7:
draw (z1--z2) shifted (i*z.shift);
for j=3 step 1 until i:
draw (z[j-2]--z[j]--z[j-1]) shifted (i*z.shift);
endfor
for j=1 step 1 until i:
dOt z[j]+i*z.shift;
endfor
endfor

label(btex $Z_1$ etex, .5[z[2+1],z[2+2]]+2*z.shift+(0,-3));
label(btex $Z_2$ etex, .5[z[3+1],z[3+2]]+3*z.shift+(0,-3));
label(btex $Z_3$ etex, .5[z[4+1],z[4+2]]+4*z.shift+(0,-3));
label(btex $Z_4$ etex, .5[z[5+1],z[5+2]]+5*z.shift+(0,-3));
label(btex $Z_5$ etex, .5[z[6+1],z[6+2]]+6*z.shift+(0,-3));
label(btex $Z_6$ etex, .5[z[7+1],z[7+2]]+7*z.shift+(0,-3));

label.rt(btex {\Large$\dots$} etex, z[4]+7*z.shift+(5,0));
endfig;


beginfig(38) 
save u;
u:=.5cm;

z1=origin;
z2=(1,0)*u;
z3=z2 rotated 90;

z.shift=-z3/2+(2.5,0)*u;

for j=4 step 1 until 20:
z[j]=z[j-2]+z3;
endfor

for i=1 step 1 until 6:
draw (z1--z2) shifted (i*z.shift);
for j=3 step 2 until 2*i:
draw (z[j-2]--z[j]--z[j+1]--z[j-1]) shifted (i*z.shift);
endfor
for j=1 step 1 until 2*i:
dOt z[j]+i*z.shift;
endfor
endfor

label.top(btex $L_1$ etex, .5[z[2*1-1],z[2*1]]+1*z.shift+(0,2));
label.top(btex $L_2$ etex, .5[z[2*2-1],z[2*2]]+2*z.shift+(0,2));
label.top(btex $L_3$ etex, .5[z[2*3-1],z[2*3]]+3*z.shift+(0,2));
label.top(btex $L_4$ etex, .5[z[2*4-1],z[2*4]]+4*z.shift+(0,2));
label.top(btex $L_5$ etex, .5[z[2*5-1],z[2*5]]+5*z.shift+(0,2));
label.top(btex $L_6$ etex, .5[z[2*6-1],z[2*6]]+6*z.shift+(0,2));

label.rt(btex {\Large$\dots$} etex, .5[z[6],z[8]]+6*z.shift+(5,0));
endfig;

beginfig(39) 
save u;
u:=.5cm;

z1=origin;
z2=(1,0)*u;
z3=z2 rotated 90;

z.shift=(2.5,0)*u;

for j=4 step 1 until 20:
z[j]=z[j-2]+z3;
endfor

z.a=(z[2] rotated 60)+ z[7]+4*z.shift;

draw z[7]+4*z.shift--z.a--z[8]+4*z.shift;
dOt z.a;

draw z[7]+5*z.shift{up}..{down}z[8]+5*z.shift;

draw (z1--z2) shifted (4*z.shift);
for j=3 step 2 until 2*4:
draw (z[j-2]--z[j]--z[j+1]--z[j-1]) shifted (4*z.shift);
endfor
for j=1 step 1 until 2*4:
dOt z[j]+4*z.shift;
endfor

draw (z1--z2) shifted (5*z.shift);
for j=3 step 2 until 2*4:
draw (z[j-2]--z[j]--z[j+1]--z[j-1]) shifted (5*z.shift);
endfor
for j=1 step 1 until 2*4:
dOt z[j]+5*z.shift;
endfor

label.bot(btex $L_4'$ etex, .5[z[1],z[2]]+4*z.shift+(0,-2));
label.bot(btex $L_4''$ etex, .5[z[1],z[2]]+5*z.shift+(0,-2));

endfig;


beginfig(30) 
save u;
u:=.5cm;

z.shift=(2.5,0)*u;

z.r=(.7,0)*u;

save p;
path p[];

p0=circle(origin,z.r);

for i=1 step 1 until 6:
draw p0 shifted (i*z.shift);
for j=0 step 1 until i-1:
draw (i*z.shift)--(z.r rotated ((j/i)*360))+i*z.shift;
dOt (z.r rotated ((j/i)*360))+i*z.shift;
endfor
dOt i*z.shift;
endfor


label.top(btex $W_1$ etex, (z.r rotated 90)+1*z.shift+(0,2));
label.top(btex $W_2$ etex, (z.r rotated 90)+2*z.shift+(0,2));
label.top(btex $W_3$ etex, (z.r rotated 90)+3*z.shift+(0,2));
label.top(btex $W_4$ etex, (z.r rotated 90)+4*z.shift+(0,2));
label.top(btex $W_5$ etex, (z.r rotated 90)+5*z.shift+(0,2));
label.top(btex $W_6$ etex, (z.r rotated 90)+6*z.shift+(0,2));

label.rt(btex {\Large$\dots$} etex, z.r+6*z.shift+(5,0));
endfig;
%%%%%%%%%%%%%%%%%%%%%%

beginfig(41) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;

for i=-45 step 15 until 45:
draw z.a{dir i}..{dir -i}z.b;
endfor

dOt z.a,z.b;

endfig;

%%%%%%%%%%%%%%%%%%%%%%

beginfig(51) 
save u;
u:=.5cm;

z.o=origin;
z.r=(1,0)*u;

z.shift1=(3.6,1.8)*u;
z.shift2=(3.6,-1.8)*u;

rimmark(z.o--(z.r rotated 90));

draw circle(z.o,z.r);
draw -z.r--z.r;
draw (-z.r--z.r) rotated 90;
dOt z.o,z.r,z.r rotated 90,z.r rotated 180,z.r rotated -90;

draw circle(z.o,z.r) shifted z.shift1;
draw (-z.r--z.r) shifted z.shift1;
draw ((z.o--(-z.r)) rotated 90) shifted z.shift1;
dOt z.o+z.shift1,z.r+z.shift1,(z.r rotated 90)+z.shift1,(z.r rotated 180)+z.shift1,(z.r rotated -90)+z.shift1;

draw (-z.r{down}..z.r rotated -90..{up}z.r) shifted z.shift2;
dOt z.r+z.shift2,(z.r rotated 180)+z.shift2,(z.r rotated -90)+z.shift2;

label.bot(btex $G$ etex, (z.r rotated -90)+(0,-2));
label.bot(btex $G{-}e$ etex, (z.r rotated -90)+z.shift1+(0,-2));
label.bot(btex $G{-}[e]$ etex, (z.r rotated -90)+z.shift2+(0,-2));
endfig;

beginfig(52) 
save u;
u:=.7cm;

z.x=(0,0)*u;
z.z=(1,0)*u;
z.y=z.z rotated -60;
z.w=(1,1)*u;
z.v=(0,1)*u;
z.u=(-1,0)*u;

draw z.u--z.x--z.v;
draw z.w--z.z;
draw z.y--z.x--z.z--cycle;

dOt z.x,z.y,z.z,z.u,z.v,z.w;

label.llft(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
label.rt(btex $z$ etex, z.z);
label.lft(btex $u$ etex, z.u);
label.top(btex $v$ etex, z.v);
label.top(btex $w$ etex, z.w);

endfig;

%%%%%%%%%%%%%%%%%%%%%%

beginfig(60) 
save u;
u:=1cm;

z1=(1,0)*u;
z2=z1 rotated 60;
z3=z1 rotated 120;
z4=z1 rotated 180;
z5=z1 rotated -120;
z6=z1 rotated -60;

draw z1--z2--z3--z4--z5--z6--cycle dashed evenly;
draw z2--z6;
draw z3--z5;

dOt z1,z2,z3,z4,z5,z6;

endfig;

beginfig(61) 
save u;
u:=.4cm;

z0=origin;
z1=(0,1)*u;
z2=1.8*z1;
z3=3*z1;
z4=z1 zscaled (2,1);
z5=z1 zscaled (2,-1);


draw z1..z4..z3..z5..cycle;
draw z4..z2..z5;
draw z2--z3;
draw z0--z1;

draw (z1..z4..z3..z5..cycle) rotated 120;
draw (z4..z2..z5) rotated 120;
draw (z2--z3) rotated 120;
draw (z0--z1) rotated 120;

draw (z1..z4..z3..z5..cycle) rotated -120;
draw (z4..z2..z5) rotated -120;
draw (z2--z3) rotated -120;
draw (z0--z1) rotated -120;

dOt z0,z1,z2,z3,z4,z5;

dOt z1 rotated 120,z2 rotated 120,z3 rotated 120,z4 rotated 120,z5 rotated 120;

dOt z1 rotated -120,z2 rotated -120,z3 rotated -120,z4 rotated -120,z5 rotated -120;
endfig;

beginfig(62) 
save u;
u:=.7cm;

z.shift=(2,0)*u;

z.a1=(0,0)*u;
z.a2=(0,1)*u;
z.a3=(0,2)*u;
z.a4=(0,3)*u;
z.a5=(0,4)*u;
z.a6=(0,5)*u;
z.a7=(0,6)*u;

z.b1=z.a1+z.shift;
z.b2=z.a2+z.shift;
z.b3=z.a3+z.shift;
z.b4=z.a4+z.shift;
z.b5=z.a5+z.shift;
z.b6=z.a6+z.shift;
z.b7=z.a7+z.shift;

draw z.a1--z.b1;
draw z.a2--z.b2;
draw z.a4--z.b3;
draw z.a5--z.b4;
draw z.a6--z.b5;
draw z.a7--z.b6;

draw z.a1--z.b2 dashed evenly;
draw z.a2--z.b1 dashed evenly;
draw z.a3--z.b2 dashed evenly;
draw z.a4--z.b2 dashed evenly;
draw z.a4--z.b4 dashed evenly;
draw z.a5--z.b3 dashed evenly;
draw z.a6--z.b4 dashed evenly;
draw z.a6--z.b6 dashed evenly;
draw z.a7--z.b2 dashed evenly;
draw z.a7--z.b7 dashed evenly;

draw z.a1+(-1,-1)*u/4..tension 1.5..z.b1+(1,-1)*u/4..tension 2..z.b2+(1,1)*u/4..tension 2..z.a3+(-1,1)*u/4..tension 2..cycle penhair;

draw z.a6+(-1,-1)*u/4..tension 2..z.b5+(1,-1)*u/4..tension 2..z.b7+(1,1)*u/4..tension 1.5..z.a7+(-1,1)*u/4..tension 2..cycle penhair;

draw z.a1+(-1,-1)*u/4..tension 1..z.a1+(1,-1)*u/4..tension 4..z.a7+(1,1)*u/4..tension 1..z.a7+(-1,1)*u/4..tension 2.5..cycle penhair;

draw z.b1+(-1,-1)*u/4..tension 1..z.b1+(1,-1)*u/4..tension 2.5..z.b7+(1,1)*u/4..tension 1..z.b7+(-1,1)*u/4..tension 4..cycle penhair;

dOt z.a1,z.a2,z.b3,z.b4,z.b5,z.b6,z.a3, z.b7;
Dot z.a4,z.a5,z.a6,z.a7,z.b1,z.b2;
dOtc z.a3, z.b7; 

label.lft(btex $L$ etex, z.a4+(-2,0));
label.rt(btex $R$ etex, z.b4+(2,0));

label.bot(btex $Q_L$ etex, .5[z.a1,z.b1]+(0,-2));
label.top(btex $Q_R$ etex, .5[z.a7,z.b7]+(0,2));
endfig;


beginfig(63) 
save u;
u:=.8cm;

z.shift=(0,-2)*u;

z.a0=origin;
z.a1=(1,0)*u;
z.a2=z.a1 rotated (90+60);
z.a3=z.a1 rotated 90;
z.a4=z.a1+z.a3;
z.a5=(z.a1 rotated 30)+z.a1;

draw z.a0--z.a1;
draw z.a0--z.a2 dashed evenly;
draw z.a0--z.a3 dashed evenly;

draw z.a1--z.a4 dashed evenly;

draw z.a2--z.a3;

draw z.a3--z.a4;

draw z.a4--z.a5;

dOt z.a0,z.a1,z.a2,z.a3,z.a4,z.a5;

draw (z.a0--z.a1) shifted z.shift;
draw (z.a0--z.a2) shifted z.shift dashed evenly;
draw (z.a0--z.a3) shifted z.shift dashed evenly;

draw (z.a1--z.a4) shifted z.shift dashed evenly;

draw (z.a2--z.a3) shifted z.shift;

draw (z.a3--z.a4) shifted z.shift dashed evenly;

draw (z.a4--z.a5) shifted z.shift;

dOt z.a0+z.shift,z.a1+z.shift,z.a2+z.shift,z.a3+z.shift,z.a4+z.shift,z.a5+z.shift;


endfig;

beginfig(64) 
save u;
u:=.5cm;

z.shift=(0,-3)*u;

for i=0 step 1 until 10:
z[i]=(i,0)*u;
endfor

draw z[0]--z[5] penhair;
draw z[0]{up}..{down}z[2]--z[1]{down}..{up}z[4]--z[3]{up}..{down}z[5] pensemibold dashed evenly;

dOt for i=0 step 1 until 5: z[i], endfor;

draw (z[0]{up}..{down}z[2]--z[5]) shifted z.shift penhair;
draw (z[0]{up}--z[1]{down}..{up}z[4]--z[3]{up}..{down}z[5]) shifted z.shift pensemibold dashed evenly;

dOt for i=0 step 1 until 5: z[i]+z.shift, endfor;

draw (z[0]{up}--z[1]{down}..{up}z[4]--z[5]) shifted (2*z.shift) penhair;
draw (z[0]{up}..{down}z[2]--z[3]{up}..{down}z[5]) shifted (2*z.shift) pensemibold dashed evenly;

dOt for i=0 step 1 until 5: z[i]+2*z.shift, endfor;

label.lft(btex $s$ etex, z[0]);
label.rt(btex $t$ etex, z[5]);
label.lft(btex $s$ etex, z[0]+z.shift);
label.rt(btex $t$ etex, z[5]+z.shift);
label.lft(btex $s$ etex, z[0]+2*z.shift);
label.rt(btex $t$ etex, z[5]+2*z.shift);

endfig;

beginfig(65) 
save u;
u:=1cm;

z.x=(1,0)*u;
z.y=(0,1)*u;

drawarrow subpath (0,.6) of (z.x--0*z.x);
draw subpath (.59,1) of (z.x--0*z.x);
drawarrow subpath (0,.6) of (2*z.x--1*z.x);
draw subpath (.59,1) of (2*z.x--1*z.x);
drawarrow subpath (0,.6) of (3*z.x+z.y--2*z.x);
draw subpath (.59,1) of (3*z.x+z.y--2*z.x);

drawarrow subpath (0,.6) of (1*z.x+z.y--0*z.x);
draw subpath (.59,1) of (1*z.x+z.y--0*z.x);
drawarrow subpath (0,.6) of (2*z.x+z.y--1*z.x+z.y);
draw subpath (.59,1) of (2*z.x+z.y--1*z.x+z.y);
drawarrow subpath (0,.6) of (3*z.x+z.y--2*z.x+z.y);
draw subpath (.59,1) of (3*z.x+z.y--2*z.x+z.y);

drawarrow subpath (0,.6) of (0*z.x--z.y) dashed evenly;
draw subpath (.59,1) of (0*z.x--z.y) dashed evenly;
drawarrow subpath (0,.6) of (0*z.x+z.y--1*z.x+z.y) dashed evenly;
draw subpath (.59,1) of (0*z.x+z.y--1*z.x+z.y) dashed evenly;
drawarrow subpath (0,.6) of (1*z.x+z.y--1*z.x+0*z.y) dashed evenly;
draw subpath (.59,1) of (1*z.x+z.y--1*z.x+0*z.y) dashed evenly;
drawarrow subpath (0,.6) of (2*z.x+z.y--1*z.x+0*z.y) dashed evenly;
draw subpath (.59,1) of (2*z.x+z.y--1*z.x+0*z.y) dashed evenly;
drawarrow subpath (0,.6) of (2*z.x+z.y--2*z.x+0*z.y) dashed evenly;
draw subpath (.59,1) of (2*z.x+z.y--2*z.x+0*z.y) dashed evenly;
drawarrow subpath (0,.6) of (2*z.x+0*z.y--3*z.x+0*z.y) dashed evenly;
draw subpath (.59,1) of (2*z.x+0*z.y--3*z.x+0*z.y) dashed evenly;
drawarrow subpath (0,.6) of (3*z.x+0*z.y--3*z.x+1*z.y) dashed evenly;
draw subpath (.59,1) of (3*z.x+0*z.y--3*z.x+1*z.y) dashed evenly;

draw (-.3,-.3)*u..tension 2..z.x+(.3,-.3)*u..tension 2..z.x+z.y+(.3,.3)*u..tension 2..z.y+(-.3,.3)*u..tension 2..cycle penhair;

dOt 0*z.x,1*z.x,2*z.x,3*z.x,0*z.x+z.y,1*z.x+z.y,2*z.x+z.y,3*z.x+z.y;

label.llft(btex $s$ etex, origin);
label.urt(btex $t$ etex, 3*z.x+z.y);
label.top(btex $S$ etex, .5*z.x+z.y);
endfig;

beginfig(66) 
save u;
u:=.4cm;

z.shift=(9,0)*u;

for i=0 step 1 until 10:
z[i]=(i,0)*u;
endfor

draw z[0]--z[6] penhair;
draw z[0]{up}..{down}z[5]--z[4]{up}..{down}z[2]--z[1]{down}..{up}z[6] pensemibold dashed evenly;

draw (z[0]{up}..{down}z[5]--z[6]) shifted z.shift;
draw (z[0]--z[1]{down}..{up}z[6]) shifted z.shift;
draw (z[4]{up}..{down}z[2]--cycle) shifted z.shift;

draw (z[0]{up}..{down}z[5]--z[6]) shifted (2*z.shift);
draw (z[0]--z[1]{down}..{up}z[6]) shifted (2*z.shift);

dOt for i=0 step 1 until 6: z[i], endfor;
dOt for i=0 step 1 until 6: z[i]+1*z.shift, endfor;
dOt for i=0 step 1 until 6: z[i]+2*z.shift, endfor;

label.lft(btex $s$ etex, z[0]);
label.rt(btex $t$ etex, z[6]);
label.lft(btex $s$ etex, z[0]+z.shift);
label.rt(btex $t$ etex, z[6]+z.shift);
label.lft(btex $s$ etex, z[0]+2*z.shift);
label.rt(btex $t$ etex, z[6]+2*z.shift);

endfig;

beginfig(67) 
save u;
u:=.7cm;

z.x=(.7,0)*u;
z.y=(0,1)*u;


z.shift =(2.5,0)*u;

draw z.x--2*z.x+z.y;
draw z.x+z.y--2*z.x-z.y;
draw z.x-z.y--2*z.x-z.y;
draw z.x-z.y--2*z.x;

drawarrow subpath (0,.6) of (z.x--2*z.x+z.y) shifted z.shift;
drawarrow subpath (0,.6) of (z.x+z.y--2*z.x-z.y) shifted z.shift;
drawarrow subpath (0,.6) of (z.x-z.y--2*z.x-z.y) shifted z.shift;
drawarrow subpath (0,.6) of (z.x-z.y--2*z.x) shifted z.shift;

drawarrow subpath (0,.6) of (origin--z.x+z.y) shifted z.shift;
drawarrow subpath (0,.6) of (origin--z.x) shifted z.shift;
drawarrow subpath (0,.6) of (origin--z.x-z.y) shifted z.shift;

drawarrow subpath (0,.6) of (2*z.x+z.y--3*z.x) shifted z.shift;
drawarrow subpath (0,.6) of (2*z.x--3*z.x) shifted z.shift;
drawarrow subpath (0,.6) of (2*z.x-z.y--3*z.x) shifted z.shift;

draw subpath (.59,1) of (z.x--2*z.x+z.y) shifted z.shift;
draw subpath (.59,1) of (z.x+z.y--2*z.x-z.y) shifted z.shift;
draw subpath (.59,1) of (z.x-z.y--2*z.x-z.y) shifted z.shift;
draw subpath (.59,1) of (z.x-z.y--2*z.x) shifted z.shift;

draw subpath (.59,1) of (origin--z.x+z.y) shifted z.shift;
draw subpath (.59,1) of (origin--z.x) shifted z.shift;
draw subpath (.59,1) of (origin--z.x-z.y) shifted z.shift;

draw subpath (.59,1) of (2*z.x+z.y--3*z.x) shifted z.shift;
draw subpath (.59,1) of (2*z.x--3*z.x) shifted z.shift;
draw subpath (.59,1) of (2*z.x-z.y--3*z.x) shifted z.shift;
save p;
path p[];
p0=z.x-z.y+(-.15,-.15)*u..tension 1..z.x-z.y+(.15,-.15)*u..tension 3..z.x+z.y+(.15,.15)*u..tension 1..z.x+z.y+(-.15,.15)*u..tension 3..cycle;

draw p0 penhair;
draw p0 shifted z.x penhair;

dOt z.x,z.x+z.y,z.x-z.y,2*z.x,2*z.x+z.y,2*z.x-z.y;
dOt z.shift,3*z.x+z.shift,z.x+z.shift,z.x+z.y+z.shift,z.x-z.y+z.shift,2*z.x+z.shift,2*z.x+z.y+z.shift,2*z.x-z.y+z.shift;

label.top(btex $G$ etex, 1.5*z.x+z.y+(0,5));
label.top(btex $\hat G$ etex, 1.5*z.x+z.y+z.shift+(0,5));

endfig;

%%%%%%%%%%%%%%%%%%%%%%

beginfig(71) 
save u;
u:=.5cm;

z.a1=(0,1)*u;
z.b1=z.a1 rotated 120;
z.b2=z.a1 rotated -120;

z.c1=2*z.a1;

z.c2=2*z.b1;
z.c3=2*z.b2;

z.c4=z.a1+z.b1;
z.c5=z.a1+z.b2;
z.c6=z.b1+z.b2;

z.c7=origin;
z.c0=z.c1+z.b1;

draw z.a1--z.b1;
z.shift=(-6,0)*u;
draw z.a1+z.shift--z.b1+z.shift;



draw z.c7--z.c1;
draw z.c7--z.c2;
draw z.c7--z.c3;
draw z.a1--z.c4--z.b1--z.c6--z.b2--z.c5--cycle;

draw circle(z.c7, 2.5*z.a1-z.c7) dashed evenly;
draw circle(z.c7+z.shift, 2.5*z.a1-z.c7) dashed evenly;
draw circle(z.c7+2*z.shift, 2.5*z.a1-z.c7) dashed evenly;

dOt z.a1,z.b1,z.b2,z.c1,z.c2,z.c3,z.c4,z.c5,z.c6,z.c7,z.c0,z.a1+z.shift,z.a1+2*z.shift,z.b1+z.shift,z.b2+z.shift;

label.rt(btex $\dots$ etex, (2.6,0)*u);
label(btex $G_3$ etex, (0,-1.8)*u);
label(btex $G_2$ etex, (0,-1.8)*u+z.shift);
label(btex $G_1$ etex, (0,-1.8)*u+2*z.shift);
endfig;

beginfig(72) 
save u;
u:=.5cm;

draw (-4.3,2)*u--(4.3,2)*u;
draw (0,1)*u--(0,3)*u;
draw (1,1)*u--(1,3)*u;
draw (2,1)*u--(2,3)*u;
draw (3,1)*u--(3,3)*u;
draw (4,1)*u--(4,3)*u;

draw (-4.3,-2)*u--(4.3,-2)*u;
draw (0,-2)*u--(0,-1)*u;
draw (1,-3)*u--(1,-1)*u;
draw (2,-3)*u--(2,-1)*u;
draw (3,-3)*u--(3,-1)*u;
draw (4,-3)*u--(4,-1)*u;

dOt 
(-4,2)*u,(-3,2)*u,(-2,2)*u,(-1,2)*u,(-0,2)*u,(1,2)*u,(2,2)*u,(3,2)*u,(4,2)*u,
(-0,3)*u,(1,3)*u,(2,3)*u,(3,3)*u,(4,3)*u,
(1,1)*u,(2,1)*u,(3,1)*u,(4,1)*u,
(-4,-2)*u,(-3,-2)*u,(-2,-2)*u,(-1,-2)*u,(-0,-2)*u,(1,-2)*u,(2,-2)*u,(3,-2)*u,(4,-2)*u,
(1,-1)*u,(2,-1)*u,(3,-1)*u,(4,-1)*u,
(1,-3)*u,(2,-3)*u,(3,-3)*u,(4,-3)*u,
(-0,1)*u,(-0,-1)*u
;

dOtc (-0,1)*u,(-0,-1)*u; 

label.lft(btex $\dots$ etex, (-4.3,2)*u);
label.lft(btex $\dots$ etex, (-4.3,-2)*u);
label.rt(btex $\dots$ etex, (4.3,2)*u);
label.rt(btex $\dots$ etex, (4.3,-2)*u);

label.top(btex $T$ etex, (-1.5,2)*u);
label.top(btex $T'$ etex, (-1.5,-2)*u);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginfig(81) 
save u;
u:=.5cm;

z.shift=(3,0)*u;
z.a1=origin;
z.a2=(1,0)*u;
z.a3=z.a2 rotated 60;

draw (z.a1--z.a2) shifted (1*z.shift);
draw (z.a2--z.a3) shifted (2*z.shift);
draw (z.a1--z.a3) shifted (3*z.shift);
draw (z.a1--z.a3--z.a2) shifted (4*z.shift);
draw (z.a2--z.a1--z.a3) shifted (5*z.shift);
draw (z.a1--z.a2--z.a3) shifted (6*z.shift);

for i=0 step 1 until 6:
dOt z.a1+i*z.shift,z.a2+i*z.shift,z.a3+i*z.shift;
endfor

endfig;

beginfig(82) 
save u;
u:=.5cm;

z.shift=(3,0)*u;
z.a1=origin;
z.a2=(1,0)*u;
z.a3=z.a2 rotated 60;
draw (z.a1--z.a2--z.a3--cycle) shifted (0*z.shift);
draw (z.a1--z.a3--z.a2) shifted (1*z.shift);
draw (z.a2--z.a1--z.a3) shifted (2*z.shift);
draw (z.a1--z.a2--z.a3) shifted (3*z.shift);

for i=0 step 1 until 3:
dOt z.a1+i*z.shift,z.a2+i*z.shift,z.a3+i*z.shift;
endfor

endfig;

beginfig(90) 
save u;
u:=1cm;

z.a=origin;
z.b=(0,1)*u;
z.c=z.b rotated 120;
z.d=z.b rotated -120;
z.bc=z.b rotated 60;
z.db=z.b rotated -60;
z.cd=-z.b;

draw circle(z.a,z.b);
draw z.a--z.b;
draw z.a--z.c;
draw z.a--z.d;

dOt z.a,z.b,z.c,z.d;

label.urt(btex $a$ etex,z.a);
label.top(btex $b$ etex,z.b);
label.llft(btex $c$ etex,z.c);
label.lrt(btex $d$ etex,z.d);

label.lft(btex $1$ etex,.5[z.a,z.b]);
label.lrt(btex $2$ etex,.5[z.a,z.c]);
label.llft(btex $4$ etex,.5[z.a,z.d]);
label.ulft(btex $1$ etex,z.bc);
label.bot(btex $5$ etex,z.cd);
label.urt(btex $2$ etex,z.db);

endfig;

beginfig(91) 
save u;
u:=.5cm;

z0=origin;
z1=(0,1)*u;
z2=z1 rotated 120;
z3=z1 rotated -120;
z4=z1-z2;
z5=z1-z3;

z.shift=(3,0)*u;

draw (z2--z5) shifted (-1*z.shift);
draw (z3--z4) shifted (-1*z.shift);
draw (z2--z0) shifted (-1*z.shift);
draw (z4--z5) shifted (-1*z.shift);
draw (z5--z0) shifted (-1*z.shift);
draw (z5--z1) shifted (-1*z.shift);
draw (z0--z1) shifted (-1*z.shift);
draw (z0--z3) shifted (-1*z.shift);
draw (z4--z1) shifted (-1*z.shift);


draw z0--z1;
draw z0--z2;
draw z0--z3;
draw z4--z1;
draw z5--z1;

draw (z0--z2) shifted (1*z.shift);
draw (z0--z3) shifted (1*z.shift);
draw (z4--z1) shifted (1*z.shift);
draw (z5--z1) shifted (1*z.shift);

draw (z4--z1) shifted (2*z.shift);
draw (z0--z5) shifted (2*z.shift);
draw (z4--z5) shifted (2*z.shift);
draw (z4--z3) shifted (2*z.shift);
draw (z5--z2) shifted (2*z.shift);

draw (z4--z1) shifted (3*z.shift);
draw (z0--z5) shifted (3*z.shift);
draw (z4--z5) shifted (3*z.shift);

draw (z4--z1) shifted (4*z.shift);
draw (z0--z1) shifted (4*z.shift);
draw (z4--z5) shifted (4*z.shift);
draw (z4--z3) shifted (4*z.shift);
draw (z5--z2) shifted (4*z.shift);

draw (z0--z5) shifted (5*z.shift);
draw (z0--z2) shifted (5*z.shift);
draw (z0--z3) shifted (5*z.shift);
draw (z4--z1) shifted (5*z.shift);
draw (z5--z1) shifted (5*z.shift);


dOt z0 shifted (-1*z.shift),z1 shifted (-1*z.shift),z2 shifted (-1*z.shift),z3 shifted (-1*z.shift),z4 shifted (-1*z.shift),z5 shifted (-1*z.shift);
dOt z0,z1,z2,z3,z4,z5;
dOt z0 shifted (1*z.shift),z1 shifted (1*z.shift),z2 shifted (1*z.shift),z3 shifted (1*z.shift),z4 shifted (1*z.shift),z5 shifted (1*z.shift);
dOt z0 shifted (2*z.shift),z1 shifted (2*z.shift),z2 shifted (2*z.shift),z3 shifted (2*z.shift),z4 shifted (2*z.shift),z5 shifted (2*z.shift);
dOt z0 shifted (3*z.shift),z1 shifted (3*z.shift),z4 shifted (3*z.shift),z5 shifted (3*z.shift);
dOt z0 shifted (4*z.shift),z1 shifted (4*z.shift),z2 shifted (4*z.shift),z3 shifted (4*z.shift),z4 shifted (4*z.shift),z5 shifted (4*z.shift);
dOt z0 shifted (5*z.shift),z1 shifted (5*z.shift),z2 shifted (5*z.shift),z3 shifted (5*z.shift),z4 shifted (5*z.shift),z5 shifted (5*z.shift);

label.lft(btex $s$ etex, .5[z0,z1] +(.5,0));
label.lft(btex $s$ etex, .5[z0,z1] +(.5,0) shifted (4*z.shift));
label.lft(btex $t$ etex, .3[z0,z5] +(.5,0) shifted (2*z.shift));
label.lft(btex $t$ etex, .3[z0,z5] +(.5,0) shifted (3*z.shift));
label.lft(btex $t$ etex, .3[z0,z5] +(.5,0) shifted (5*z.shift));
label.bot(btex $G$ etex, .5[z2,z3] shifted (-1*z.shift));
label.bot(btex $S$ etex, .5[z2,z3]);
label.bot(btex $T$ etex, .5[z2,z3] shifted (2*z.shift));
label.bot(btex $P$ etex, .5[z2,z3] shifted (3*z.shift));
label.bot(btex $T'$ etex, .5[z2,z3] shifted (4*z.shift));
label.bot(btex $S'$ etex, .5[z2,z3] shifted (5*z.shift));

label.bot(btex $S_1$ etex, z0 shifted (1*z.shift)+(0,-2));
label.top(btex $S_2$ etex, z1 shifted (1*z.shift)+(0,2));
endfig;

beginfig(101) 
save u,n;
u:=.6cm;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z11=(x1,-y1);


z.a=(2,.2)*u;
z.b=(4,.2)*u;

path p[];
p0=z.a{1,-1}..{1,1}z.b;
p1=z0..z1..z0+z.shift..z11
..cycle;
p2=.15[z0,z.shift]+(0,.5*u)..tension 2..(.85)[z0,z.shift]+(0,.5*u)..tension 2..cycle;

z3=(.3,3.2);

p3= point x3 of p0{direction x3 of p0}..tension 1.8..point y3 of p1{direction y3 of p1}..tension 1.8..cycle;

draw p0;
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0));

draw p1;

draw subpath(0,1) of p3 dashed evenly penhair;
draw subpath(1,2) of p3 penhair;
draw p2 penhair;
endfig;

beginfig(102) 
save u;
u:=1.4cm;

draw (-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle penhair;

draw (-1,0)*u--(1,0)*u pensemibold;
draw (0,-1)*u--(0,1)*u pensemibold;
x.r=.6*u;
draw (0,x.r)--(x.r,0)--(0,-x.r)--(-x.r,0)--cycle pensemibold;

dOt origin,(0,x.r),(x.r,0),(0,-x.r),(-x.r,0); 

label.urt(btex $u$ etex, origin);
label.urt(btex $v$ etex, (0,x.r));
label.lrt(btex $w$ etex, (0,-x.r));
label.urt(btex $x$ etex, (x.r,0));
label.llft(btex $y$ etex, (-x.r,0));

endfig;

beginfig(104) 
save u;
u:=1.4cm;

draw (-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle penhair;

draw (-1,-1)*u--(1,1)*u pensemibold;
draw (1,-1)*u--(-1,1)*u pensemibold;
draw (0,1)*u--(1,0)*u--(0,-1)*u--(-1,0)*u--cycle pensemibold;

dOt origin,(-1,-1)*u,(1,1)*u,(1,-1)*u,(-1,1)*u,(0,1)*u,(1,0)*u,(0,-1)*u,(-1,0)*u,.5*(-1,-1)*u,.5*(1,1)*u,.5*(1,-1)*u,.5*(-1,1)*u; 

label.top(btex $a$ etex, .5*(1,1)*u);
label.top(btex $b$ etex, .5*(1,-1)*u);
label.top(btex $c$ etex, .5*(-1,-1)*u);
label.top(btex $d$ etex, .5*(-1,1)*u);

label.bot(btex $2$ etex, origin+(0,-1));
label.urt(btex $1$ etex, (1,1)*u);
label.lrt(btex $1$ etex, (1,-1)*u);
label.llft(btex $1$ etex, (-1,-1)*u);
label.ulft(btex $1$ etex, (-1,1)*u);
label.top(btex $4$ etex, (0,1)*u);
label.bot(btex $4$ etex, (0,-1)*u);
label.rt(btex $3$ etex, (1,0)*u);
label.lft(btex $3$ etex, (-1,0)*u);

endfig;

beginfig(106) 
save u;
u:=1.4cm;



draw (-1,-1)*u--(1,-1)*u pensemibold;
draw (-1,1)*u--(1,1)*u pensemibold;

draw (-2*6/7,1)*u
for i=-6 step 1 until 5:
--(2*(i+3)/7,-1)*u--(2*(i+1)/7,1)*u
endfor 
pensemibold
;

clip currentpicture to (-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle;
draw (-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle penhair;

dOt
for i=-4 step 1 until 2:
,(2*(i+1)/7,-1)*u,(2*(i+1)/7,1)*u
endfor
;

label.top(btex $1$ etex, (-6/7,1)*u);
label.top(btex $2$ etex, (-4/7,1)*u);
label.top(btex $3$ etex, (-2/7,1)*u);
label.top(btex $4$ etex, (0,1)*u);
label.top(btex $5$ etex, (2/7,1)*u);
label.top(btex $6$ etex, (4/7,1)*u);
label.top(btex $7$ etex, (6/7,1)*u);

label.bot(btex $1$ etex, (-6/7,-1)*u);
label.bot(btex $2$ etex, (-4/7,-1)*u);
label.bot(btex $3$ etex, (-2/7,-1)*u);
label.bot(btex $4$ etex, (0,-1)*u);
label.bot(btex $5$ etex, (2/7,-1)*u);
label.bot(btex $6$ etex, (4/7,-1)*u);
label.bot(btex $7$ etex, (6/7,-1)*u);

endfig;

beginfig(107) 
save u;
u:=.8cm;

z0=origin;
z1=(0,1)*u;
for i=2 step 1 until 9:
z[i]=z[i-1] rotated (360/9);
endfor

draw z1--z2--z3--z4--z5--z6--z7--z8--z9--cycle pensemibold;
for i=1 step 1 until 9:
draw z[i]--z[i] rotated (3*360/9) pensemibold;
endfor

dOt z1,z2,z3,z4,z5,z6,z7,z8,z9;

endfig;

beginfig(108) 
save u;
u:=.8cm;

z0=origin;
z1=(0,1)*u;
for i=2 step 1 until 9:
z[i]=z[i-1] rotated (360/9);
endfor

draw z1--z2--z3--z4--z5--z6--z7--z8--z9--cycle pensemibold;
draw z0--z1 pensemibold;
draw z0--z4 pensemibold;
draw z0--z7 pensemibold;
draw z2--z6 pensemibold;
draw z3--z8 pensemibold;
draw z5--z9 pensemibold;

dOt z0,z1,z2,z3,z4,z5,z6,z7,z8,z9;

endfig;

beginfig(109) 
save u;
u:=.7cm;

path p[];
p1=circle(origin,1*u);
p2=circle(origin,2*u);

fill reverse(p1) --p2--cycle withcolor .5;
draw p1 pensemibold;
draw p2 pensemibold;
endfig;

beginfig(110) 
save u;
u:=1.4cm;

draw (-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle penhair;


x.r=.6*u;
draw (0,x.r)--(x.r,0)--(0,-x.r)--(-x.r,0)--cycle pensemibold;
draw (-1,0)*u--(-x.r,0) pensemibold;
draw (1,0)*u--(x.r,0) pensemibold;
draw (0,-x.r)--(0,x.r) pensemibold;

dOt (0,x.r),(x.r,0),(0,-x.r),(-x.r,0); 

label.bot(btex $A$ etex, (0,1)*u);
label.top(btex $A$ etex, (0,-1)*u);
label.lft(btex $B$ etex, origin +(-2,0));
label.rt(btex $C$ etex, origin +(2,0));
endfig;

beginfig(111) 
save u;
u:=1.4cm;

draw (-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle penhair;


x.r=.6*u;
draw (0,x.r)--(x.r,0)--(0,-x.r)--(-x.r,0)--cycle pensemibold;
draw (-1,0)*u--(-x.r,0) pensemibold;
draw (1,0)*u--(x.r,0) pensemibold;

draw (0,1)*u--(0,x.r) pensemibold;
draw (0,-1)*u--(0,-x.r) pensemibold;


dOt (0,x.r),(x.r,0),(0,-x.r),(-x.r,0); 

label.lrt(btex $D$ etex, (-1,1)*u +(2,-2));
label.urt(btex $D$ etex, (-1,-1)*u +(2,2));
label.llft(btex $D$ etex, (1,1)*u +(-2,-2));
label.ulft(btex $D$ etex, (1,-1)*u +(-2,2));
label(btex $E$ etex, origin);
endfig;

beginfig(113) 
save u,n;
u:=.6cm;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z11=(x1,-y1);


z.a=(2,.2)*u;
z.b=(4,.2)*u;

path p[];
p0=z.a{1,-1}..{1,1}z.b;
p1=z0..z1..z0+z.shift..z11
..cycle;
p2=.15[z0,z.shift]+(0,.5*u)..tension 2..(.85)[z0,z.shift]+(0,.5*u)..tension 2..cycle;

z3=(.3,3.2);

p3= point x3 of p0{direction x3 of p0}..tension 1.8..point y3 of p1{direction y3 of p1}..tension 1.8..cycle;

draw p0;
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0));

draw p1;

draw subpath(0,1) of p3 dashed evenly pensemibold;
draw subpath(1,2) of p3 pensemibold;
draw p2 pensemibold;

dOt subpath(1,2) of p3 intersectionpoint p2;
endfig;


beginfig(115) 
save u,n;
u:=.6cm;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z11=(x1,-y1);


z.a=(2,.2)*u;
z.b=(4,.2)*u;

path p[];
p0=z.a{1,-1}..{1,1}z.b;
p1=z0..z1..z0+z.shift..z11
..cycle;
p2=.15[z0,z.shift]+(0,.5*u)..tension 2..(.85)[z0,z.shift]+(0,.5*u)..tension 2..cycle;

z3=(.3,3.2);

p3= point x3 of p0{direction x3 of p0}..tension 1.8..point y3 of p1{direction y3 of p1}..tension 1.8..cycle;

draw p0;
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0));

draw p1;

draw subpath(0,1) of p3 dashed evenly pensemibold;
draw subpath(1,2) of p3 pensemibold;
draw p2 pensemibold;

dOt p2 intersectionpoint subpath(1,2) of p3;
endfig;

beginfig(117) 
save u;
u:=.57cm;

draw (0,0)*u--(2,0)*u pensemibold;
draw (0,1)*u--(2,1)*u pensemibold;
draw (0,2)*u--(2,2)*u pensemibold;
draw (0,0)*u--(0,2)*u pensemibold;
draw (1,0)*u--(1,2)*u pensemibold;
draw (2,0)*u--(2,2)*u pensemibold;

draw (0,0)*u..(2,0)*u..(2,2)*u..(0,2)*u..cycle pensemibold;
draw (0,1)*u{1,1}..{1,-1}(2,1)*u pensemibold;
draw (1,0)*u{-1,1}..{1,1}(1,2)*u pensemibold;


dOt (0,0)*u,(1,0)*u,(2,0)*u,
(0,1)*u,(1,1)*u,(2,1)*u,
(0,2)*u,(1,2)*u,(2,2)*u;
endfig;

beginfig(120)
save u;
u:=.7cm;

path p[];
p1=circle(origin,1*u);

fill p1 withcolor .5;
draw p1 pensemibold;

p2=(-.3,0)*u{1,.5}..{1,.5}(1,0)*u;

draw p2 pensemibold dashed evenly;

dOt (-.3,0)*u,(1,0)*u;

label.top(btex $e$ etex, point .5 of p2);
label.top(btex $R$ etex, (0,-.8)*u);
endfig;

beginfig(121)
save u;
u:=.7cm;

path p[];
p1=circle(origin,1*u);

fill p1 withcolor .5;
draw p1 pensemibold;

p2=(-.8,.6)*u{1,-.5}..{1,.5}(1,0)*u;

draw p2 pensemibold dashed evenly;

dOt (-.8,.6)*u,(1,0)*u;

label.top(btex $e$ etex, point .5 of p2);
label.top(btex $R$ etex, (0,-.8)*u);
endfig;

beginfig(122) 
save u,n;
u:=.3cm;
n:=3;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z2=(6,.8)*u;
z11=(x1,-y1);
z22=(x2,-y2);

z.a=(2,.2)*u;
z.b=(4,.2)*u;


path p[];
p0=z.a{1,-1}..{1,1}z.b;


for i=0 step 1 until n:
draw p0 shifted (i*z.shift);
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0)) shifted (i*z.shift);
endfor

draw z0..z1..z2
for i=1 step 1 until n-1:
..z1+i*z.shift..z2+i*z.shift
endfor
..z1+n*z.shift..z0+(n+1)*z.shift..z11+n*z.shift
for i=n-1 step -1 until 0:
..z22+i*z.shift..z11+i*z.shift
endfor
..cycle
;

endfig;



beginfig(123) 
save u,n;
u:=.3cm;
n:=3;

z.shift=(6,0)*u;
z.shift2=(2,-7)*u;

z0=origin;
z1=(3,2)*u;
z2=(6,.8)*u;
z11=(x1,-y1);
z22=(x2,-y2);

z.a=(2,.2)*u;
z.b=(4,.2)*u;
z.c=(5.5,0)*u;
z.d=(4.4,-.8)*u;

path p[];
p0=z.a{1,-1}..{1,1}z.b;

p1=z.c..tension 1.4..z.d..tension 1.4..cycle;
p2= p1 reflectedabout((3,0)*u,(3,1)*u);

fill p1 shifted (n*z.shift) withcolor .8;
draw p1 shifted (n*z.shift) dashed evenly penhair;
fill p2 shifted ((n+1.5)*z.shift) withcolor .8;
draw p2 shifted ((n+1.5)*z.shift) dashed evenly penhair;


for i=0 step 1 until n:
draw p0 shifted (i*z.shift);
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0)) shifted (i*z.shift);
endfor

p3=z0..z1..z2
for i=1 step 1 until n-1:
..z1+i*z.shift..z2+i*z.shift
endfor
..z1+n*z.shift..z0+(n+1)*z.shift..z11+n*z.shift
for i=n-1 step -1 until 0:
..z22+i*z.shift..z11+i*z.shift
endfor
..cycle
;

draw p3;

draw p0 shifted ((n+1.5)*z.shift);
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0)) shifted ((n+1.5)*z.shift);

p4= (z0..z1..z0+z.shift..z11
..cycle) shifted ((n+1.5)*z.shift)
;

draw p4;

p5=(z0..z1..z2
for i=1 step 1 until n:
..z1+i*z.shift..z2+i*z.shift
endfor
..z1+(n+1)*z.shift..z0+(n+2)*z.shift..z11+(n+1)*z.shift
for i=n step -1 until 0:
..z22+i*z.shift..z11+i*z.shift
endfor
..cycle) shifted z.shift2
;

draw p5;

for i=0 step 1 until n+1:
draw p0 shifted (i*z.shift) shifted z.shift2;
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0)) shifted (i*z.shift) shifted z.shift2;

draw point 2*(n+1) of p5{direction 2*(n+1) of p5}..tension 3..point 2*(n+3) of p5{direction 2*(n+3) of p5}..tension 3..cycle dashed evenly penhair;
endfor

label.top(btex $S$ etex, point 2*n-1 of p3);
label.top(btex $T$ etex, point 1 of p4);
label.bot(btex $S'$ etex, point 2*n+7 of p5);
endfig;

beginfig(124) 
save u,n;
u:=.3cm;
n:=3;

z.shift=(6,0)*u;
z0=origin;
z1=(3,2)*u;
z2=(6,.8)*u;
z11=(x1,-y1);
z22=(x2,-y2);

z.a=(2,.2)*u;
z.b=(4,.2)*u;

path p[];
p0=z.a{1,-1}..{1,1}z.b;

p10= (-.8)[point .2 of p0,point .8 of p0]..tension 1.5..(1.8)[point .2 of p0,point .8 of p0]..tension 1.5..cycle; 


for i=0 step 1 until n:
draw p0 shifted (i*z.shift);
draw ((subpath (.2,.8) of p0) reflectedabout(point .2 of p0,point .8 of p0)) shifted (i*z.shift);
draw p10 shifted (i*z.shift) penhair;
endfor

p1= z0..z1..z2
for i=1 step 1 until n-1:
..z1+i*z.shift..z2+i*z.shift
endfor
..z1+n*z.shift..z0+(n+1)*z.shift..z11+n*z.shift
for i=n-1 step -1 until 0:
..z22+i*z.shift..z11+i*z.shift
endfor
..cycle
;

draw p1;

p20= point .4 of p0{direction .4 of p0}..tension 1.8..point 4*n+3.3 of p1{direction 4*n+3.3 of p1}..tension 1.8..cycle;
p21= point .4 of p0 shifted (1*z.shift){direction .4 of p0}..tension 1.8..point 4*n+1.3 of p1{direction 4*n+1.3 of p1}..tension 1.8..cycle;
p22= point .4 of p0 shifted (2*z.shift){direction .4 of p0}..tension 1.8..point 4*n-.7 of p1{direction 4*n-.7 of p1}..tension 1.8..cycle;
p23= point .4 of p0 shifted (3*z.shift){direction .4 of p0}..tension 1.8..point 4*n-2.7 of p1{direction 4*n-2.7 of p1}..tension 1.8..cycle;

draw subpath (0,1) of p20 penhair dashed evenly;
draw subpath (1,2) of p20 penhair;
draw subpath (0,1) of p21 penhair dashed evenly;
draw subpath (1,2) of p21 penhair;
draw subpath (0,1) of p22 penhair dashed evenly;
draw subpath (1,2) of p22 penhair;
draw subpath (0,1) of p23 penhair dashed evenly;
draw subpath (1,2) of p23 penhair;


z.c=point 1.1 of p10;
z.d=point 1.9 of p10 shifted (1*z.shift);

for i=0 step 1 until n-1:
draw (z.c{1,-.4}..z.d) shifted (i*z.shift) penhair;
Dot z.c shifted (i*z.shift),z.d shifted (i*z.shift);
endfor

Dot 
subpath (1,2) of p20 intersectionpoint p10, 
subpath (1,2) of p21 intersectionpoint (p10 shifted (1*z.shift)),
subpath (1,2) of p22 intersectionpoint (p10 shifted (2*z.shift)),
subpath (1,2) of p23 intersectionpoint (p10 shifted (3*z.shift)),
;
endfig;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(4) 
save u;
u:=6cm;

z.a0=(0,1)*u;
z.a1=z.a0 rotated 360/27;
z.a2=z.a1 rotated 360/27;
z.a3=z.a2 rotated 360/27;
z.a4=z.a3 rotated 360/27;
z.a5=z.a4 rotated 360/27;
z.a6=z.a5 rotated 360/27;
z.a7=z.a6 rotated 360/27;
z.a8=z.a7 rotated 360/27;
z.a9=z.a8 rotated 360/27;
z.a10=z.a9 rotated 360/27;
z.a11=z.a10 rotated 360/27;
z.a12=z.a11 rotated 360/27;
z.a13=z.a12 rotated 360/27;
z.a14=z.a13 rotated 360/27;
z.a15=z.a14 rotated 360/27;
z.a16=z.a15 rotated 360/27;
z.a17=z.a16 rotated 360/27;
z.a18=z.a17 rotated 360/27;
z.a19=z.a18 rotated 360/27;
z.a20=z.a19 rotated 360/27;
z.a21=z.a20 rotated 360/27;
z.a22=z.a21 rotated 360/27;
z.a23=z.a22 rotated 360/27;
z.a24=z.a23 rotated 360/27;
z.a25=z.a24 rotated 360/27;
z.a26=z.a25 rotated 360/27;

draw z.a0--z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--z.a7--z.a8--z.a9--
z.a10--z.a11--z.a12--z.a13--z.a14--z.a15--z.a16--z.a17--z.a18--z.a19--
z.a20--z.a21--z.a22--z.a23--z.a24--z.a25--z.a26--cycle penbold;

draw z.a0--z.a13--z.a17--z.a24--z.a10--z.a14--z.a21--z.a7--z.a11--z.a18--z.a4--z.a8--z.a15--z.a1--z.a5--z.a12--z.a25--z.a2--z.a9--z.a22--z.a26--z.a6--z.a19--z.a23--z.a3--z.a16--z.a20--cycle penbold;

dOOOt z.a0,z.a1,z.a2,z.a3,z.a4,z.a5,z.a6,z.a7,z.a8,z.a9,
z.a10,z.a11,z.a12,z.a13,z.a14,z.a15,z.a16,z.a17,z.a18,z.a19,
z.a20,z.a21,z.a22,z.a23,z.a24,z.a25,z.a26;
endfig;

beginfig(5) 
save u;
u:=1cm;

z.a=(1,0)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;

draw origin--z.a penbold;
draw origin--z.b penbold;
draw origin--z.c penbold;
draw z.a--z.a-z.b penbold;
draw z.a--z.a-z.c penbold;
draw z.b--z.b-z.a penbold;
draw z.b--z.b-z.c penbold;
draw z.c--z.c-z.a penbold;
draw z.c--z.c-z.b penbold;
draw z.c-z.a--z.c-z.a+z.b penbold;
draw z.c-z.a--z.c-z.a+z.c penbold;
draw z.c-z.a+z.c..z.c-z.b..z.a-z.b..z.a-z.c..z.b-z.c..z.b-z.a..z.c-z.a+z.b..cycle penbold;

dOOOt origin,z.a,z.b,z.c,z.a-z.c,z.a-z.b,z.b-z.a,z.b-z.c,z.c-z.a,z.c-z.b,z.c-z.a+z.b,z.c-z.a+z.c;

endfig;

beginfig(6)% Folkman graph
save u, n;
u:=1.5cm;
n:=20;

z0=(0,1)*u;

for i=1 step 1 until 2*n:
z[i]=z0 rotated (i*360/n);
endfor

draw circle(origin,z0) penbold;


for i=0 step 1 until 4:
%z[4*i]{z[4*i]}..z[4*i+7]{-z[4*i+7]}..z[4*i+14]{z[4*i+14]}..z[4*i+9]{-z[4*i+9]}..

z.a[i]= z[4*i] zscaled (1,whatever)=z[4*i+7] zscaled (1,whatever);
z.aa[i]=z[4*i] rotatedabout(z.a[i], 30);
draw arc(z[4*i], z.aa[i],z[4*i+7]) penbold;

z.b[i]= z[4*i+7] zscaled (1,whatever)=z[4*i+14] zscaled (1,whatever);
z.bb[i]=z[4*i+7] rotatedabout(z.b[i], -10);
draw arc(z[4*i+7], z.bb[i],z[4*i+14]) penbold;

z.c[i]= z[4*i+14] zscaled (1,whatever)=z[4*i+9] zscaled (1,whatever);
z.cc[i]=z[4*i+14] rotatedabout(z.c[i], -10);
draw arc(z[4*i+14], z.cc[i],z[4*i+9]) penbold;

z.d[i]= z[4*i+9] zscaled (1,whatever)=z[4*i+4] zscaled (1,whatever);
z.dd[i]=z[4*i+9] rotatedabout(z.d[i], 10);
draw arc(z[4*i+9], z.dd[i],z[4*i+4]) penbold;
endfor


dOOOt
for i=1 step 1 until n:
z[i],
endfor;

endfig;

beginfig(7) %Grötzsch graph
save u, k;
u:=1cm;
k:=2;

z0=origin;

z1=(0,1)*u;
for i=2 step 1 until 20:
z[i]=z1 rotated ((i-1)*360/5);
endfor

for i=1 step 1 until 6:
draw z0--z[i] penbold;
endfor

draw
for i=1 step 1 until 5:
k*z[i]--
endfor
cycle penbold;

draw
for i=1 step 1 until 5:
z[2*i]--k*z[2*i+1]--
endfor
cycle penbold;

dOOOt z0,
for i=1 step 1 until 5:
z[i],k*z[i],
endfor;

endfig;
%фрагментов Татта, Граф Хершеля, Граф Грёча
end
