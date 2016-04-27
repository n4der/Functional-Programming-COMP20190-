;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a recursive function called changingFractions that takes two positive integers as arguments (call them X and Y) and returns the sum of the fractions

X/Y+(X-1)/(Y-1) + (X-2)/(Y-2) ...

where both X and Y are going down by 1 in each fraction, and where the sum stops when either X is 0 or Y is 0 (whichever happens first).

So for example (changingFractions 3 4) would return the sum of

3/4 + 2/3 + 1/2 = 23/12

and (changingFractions 4 3) would return the sum of

4/3 + 3/2+ 2/1 = 29/6

Remember to plan your function by (1) thinking about the simple case (or cases), and (2) thinking about how the answers for a complex case can be produced from the answer for a simpler case.  Spend time designing the algorithm first, before writing your function.

Things to consider: what will change in the recursive call?  Can we make both X and Y smaller on the recursive call?  You may want to use the logical scheme functions called 'or' and 'and' in your code, which return true if either of its arguments are true (for or) or if both of its arguments are true (for and).  You don't have to use these if you don't want to, though.


For example:

Test	Output
(display (changingFractions 3 4))	23/12
(display(changingFractions 4 3))	29/6
(display (changingFractions 1 2))	1/2

|#

(define changingFractions (lambda (x y)
                    (cond (( or (= x 0) (= y 0)) 0 )
                    (else (+ (/ x y) (changingFractions (- x 1) (- y 1))))
                                                     
)))
