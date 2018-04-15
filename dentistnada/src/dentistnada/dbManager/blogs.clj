(ns dentistnada.dbManager.blogs
  (:refer-clojure :exclude [get])
  (:require [clojure.java.jdbc :as sql]
            [clojure.java.jdbc.sql :as s]))

(def connection
  {:classname "com.mysql.jdbc.Driver"
   :subprotocol "mysql"
   :subname "//127.0.0.1:3306/nadaclojure"
   :user "root"
   :password ""})


(defn add-new-blog
  [service]
  (sql/insert! connection :clanci service))


(defn find-all-blogs []
  (into [] (sql/query connection ["select * from clanci"])))


(defn get-blog-by-id [id]
  (first (sql/query connection
                    (s/select * :clanci (s/where {:id id})))))

