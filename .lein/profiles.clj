{:user {
        :plugins [[lein-exec "0.3.1"]]
        :dependencies [[org.clojure/tools.namespace "0.2.4"]
                       [im.chit/vinyasa "0.1.8"]]
        :injections [(require 'vinyasa.inject)
                     (require '[clojure.tools.namespace.repl :refer [refresh]])
                     (use '[clojure.stacktrace])
                     (vinyasa.inject/inject 'clojure.core '>
                       '[[clojure.repl doc source]
                         [clojure.pprint pprint pp]])]
        }}

