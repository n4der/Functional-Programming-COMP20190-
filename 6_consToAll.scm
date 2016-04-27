;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a recursive function (consToAll A L) that takes two arguments:an element A and a list L, and conses A to every element in L.

If L is empty (null), consToAll returns an empty list.

If L is, for example, '(  (1) (2) (3) ) then (consToAll 'a L) returns '( (a 1) (a 2) (a 3) ).

Note that Question 2 will need to use consToAll, so make sure you get it working!

For example:

Test	Output
(display (consToAll 'a '((1) (2) (3))))	((a 1) (a 2) (a 3)))

|#

(define consToAll
	(lambda (A L)
		(cond                 
				( (null? L)                                 '()              )
				 ( #t                           (cons (cons  A  (car L)) ( consToAll A (cdr L ) ))
				 
			



     )
  )
)
)

