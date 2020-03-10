n = 78498; (* 78498 is pi(1,000,000). The actual number I should have used is 5761455, pi(100,000,000), but got confused *)

primeQ1 = (#//PrimeQ)(* ||#==1 *)&  (* Uncommenting the OR will give the sequence of numbers in which every substring is noncomposite *)

subs = ReplaceList[ (* Gives a list with every non empty substring of # *)
  Characters @ #, 
  {___, sub__, ___} :> StringJoin[sub]
]&

subprimeQ = !TrueQ[(#//ToString//subs//ToExpression//DeleteDuplicates//Cases[Except[_?primeQ1]]//Length) > 0]&

Do[
  If[
    i//Prime//subprimeQ,
    i//Prime//Print
  ],
  {i,1,n}
]
