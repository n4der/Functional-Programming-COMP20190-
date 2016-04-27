
;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: In this question and the next, you will complete the code for mergeSort that I described in lectures on Wednesday.  The first function you need to create is called `merge'.  Merge takes a key function and two SORTED lists (A and B) and merges them together to produce a fully sorted list containining every element from those two argument lists.  So for example, if you use car as the key function, (merge car '((1 apple) (3 lemons)) '((2 oranges) (4 bananas))) would return '((1 apple) (2 oranges) (3 lemons) (4 bananas)).

This function reaches its base case when either list A or list B is empty.  What is returned if A is empty? What is returned if B is empty? Remember, every element in all lists  must be included in the overall returned answer! 

On each recursive cycle, the function compares the key values of (car A) and (car B): whichever one is lowest must go first in the answer, and so the lowest one is cons'd on to the recursive call.  The arguments to the recursive call have to change on each cycle: if (car A) has the lowest key value, how should the arguments change in the recursive call?

A reminder: merge takes a function as its 'key' argument.  To get the key for a given element in a list, you apply that key function to the element: so (key (car A)) gives the key value of the first element in A.

For example:

Test	Output
(display (merge car '(( 2 apples) (4 bananas)) '((1 orange) (5 lemons))))	((1 orange) (2 apples) (4 bananas) (5 lemons))
(display (merge (lambda(x) x) '(2 4 5) '( 1 2 3 6)))	(1 2 2 3 4 5 6)

|#

(define merge
    (lambda (key A B)
  (cond
        ((null? A) B)
        ((null? B) A)
        ((<= ( key (car A)) ( key (car B))) (cons  (car A) (merge key (cdr A) B)))
        ((> ( key (car A)) ( key (car B))) (cons (car B) (merge key (cdr B) A)))

        )


      )

  )
