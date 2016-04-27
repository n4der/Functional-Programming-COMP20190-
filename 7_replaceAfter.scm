;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a function replaceAfter which takes four arguments called A, X, Y and L (where L is a list) and returns a list equal to L but with every occurrence of X THAT IMMEDIATELY FOLLOWS an A being replaced by Y.  Note that not all occurrences of X are replaced by Y: only those occurrences that come straight after an A are replaced.  Also note that not just one occurrence of X is replaced: EVERY occurrence that follows an A is replaced.

For example:

Test	Output
(display (replaceAfter 'a 'x 'y '(x b x a x a x)))	(x b x a y a y)
(display (replaceAfter 5 1 3 '(5 2 1 5 1 5 4 1)))	(5 2 1 5 3 5 4 1)

|#

(define replaceAfter
	(lambda (A X Y L)
		(cond                 
				((null? L)      '()     )
                   ( (and (equal?  A (car L)) (equal?  X (car (cdr L))))
                     (cons (car L) (cons Y (replaceAfter A X Y (cdr (cdr L)))))
                     )

                           (#t

                            (cons (car L) (replaceAfter A X Y (cdr L)))
          )

  )
  )
  )




