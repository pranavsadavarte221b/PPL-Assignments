(defun FactorialRecur()
(terpri)
(princ "Enter the value of number whose factorial has to be found:- ")
(setq no (read))
(terpri)
(when (= no 0)
	(princ "Factorial of 0 is 1.")
	(return-from FactorialRecur 1)
)
(setq f (factorial no))
(princ "The factorial of number is: ")
(terpri)
(write f)
)

(defun factorial (no) 
	"Finds factorial recursively"
	(when (= no 1)
		(return-from factorial no))

	(return-from factorial (* no (factorial (- no 1))))
)

(FactorialRecur)