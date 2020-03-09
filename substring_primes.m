r = Table[Prime[n],{n,1,78498}] (* 78498 is pi(1,000,000). the actual number i should have used is 5761455, pi(100,000,000) but got confused *)

primeQ1 = (#//PrimeQ)(* ||#==1 *)&  (* uncommenting the OR will give the sequence of numbers in which every substring is noncomposite *)

subs = ReplaceList[ (* gives a list with every non empty substring of # *)
  Characters @ #, 
  {___, sub__, ___} :> StringJoin[sub]
]&

subprimeQ = If[
  (#//ToString//subs//ToExpression//DeleteDuplicates//Cases[Except[_?primeQ1]]//Length) > 0,
  False, (*This will save a step later on 16*)
  True
]&

Do[
  If[
    r[[n]]//subprimeQ,
    r[[n]]//Print
  ],
  {n,1,78498}
]