;;; Nader Asiri 
;;; COMP20190 - Functional Programming
#|  Q: Write a recursive function called reciprocals that takes as its argument an integer N and returns as its answer the sum of all the fractions 1/N + 1/(N-1) + ... 1/2 + 1/1.  You can assume that the integer N is going to be greater than 0.

Remember to plan your function by

(1) thinking about the simple case,

(2) thinking about how the answer for a complex case can be produced
from the answer for a simpler case.

For example:

Test	Output
(display (reciprocals 4))	25/12

|#

(define reciprocals (lambda(x)
                        (cond ((= x 1) 1)
                              ((> x 1) (+ (/ 1 x ) (reciprocals (- x 1))))
                        )
)
)
