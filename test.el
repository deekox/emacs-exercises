









(message "point-max is %d\nfilename: %s\nbuffer-name: %s\nsurrent point position: %d"
	 (point-max)
	 (buffer-file-name)
	 (buffer-name)
	 (point))




(message "dupa")

(defun fun (arg)
  "this is my first function"
  (message "Hello World %s" arg))
	 
------------v
(fun "dupa")
(Mark-whole-buffer)

(defun empty ()  "hello World")
(message "hello %s" (empty))

(defun mul-by-7 (number)
  "multiply by 7"
  (interactive "p")
  (message "the result is %d" (* number 7)))

(mul-by-7 (+ 2 2))

(apropos "fun")

(defun do () "Hi")

(defun msg () (message "Hi"))
(msg)

(defun print-3 (arg)
  "print provided char 3 times"
  (interactive "cWhat char: ")
  (message "%c%c%c" arg arg arg))
