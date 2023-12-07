(defun recorre(lista)
    (format t "~A~> ~% ~A" (car lista))
    (if (endp lista)
        (recorre (cdr lista))
    )
)

(recorre '(1 2 3 4 5))