;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: The 'power set' of a set S is the list of all subsets of S (including the empty set, and the set S itself).  If we take a list '(a b) to represent a set, then (powerset '(a b) ) is the list  '( () (b) (a) (a b) ).

(strictly speaking,  any other ordering of this list is also the powerset: but for this question only this ordering is correct).    Write a recursive function (powerset L) that gets the power set of L.  For L='(a b), the function should return the powerset of '(a b) in exactly the order shown above.

A hint: (powerset '() ) is ' ( () ), because the list of all subsets of the empty list '() (including itself), is simply a list  containing '() as its only element.

Another hint: notice that (powerset '(b) ) is '( () (b) ).   Also notice that (powerset '(a b)) is made up of  (powerset '(b)) appended onto (powerset '(b) ) with 'a consed onto every element.  You can make this second part of the powerset by using your function consToAll from question 1.  You might want to use a let here to hold the answer from the recursive call (or use a helper function to deal with that answer), but you don't need to: its ok to just do the recursive call twice, if you like.

When entering your code for the test cases below you will need to include both your definition for consToAll and your definition for powerset here!  You will need to copy your definition for consToAll from the previous question, and paste it here, for your powerset function to work.

For example:

Test	Output
(display (powerset '(a b)))	(() (b) (a) (a b))
(display (powerset '(a b c)))	(() (c) (b) (b c) (a) (a c) (a b) (a b c))

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


(define powerset
	(lambda (L)
		(cond                 
				( (null? L)                                 '(())              )
				 ( #t                          
				 
			
			        (append
			                 (powerset (cdr L))
			                 (consToAll (car L) (powerset (cdr L)) )
			                 
			        )
			
			

            )
        )
     )
  )


  

