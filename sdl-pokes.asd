#|
  This file is a part of sdl-pokes project.
  Copyright (c) 2012 Zekeriya Koc (zekzekus@gmail.com)
|#

#|
  My experiments with lispbuilder-sdl library

  Author: Zekeriya Koc (zekzekus@gmail.com)
|#

(in-package :cl-user)
(defpackage sdl-pokes-asd
  (:use :cl :asdf))
(in-package :sdl-pokes-asd)

(defsystem sdl-pokes
  :version "0.1-SNAPSHOT"
  :author "Zekeriya Koc"
  :license ""
  :depends-on (:lispbuilder-sdl
               :cl-opengl)
  :components ((:module "src"
                :components
                ((:file "sdl-pokes"))))
  :description "My experiments with lispbuilder-sdl library"
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op sdl-pokes-test))))
