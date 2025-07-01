(in-package #:stumpwm-tests)

(deftest test-directory-pathname-p ()
  (is (stumpwm::directory-pathname-p "/")))

(deftest test-ensure-directory-pathname ()
  (isequal (pathname-as-directory "/") #P"/")
  (isequal (pathname-as-directory "/test.lisp") #P"/test.lisp/"))
