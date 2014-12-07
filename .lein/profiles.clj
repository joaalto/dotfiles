{:user {
        :plugins [[lein-exec "0.3.1"]]
        :dependencies [;[org.clojure/tools.namespace "0.2.4"]
                       [im.chit/vinyasa "0.1.8"]
                       [spyscope "0.1.5"]
                       [io.aviso/pretty "0.1.12"]]
        :injections [(require 'vinyasa.inject)
                     (require 'spyscope.core)
                     ;(require '[clojure.tools.namespace.repl :refer [refresh]])
                     (use '[clojure.stacktrace])
                     (vinyasa.inject/inject 'clojure.core '>
                       '[[clojure.repl doc source]
                         [clojure.pprint pprint pp]])]
        :repl-options {
          :nrepl-middleware [io.aviso.nrepl/pretty-middleware]
        }
}}

