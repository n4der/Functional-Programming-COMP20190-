;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: In this question you write a function that is the opposite of minKey.  This function is called removeMinKey: it takes two arguments, a key function and a list (just like minKey), and it returns the list L but with the element with the minimum key removed. If L was the list '( (2 shoes) (0 pants) (1 hat) ) then (removeMinKey car L) would return '( (2 shoes) (1 hat) ).  (Notice that car is the key function here, again: it picks out the car of each element in L as the key of that element).

This function can make use of the minKey function from question 1, if you like.  Cut and paste your answer from question 1 to do this.

If the list L has two elements that have the same lowest key value, the removeMinKey function should return the list but with the first of these elements removed.  So if L was the list '( (4 apples) (3 bananas) (1 lemon) (1 orange) ) then (removeMinKey car L) would return '( (4 apples) (3 bananas)  (1 orange) ), because (1 lemon) is the first-occurring element with the lowest key value.

Remember, first figure out the base cases and then the recursive calls.  There are two (or even three) base cases here.

For example:

Test	Output
(display (removeMinKey car '( (4 apples) (3 bananas) (1 lemon) (1 orange) ) ))	((4 apples) (3 bananas) (1 orange))
(display (removeMinKey (lambda(x) x) '( 4 1 2 3 1 ) ))	(4 2 3 1)

|#


(define minKey
	(lambda (key L)
		(cond	((null? (cdr L))
					(car L)
				)
				((< (key (car L)) (key (car (cdr L))))
					(minKey key (cons (car L) (cdr (cdr L))))
				)
				((> (key (car L)) (key (car (cdr L))))
					(minKey key (cdr L))
				)
				((equal? (key (car L)) (key (car (cdr L))))
					(minKey key (cons (car L) (cdr (cdr L))))
				)
		)
	)
)

(define removeFirst
	(lambda (A L)
		(cond	( (null? L) '())
				( (equal? A (car L))
					(removeFirst '() (cdr L))
				)
				( #t
					(cons
						(car L)
						(removeFirst A (cdr L))
					)
				)
		)
	)
)

(define removeMinKey
	(lambda (key L)
		(removeFirst (minKey key L) L)
	)
)

