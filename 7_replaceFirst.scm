;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a function replaceFirst which takes three arguments called X, Y and L
(where L is a list) and returns a list equal to L but with the very first occurrence of X in
that list replaced by Y. Note: only the first occurrence of X must be replaced, not all
occurrences!


Remember to go through the algorithm design process: identify base case(s), recursive cases, how to deal with the `left over' bit, and so on.  Do this before jumping in to code.

For example:

Test	Output
(display (replaceFirst 1 3 '(3 2 1 0 )))	(3 2 3 0)
(display (replaceFirst 1 3 '(0 1 2 3 2 1 0 )))	(0 3 2 3 2 1 0)

|#


(define replaceFirst
	(lambda (X Y L)
		(cond                 
				( (null? L)  '())
				((equal? X (car L) )  (cons Y  (cdr L)))
				
                                ( #t
                                  (cons (car L) (replaceFirst X Y (cdr L)))
                                  )

                                )
          

          )

  )
		
