# Proof of the Substring Primes Problem

***Hypothesis:*** There are finitely many numbers in which every substring is prime

***Lemma:*** given a list of n integers there is always a sublist that adds up to a multiple of n (the proof of this is left for the reader)

***Theorem:*** every number with nine or more digits has a span of nine digits. These spans can be thought of as a list of nine numbers between 0 and 9. Now take the previous lemma and do n=9. It follows that every list of 9 numbers between 0 and 9 has a sublist that adds up to a multiple of 9, which is the test for divisibility by 9! Therefore every number with nine or more digits will have a substring of digits which add up to a multiple of 9. QED

What I like about this proof is that it uses a cool theorem (here used as a lemma) and is generalisable to different bases! Just take the case n-1 for base n.
