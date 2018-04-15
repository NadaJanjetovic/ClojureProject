(defproject dentistnada "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [compojure "1.1.6"]
                 [org.clojure/java.jdbc "0.3.0-alpha5"]
                 [mysql/mysql-connector-java "5.1.25"]
                 [ring-json-response "0.2.0"]
                 [de.ubercode.clostache/clostache "1.4.0"]
                 [ring-basic-authentication "1.0.2"]
                 ]
  :plugins [[lein-ring "0.9.7"]]
  :ring {:handler dentistnada.api/app}
  :main ^:skip-aot dentistnada.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
