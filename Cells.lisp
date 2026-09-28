;Construction 0
(format t "~a~%" '(ALICE BOB CHARLIE DEREK)) 
;Construction 1
(format t "~a~%" (cons 'ALICE (cons 'BOB (cons 'CHARLIE (cons 'DEREK nil)))))
;Construct 2
(format t "~a~%" (cons 'ALICE (cons 'BOB (cons (cons 'CHARLIE nil) (cons 'DEREK nil)))))
;Construct 3
(format t "~a~%" (cons 'ALICE (cons (cons 'BOB nil) (cons 'CHARLIE (cons 'DEREK (cons (cons 'ELIJAH nil) (cons 'FIONA nil)))))))
;Construct 4
(defparameter my-list nil)
(setf my-list (cons 'ALICE (cons (cons 'BOB nil) (cons 'CHARLIE (cons 'DEREK (cons (cons 'ELIJAH nil) (cons 'FIONA nil)))))))
(defun get-alice (my-list) "Returns ALICE from my-list." (car my-list))
(format t "~a~%" (get-alice my-list))
;Getters
(defun get-charlie (my-list) "Returns CHARLIE from my-list." (car (cdr (cdr my-list))))
(format t "~a~%" (get-charlie my-list))