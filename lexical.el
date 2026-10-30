;;; -*- lexical-binding: t -*-

(defvar x)
(setq x 0)

(defun getx () x)

(setq x 1)

(let ((x 2))
  (message "the x is %d" (getx)))


(defun is-positive (number)
  (if (> number 0)
      (message "%d is positive" number)
    (message "%d in NOT positive" number)))

(is-positive 30)
