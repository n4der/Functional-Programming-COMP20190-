;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a recursive function called 'sum' that takes 
a list of numbers L and adds all numbers in that list.   
For example,
(sum '(1 2 3))
should give 6.  Your function has to be recursive! 

I know you can easily sum all the numbers in the list by just applying
plus to the list; e.g. (+ 1 2 3).  Don't do that.

Remember to plan your function by 
(1) thinking about the simple case, and 
(2) thinking about how the answers for a 
complex case can be produced from the 
answer for a simpler case.

A hint: a list L is empty if the boolean test (null? L) returns true; 
if (null? L) returns false, the list is not empty.  If your function is 
asked to sum the numbers in an empty list, the answer must be 0  
(since the sum of no numbers equals 0).


For example:

Test	Output
(display (sum '(1 2 3)))	6

|#


(define sum 
    (lambda (L)
    
    (cond    (  (null? L)                   0                                )
             (      #t          ( +  (car L) (sum(cdr L)) )                  )
               
    )
 )
)
