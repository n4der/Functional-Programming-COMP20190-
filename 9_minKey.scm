;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a function called minKey that takes two arguments, a function (called 'key') and a list L. 

  You can assume that the passed-in function  key will take an element of L as input, and return the key value for that element (an integer).  So if L was the list '( (4 apples) (3 bananas) (1 lemon) (1 orange) ), then (key '(4 apples)) would return 4, (key '(3 bananas)) would return 3, and so on (in this case key would simply be car).

The function you have to write is minKey.  What minKey should do is return the element of the list L which has the lowest key value: so that if L was the list '( (2 shoes) (0 pants) (1 hat) ) then (minKey car L) would return (0 pants).  (Notice that car is the key function here, again: it picks out the car of each element in L as the key of that element).

If the list L has two elements that have the same lowest key value, the minKey function should return the first of these elements (that is, the one that occurs first  in the list L).  So if L was the list '( (4 apples) (3 bananas) (1 lemon) (1 orange) ) then (minKey car L) would return (1 lemon) rather than (1 orange), because (1 lemon) is the first-occurring element with the lowest key value.

Remember, first figure out the base case(s) and then the recursive call.  The base cases here are a little tricky.  Notice that minKey is not defined if the list is empty (if there are no elements in the list then there is no lowest element in that list).  You need to identify a base case where you can actually give an answer.

The recursive call here is also slightly tricky.  Here's one way to think about it: if the key value of the first element of L is less than or equal to the minimum key value in the rest of the list, then we know the current first element is the first-occurring element with the lowest key value in the entire list: the current first element is the answer.  

For example:

Test	Output
(display (minKey car '((4 apples) (3 bananas) (1 lemon) (1 orange))))	(1 lemon)
(display (minKey (lambda(x) x) '(4 3 7 3 9 12)))	3

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

