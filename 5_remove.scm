;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a function (remove A L) that removes EVERY occurrence of A in the list L.  Your function must be recursive, and will have one stopping condition and two recursive conditions.  Your function does not need to remove occurrences of A that are inside sublists of L: only occurences of A that are at the 'top level' need to be removed.

For example:

Test	Output
(display (remove 'a '(a b a c a (a a a))))	(b c (a a a))
(display (remove 1 '(1 2 1 3 1 4 1)))	(2 3 4)

|#

(define remove

(lambda (A L)
  (cond ((null? L)       '())
        ((equal? A (car L)) (remove A (cdr L)))
        (else
         (cons (car L)
               (remove A (cdr L)))))) )

