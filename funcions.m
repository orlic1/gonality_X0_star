fixedpointsALinvsmall:=function(m, n)

if n eq 3 then
         q:=Factorization(Numerator(m/3));
         nu_3:=2;
         for d in [1 .. #q] do
           if q[d][1] eq 2 then
               if q[d][2] gt 2 then
                nu_3:=0;
               else
               end if;
           else
             nu_3:=nu_3*(1+LegendreSymbol(-n,q[d][1]));
           end if;
         end for;
         return nu_3;
else
         if n eq 1 then
         else
             if n eq 2 then
               q:=PrimeDivisors(Numerator(m/n));
               nu_2factorminus1:=1;
               nu_2factorminus2:=1;
               for d in [1 .. #q] do
                  nu_2factorminus1:=nu_2factorminus1*(1+LegendreSymbol(-1,q[d]));
                  nu_2factorminus2:=nu_2factorminus2*(1+LegendreSymbol(-2,q[d]));
               end for;
               return nu_2factorminus1+nu_2factorminus2;
             else
                if n eq 4 then
                  q:=PrimeDivisors(Numerator(m/n));
                  l:=Divisors(Numerator(m/n));
                  nu_4factorminus1:=1; nu_4sumeuler:=0;
                  for d in [1..#q] do
                           nu_4factorminus1:=nu_4factorminus1*(1+LegendreSymbol(-1,q[d]));
                  end for;
                  for dd in [1..#l] do
                     ss:=Numerator(m/(n*l[dd]));
                     ssh:=GCD(l[dd],ss);
                     nu_4sumeuler:=nu_4sumeuler+EulerPhi(ssh);
                  end for;
                  return nu_4factorminus1+nu_4sumeuler;
                end if;
             end if;
          end if;
end if;

end function;



fixedpointsALinvbig:=function(m, n)

PD:=PrimeDivisors(Numerator(m/n)); D:=Divisors(Numerator(m/n));

n_mod2:=n mod 2; n_mod4:=n mod 4;


if n_mod2 eq 1 then
      if n_mod4 eq 3 then
           if 2 in PD then
               if 8 in D then
nu_nodd3mod4_8:=2*(ClassNumber(-n)+ClassNumber(-4*n))*(1+KroneckerSymbol(-n,2));
                     if #PD eq 1 then
                     else
                         for p1 in PD do
                          p1_mod2:=p1 mod 2;
                          if p1_mod2 eq 1 then
nu_nodd3mod4_8:=nu_nodd3mod4_8*(1+LegendreSymbol(-n,p1));
                          end if;
                         end for;
                     end if;
                     return nu_nodd3mod4_8;
               else
                   if 4 in D then
                      nu_nodd3mod4_4:=
(2*ClassNumber(-4*n)+2*(1+KroneckerSymbol(-n,2))*ClassNumber(-n));
                      if #PD eq 1 then
                        return nu_nodd3mod4_4;
                      else
                        for p2 in PD do
                          p2_mod2:=p2 mod 2;
                            if p2_mod2 eq 1 then
nu_nodd3mod4_4:=nu_nodd3mod4_4*(1+LegendreSymbol(-n,p2));
                            end if;
                         end for;
                         return nu_nodd3mod4_4;
                      end if;
                   else
nu_nodd3mod4_2:=ClassNumber(-4*n)+3*ClassNumber(-n);
                         if #PD eq 1 then
                            return nu_nodd3mod4_2;
                         else
                            for p3 in PD do
                               p3_mod2:=p3 mod 2;
                               if p3_mod2 eq 1 then
nu_nodd3mod4_2:=nu_nodd3mod4_2*(1+LegendreSymbol(-n,p3));
                               end if;
                             end for;
                             return nu_nodd3mod4_2;
                         end if;
                   end if;
               end if;
           else
               if #PD eq 0 then
nu_nodd3mod4_no2:=ClassNumber(-n)+ClassNumber(-4*n);
                 return nu_nodd3mod4_no2;
               else
nu_nodd3mod4_no2:=ClassNumber(-n)+ClassNumber(-4*n);
                  for j in [1..#PD] do
nu_nodd3mod4_no2:=nu_nodd3mod4_no2*(1+LegendreSymbol(-n,PD[j]));
                  end for;
                  return nu_nodd3mod4_no2;
               end if;
           end if;
      else
           if #PD eq 0 then
              nu_nodd1mod4:=ClassNumber(-4*n);
              return nu_nodd1mod4;
           else
              if 2 in PD then
                   if 4 in D then
                     return 0;
                   else
                      nu_nodd1mod4_2:=ClassNumber(-4*n);
                      PD2:=PrimeDivisors(Numerator(m/(2*n)));
                       for k in [1..#PD2] do
                        nu_nodd1mod4_2:=nu_nodd1mod4_2*(1+LegendreSymbol(-n,PD2[k]));
                       end for;
                    return nu_nodd1mod4_2;
                   end if;
              else
                  nu_nodd1mod4_no2:=ClassNumber(-4*n);
                     for i in [1 .. #PD] do
                      nu_nodd1mod4_no2:=nu_nodd1mod4_no2*(1+LegendreSymbol(-n,PD[i]));
                     end for;
                   return nu_nodd1mod4_no2;
              end if;
           end if;
      end if;
  else
     nu_neven:=ClassNumber(-4*n);
     if #PD eq 0 then
       return nu_neven;
     else
       for u in [1 .. #PD] do
         nu_neven:=nu_neven*(1+LegendreSymbol(-n,PD[u]));
       end for;
       return nu_neven;
     end if;
  end if;
end function;


generexoN:=function(b)

   m:=PrimeDivisors(b);
   l:=Divisors(b);
   factor_b:=Factorization(b);
  psiEulerindex:=b;
  order4elliptic:=1;
  order3elliptic:=1;
  cusps:=0;

  for x in [1 .. #m] do
  psiEulerindex:=psiEulerindex*(1+1/m[x]);
  end for;

    for y in [1..#m] do
      if factor_b[y][1] eq 2 then
          order3elliptic:=0;
         if factor_b[y][2] gt 1 then
           order4elliptic:=0;
         end if;
      else
         if factor_b[y][1] eq 3 then
             if factor_b[y][2] gt 1 then
               order3elliptic:=0;
               order4elliptic:=order4elliptic*(1+LegendreSymbol(-1,factor_b[y][1]));
             else
               order3elliptic:=order3elliptic*(1+LegendreSymbol(-3,factor_b[y][1]));
               order4elliptic:=order4elliptic*(1+LegendreSymbol(-1,factor_b[y][1]));
             end if;
         else
           order4elliptic:=order4elliptic*(1+LegendreSymbol(-1,factor_b[y][1]));
           order3elliptic:=order3elliptic*(1+LegendreSymbol(-3,factor_b[y][1]));
         end if;
      end if;
    end for;

  for a in [1 .. #l] do
    n1:=Numerator(b/l[a]);
    t1:=GCD(l[a],n1);
    cusps:=cusps+EulerPhi(t1);
   end for;

genus:=1+(psiEulerindex/12)-(order4elliptic/4)-(order3elliptic/3)-(cusps/2);
return genus;
  end function;


genereX0NQuotientWN:=function(N,WN,t);

FixedpointsALinvolutions:=[* *]; vv:=0; L:=Divisors(N);


for i in [1..#WN] do
    u:=GCD(WN[i],Numerator(N/WN[i]));
    if WN[i] in L then
    else
    vv:=1;
    end if;

    if u eq 1 then
       if WN[i] eq 1 then
       else
          if WN[i] gt 4 then
             nu_Ddi:=fixedpointsALinvbig(N,WN[i]);
             FixedpointsALinvolutions:=Append(FixedpointsALinvolutions,nu_Ddi);
          else
             nu_Ddi:=fixedpointsALinvsmall(N,WN[i]);
             FixedpointsALinvolutions:=Append(FixedpointsALinvolutions,nu_Ddi);
          end if;
       end if;
     else
      vv:=1;
     end if;

end for;

CountAllFixedPointsALinvolutions:=0;

for u in FixedpointsALinvolutions do
  CountAllFixedPointsALinvolutions:=CountAllFixedPointsALinvolutions+u;
end for; 
if vv eq 0 then
  genusxoN:=generexoN(N);
  genusxoNQuotient:=1+t^(-1)*(genusxoN-1-(CountAllFixedPointsALinvolutions/2));
else
  genusxoNQuotient:=-1;
  end if;
return genusxoNQuotient;

end function;


JacobianDecompositionQuotientX0NWN:=function(n,WN,length,t); N:=n;
AtkinLehnerfix:=WN;
Involutions:=#AtkinLehnerfix; 
L:=[**];
F:=[**];
Level:=[* *]; 
ALaction:=[**];

Pd:=PrimeDivisors(N); mt:=[**];

for prime in Pd do
      op:=Valuation(N,prime);
      primepower:=Gcd(prime^(op), N);

      mt:=Append(mt, primepower);
end for;


Nd:=Divisors(N); countergenus:=0;

for j in Nd do

      MS:=NewformDecomposition(CuspidalSubspace(ModularSymbols(j,2,1)));

       m:=#MS;

       M:=PrimeDivisors(j);

       Nr:=Numerator(N/j);

       divi:=GCD(j,Nr);

       jj:=Numerator(j/divi);

       Mm:=PrimeDivisors(jj);

       Nn:=Divisors(jj);

       mm:=#Mm;

       mn:=#Nn;

       D:=Factorization(jj);

         for i in [1..m] do

             f:=Eigenform(MS[i],length);

             f2:=MS[i];

             K:=Parent(Coefficient(f,3)); d:=Dimension(MS[i]);

             X:=IdentityMatrix(Rationals(), d);

             u:=0;
                for jo in [1..Involutions] do
                  dd:=GCD(j,AtkinLehnerfix[jo]);

                 if dd eq AtkinLehnerfix[jo] then

                   Y:=AtkinLehner(MS[i],dd);

                    if Y eq X then

                    else

                    u:=1;

                    end if;

                 else

                    if dd eq 1 then

                    else

                    end if;

                 end if;

               end for;

          if u eq 0 then
             ALactionf:=[**];
             for i in [1..#Pd] do
               if GCD(mt[i],j) eq mt[i] then

                ALactionf:=Append(ALactionf, [*AtkinLehner(f2,mt[i]),mt[i]*]);


               end if;
               ALaction:=Append(ALaction,[*f,j,ALactionf*]);
             end for;


          L:=Append(L,f);


          F:=Append(F,K);

uu:=#Basis(K);

countergenus:=countergenus+uu;

          Level:=Append(Level,j);
                else
                 end if;
       end for;

   end for;
genuscorrect:=genereX0NQuotientWN(N,WN,t);

if genuscorrect eq countergenus then

  CorrectJacobian:=11111111111111;

  else

  CorrectJacobian:=0000000000000;

  end if;
M:=[*CorrectJacobian,L,F,Level, ALaction*];

return M;

end function;

FpnpointsforQuotientcurveX0NWN:=function(N,prime,JacDecomp,FieldDefinition,bound); 
L:=JacDecomp; 
p:=prime; 
F:=FieldDefinition;
felm:=# F; 
bod:=bound;


C:=ComplexField(100); R<x>:=PolynomialRing(C); pj:=0*x+1; Roo:=[**]; 
for j in [1 .. felm] do

   if Degree(F[j]) eq 1 then

       cc:=Roots(x^2-Coefficient(L[j],p)*x+p,C);

       Roo:=Append(Roo,cc);

      pj:=pj*(x^2-Coefficient(L[j],p)*x+p);

   else

    dd:=Degree(F[j]);

    u:=Roots(DefiningPolynomial(F[j]),C); uu:= # u;

       for m in [1 .. uu] do

       f := hom< F[j] -> C | u[m][1]>;

       cc2:=Roots(x^2-f(Coefficient(L[j],p))*x+p,C);

       Roo:=Append(Roo,cc2);

       pj:=pj*(x^2-f(Coefficient(L[j],p))*x+p);

       end for;

   end if;

end for; 
pjdegree:=Degree(pj); 

PR:=[* *];

  d2:=Degree(pj);

long:= # Roo;





for nn in [1 .. bod] do s:=0;

   for i in [1 .. long] do

     for j in [1..2] do

      if Roo[i][j][2] gt 0 then

s:=s+(Roo[i][j][2])*(Roo[i][j][1])^(nn) ;

   else

   s:=s;

   end if;

end for; 
end for;
 a:=Round(1+p^(nn)-s); 
 PR:=Append(PR,a); 
 end for;

return PR;
end function;


MapdegreedtoEC:=function(prime,degree,bound,apCoefficientEC,FpNpointsModularCurveList)

p:=prime; a3:=apCoefficientEC; bod:=bound; deg:=degree;

PR2:=[* *];

C:=ComplexField(100); R<x>:=PolynomialRing(C);
cearrels:=Roots(x^2-a3*x+p,C);



for i in [1..bod] do



b:=deg*(p^i+1-Round(cearrels[1][1]^i+ p^i/cearrels[1][1]^i));

PR2:=Append(PR2,b); end for;

el:=#FpNpointsModularCurveList; tt:=Min(el,bod);

NoDegreeMaptosuchEC:=[**];

for k in [1..tt] do

difference:=(FpNpointsModularCurveList[k])-(PR2[k]);

Rr:=RealField(10); difference:=Rr!difference;

case Sign(difference):
 when 1:
 NoDegreeMaptosuchEC:=Append(NoDegreeMaptosuchEC,[*difference,p^k*]);
 
 end case;




end for;

return NoDegreeMaptosuchEC;

end function;