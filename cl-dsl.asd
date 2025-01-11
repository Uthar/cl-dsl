;;;; cl-dsl.asd

(defsystem #:cl-dsl
  :serial t
  :version "0.1"
  :description "Easily define domain specific languages"
  :author "Alexander Popolitov <popolit@gmail.com>"
  :license "GPL"
  :components ((:file "package")
               (:file "cl-dsl"))
  :in-order-to ((test-op (test-op #:cl-dsl/tests))))

(defsystem #:cl-dsl/tests
  :description "Tests for CL-DSL."
  :licence "GPL"
  :depends-on (:cl-dsl :eos)
  :components ((:file "tests"))
  :perform (test-op (o c) (symbol-call :cl-dsl-tests :run-tests)))

