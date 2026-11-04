;;; -*- lexical-binding: t -*-

(message "LB: %S" lexical-binding)

(defun compare (left right)
  (if (= left right)
      (message "%d and %d are same" left right)
    (if (> left right)
	(message "%d > %d" left right)
      (message "%d < %d" left right))))

  
(compare 3 3)


(defun are-you-marek (name)
  (if (equal name "marek")
      (message "witam prezesa!!")
    (message "spadaj leszczu")))

(are-you-marek "marcin")

(defun are-same (l r)
  (if (equal l r)
      (message "same")))

(are-same 3 3)

