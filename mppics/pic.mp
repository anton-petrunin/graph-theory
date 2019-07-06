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

beginfig(1) 
save u;
u:=.5cm;

draw (-4.3,2)*u--(4.3,2)*u penbold;
draw (0,1)*u--(0,3)*u penbold;
draw (1,1)*u--(1,3)*u penbold;
draw (2,1)*u--(2,3)*u penbold;
draw (3,1)*u--(3,3)*u penbold;
draw (4,1)*u--(4,3)*u penbold;

draw (-4.3,-2)*u--(4.3,-2)*u penbold;
draw (0,-2)*u--(0,-1)*u penbold;
draw (1,-3)*u--(1,-1)*u penbold;
draw (2,-3)*u--(2,-1)*u penbold;
draw (3,-3)*u--(3,-1)*u penbold;
draw (4,-3)*u--(4,-1)*u penbold;

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

beginfig(2) 
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

beginfig(6) 
save u;
u:=.5cm;

z.shift=(7,0)*u;

z0=(0,0)*u;
z1=(1,0)*u;
z2=(2,0)*u;
z3=(3,0)*u;
z4=(4,0)*u;
z5=(5,0)*u;
z6=(6,0)*u;

save p,q;
path p[];
path q[];

p0=z0{1,-.5}..{1,.5}z1;
p1=p0 shifted z1;
p2=p0 shifted z2;
p3=p0 shifted z3;
p4=p0 shifted z4;
p5=p0 shifted z5;

draw p0 pensemibold;
drawarrow subpath (0,.6) of p0 pensemibold;
draw p1 pensemibold;
drawarrow subpath (0,.6) of p1 pensemibold;
draw p2 pensemibold;
drawarrow subpath (0,.6) of p2 pensemibold;
draw p3 pensemibold;
drawarrow subpath (0,.6) of p3 pensemibold;
draw p4 pensemibold;
drawarrow subpath (0,.6) of p4 pensemibold;
draw p5 pensemibold;
drawarrow subpath (0,.6) of p5 pensemibold;

q0=z0{.3,1}..{.3,-1}z5;
q1=z5{-1,.4}..{-1,-.4}z4;
q2=z4{-.3,1}..{-.3,-1}z2;
q3=z2{-1,.4}..{-1,-.4}z1;
q4=z1{.3,-1}..{.3,1}z6;

draw q0;
drawarrow subpath (0,.6) of q0;
draw q1;
drawarrow subpath (0,.6) of q1;
draw q2;
drawarrow subpath (0,.6) of q2;
draw q3;
drawarrow subpath (0,.6) of q3;
draw q4;
drawarrow subpath (0,.6) of q4;

dOt z0,z1,z2,z3,z4,z5,z6;

draw p0 shifted z.shift pensemibold;
drawarrow subpath (0,.6) of p0 shifted z.shift pensemibold;

draw p2 shifted z.shift pensemibold;
drawarrow subpath (0,.6) of p2 shifted z.shift pensemibold;
draw p3 shifted z.shift pensemibold;
drawarrow subpath (0,.6) of p3 shifted z.shift pensemibold;

draw p5 shifted z.shift pensemibold;
drawarrow subpath (0,.6) of p5 shifted z.shift pensemibold;

draw q0 shifted z.shift;
drawarrow subpath (0,.6) of q0 shifted z.shift;
draw q2 shifted z.shift;
drawarrow subpath (0,.6) of q2 shifted z.shift;
draw q4 shifted z.shift;
drawarrow subpath (0,.6) of q4 shifted z.shift;

dOt z0+z.shift,z1+z.shift,z2+z.shift,z3+z.shift,z4+z.shift,z5+z.shift,z6+z.shift;


draw p0 shifted (2*z.shift) pensemibold;
drawarrow subpath (0,.6) of p0 shifted (2*z.shift) pensemibold;

draw p5 shifted (2*z.shift) pensemibold;
drawarrow subpath (0,.6) of p5 shifted (2*z.shift) pensemibold;

draw q0 shifted (2*z.shift);
drawarrow subpath (0,.6) of q0 shifted (2*z.shift);
draw q4 shifted (2*z.shift);
drawarrow subpath (0,.6) of q4 shifted (2*z.shift);

dOt z0+(2*z.shift),z1+(2*z.shift),z2+(2*z.shift),z3+(2*z.shift),z4+(2*z.shift),z5+(2*z.shift),z6+(2*z.shift);

label.llft(btex $s$ etex, z0);
label.urt(btex $t$ etex, z6);
label.llft(btex $s$ etex, z0+z.shift);
label.urt(btex $t$ etex, z6+z.shift);
label.llft(btex $s$ etex, z0+(2*z.shift));
label.urt(btex $t$ etex, z6+(2*z.shift));
endfig;
end
