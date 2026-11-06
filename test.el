;; -*- lexical-binding: t -*-
(setq var 1)

(defun getvar () var)

(getvar)

(let ((var 3))
  (message "the var: %d" (getvar)))


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

(setq z "ojeja")

(let (x
      (y "dupa")
      (z 'jaros))
  (message "x: %s\ny: %s\nz: %s" x y z))
(message "a tu z: %s" z)


     
(let ((x "Hello"))
  ((defun fun ()
     (message "this is x: "))
   (fun)))


(let ((x "hello"))
  (message "the x is %s" x))


(setq x 0)
(defun getx () x)
(setq x 1)
(getx)

(defun double (arg)
  "doubles the argument"
  (interactive "p")
  (message "result is %d" (* 2 arg)))

(SAVE-excursion (message "dupa"))
(save-excursion (append-to-buffer (current-buffer) 1 10))

(defun check-fill (arg)
  (if (> fill-column arg)
      (message "greater")
    (message "not greater")))



(defun append-to-buffer (buffer start end)
  "Append to specified buffer the text of the region.
It is inserted into that buffer before its point.


When calling from a program, give three arguments:
BUFFER (or buffer name), START and END.
START and END specify the portion of the current buffer to be copied."
  (interactive
   (list (read-buffer "Append to buffer: " (other-buffer
                                            (current-buffer) t))
         (region-beginning) (region-end)))

  (let ((oldbuf (current-buffer)))
    (save-excursion
      (let* ((append-to (get-buffer-create buffer))
             (windows (get-buffer-window-list append-to t t))
             point)
        (set-buffer append-to)
        (setq point (point))
        (barf-if-buffer-read-only)
        (insert-buffer-substring oldbuf start end)
        (dolist (window windows)
          (when (= (window-point window) point)
            (set-window-point window (point))))))))


(switch-to-buffer (other-buffer))

(defun fun (arg1)
  "ojojoj"
  (interactive "cPodaj znak: ")
  (message "twoj znak: %c" arg1))


(defun multiply-by-seven (number)
  "multiplies by * 7"
  (interactive "p")
  (message "result is %d" (* number 7)))


