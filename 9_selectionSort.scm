;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a function called selectionSort that takes two arguments (a 'key' function, and a list of elements L for which that key function works) and returns the list of those elements sorted in ascending order according to that key.  Your function should use the minKey function from question 1 and the removeMinKey function from question 2.  SelectionSort should sort the list L recursively, by

1)removing the lowest element from the current list (using removeMinKey) 

2) then recursively sorting that list obtained in step 1

3) finally adding the lowest element of L on in the first position of that sorted list (because it is the element with the lowest key, that is where it goes in the sorted list). You use minKey to get this lowest element.

This function is short, but you need to think carefully about what it should do.  Plan it out first by considering the base case, the recursive case, what is left over, and how to deal with what is left over.

For example (selectionSort car '( ( 5 a) (2 b) (3 c))) should return the list ( (2 b) (3 c) (5 a)) (because car is the key function in this call, so the list is sorted in ascending order according to the numbers in the car's of those elements).

Since you probably need to use minKey and removeMinKey here, you will need to paste your code from Questions 1 and 2 into your answer here. 

For example:

Test	Output
(display (selectionSort car '( ( 5 a) (2 b) (3 c))))	((2 b) (3 c) (5 a)) 
(display (selectionSort (lambda(x) x) '(5 2 1 7)))	(1 2 5 7)
(display (selectionSort (lambda(x) x) '(5 3 2 1 7)))	(1 2 3 5 7)
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
(define selectionSort
	(lambda (key L)
		(cond	((null? (cdr L)) L)
				(#t
					(cons
						(minKey key L)
						(selectionSort key (removeMinKey key L))
					)
				)
		)
		)
		)
	


