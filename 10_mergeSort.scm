;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: One algorithm for sorting is called mergesort.  The general approach in mergesort is to take as input a list L and a key function, divide the list L into two sublists, recursively sort each sublist (using mergesort on each), and then merge the two sorted lists to get the overall required result.  Your task in this question is to write mergesort.  You can use your merge function from the previous question.  You can also use the following functions to divide a list into two sublists. 

You will also need a function that divides a list into two sublists.  You can use the file "divideListInTwo" to do this: it is given on the course page, here: you'll need to copy and paste this into your answer!

Remember, when writing mergesort, go through the steps in the recursive algorithm design process, identifying base cases and so on.

For example:

Test	Output
(display (mergeSort car '((4 a) (3 b) (1 c) (2 d))))	((1 c) (2 d) (3 b) (4 a))
(display (mergeSort (lambda(x) x) '(5 2 1 5 6 7)))	(1 2 5 5 6 7)

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


(define firstHalf
   (lambda(L)
      (cond ( (null? L)            '()                                             )
                ( (null? (cdr L))     L                                            )
                ( #t (cons (car L)   (firstHalf (cdr (cdr L))))        )
       )
    )
)

(define secondHalf
   (lambda(L)
      (firstHalf (cdr L))
   )
)

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


(define mergeSort
    (lambda (key L)
        (cond 
        (( or (null? L)     (null? (cdr L))) L   )
        (#t (merge key (selectionSort key (firstHalf L)) (selectionSort key (secondHalf L))))
        
        
        )
        
        
  )
          )
            
        


