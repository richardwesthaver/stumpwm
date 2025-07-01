(in-package #:swm/lock)

(defvar *lock-password* nil
  "The password to unlock.")

(stumpwm:defcommand lock-screen () ()
  (unless *lock-password*
    (error "A password needs to be set. Please read the instructions."))
  (loop
    (if (string= (let ((stumpwm::*input-history* nil))
                   (stumpwm:read-one-line
                    (stumpwm:current-screen)
                    (format nil "The screen is locked.~%Enter password: ")
                    :password t))
                 *lock-password*)
        (return)
        (sleep (+ 2 (random 3.0))))))
