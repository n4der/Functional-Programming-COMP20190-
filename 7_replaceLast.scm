;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a function replaceLast which takes three arguments called X, Y and L
(where L is a list) and returns a list equal to L but with the very last occurrence of X in
that list replaced by Y. Note: only the last occurrence of X must be replaced, not all
occurrences! You may find the scheme function (member E L) useful here: this returns true if E is in list L.


Remember to go through the algorithm design process: identify base case(s), recursive cases, how to deal with the `left over' bit, and so on.  Do this before jumping in to code.

Please try to resist cut-and-pasting the previous answer!  It will just make things harder for you, unless you've worked out the algorithm.

For example:

Test	Output
(display (replaceLast 1 3 '(1 2 1 0 )))	(1 2 3 0)
(display (replaceLast 1 3 '(1 2 3 0 )))	(3 2 3 0)

|#

(define replaceLast
	(lambda (X Y L)
		(cond                 
				((null? L)      '()     )
                      ((member X (cdr L)) (cons (car L) (replaceLast X Y (cdr L))))
                      ((not (member X (cdr L))) (cons Y (cdr L)))

          )

  )
  )
  

 


