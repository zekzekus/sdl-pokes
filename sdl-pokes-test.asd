#|
  This file is a part of sdl-pokes project.
  Copyright (c) 2012 Zekeriya Koc (zekzekus@gmail.com)
|#

(in-package :cl-user)
(defpackage sdl-pokes-test-asd
  (:use :cl :asdf))
(in-package :sdl-pokes-test-asd)

(defsystem sdl-pokes-test
  :author "Zekeriya Koc"
  :license ""
  :depends-on (:sdl-pokes
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "sdl-pokes"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
