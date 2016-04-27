;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: For a list L, (car L) gives the first element in the list, 
(car (cdr L)) gives the second element in the list 
(because (cdr L) is the list with the first element removed), 
(car (cdr (cdr L))) gives the third element in the list, and so on.

Write a recursive function (getElement N L) that takes a number N
and a list L and returns the Nth element in the list L.  Here are 
some examples of (getElement N L):

>(getElement 1 '(a b c))
a
>(getElement 2 '(a b c))
b
 
In writing your function, you can assume that N will always 
be 1 or greater, and that N will never be greater than the 
number of elements in the list.  

 
Some things to consider:
(getElement 2 '(a b c)) gives the same answer as (getElement 1 '(b c) )
The simple case for a question like this happens, not when 
the list L is empty, but when the number N is equal to <what?>

For example:

Test	Output
(display (getElement 3 '(apple banana car donut elephant)))	car

|#

(define getElement

    (lambda (n l)
        (cond      ((null? l)    '()           )
                   ( ( = n 1)  (car l)                   )
                   ( (> n  1 )  (getElement(- n 1)  (cdr l)   )                                )
                   
        )
     )
   )

