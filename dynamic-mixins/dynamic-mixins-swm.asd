(defsystem :dynamic-mixins-swm
  :description "Simple dynamic class mixing without manual permutations"
  :author "Ryan Pavlik"
  :license "BSD-2-Clause"
  :version "0.0"
  :depends-on (:std)
  :components
  ((:file "package")
   (:file "sorting")
   (:file "dynamic-mixins")))
