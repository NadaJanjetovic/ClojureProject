(ns dentistnada.dbManager.dentist
  (:require [clojure.java.jdbc :as sql]
            [clojure.java.jdbc.sql :as s]))

(def connection
  {:classname "com.mysql.jdbc.Driver"
   :subprotocol "mysql"
   :subname "//127.0.0.1:3306/nadaclojure"
   :user "root"
   :password ""})


(defn add-new-dentist
  [dentist]
  (sql/insert! connection :dentist dentist))

(defn find-all-dentists []
  (into [] (sql/query connection ["select * from dentist"])))


(defn get-dentist-by-id[id]
  (first (sql/query connection
                    (s/select * :dentist (s/where {:id id})))))


(defn delete-dentist [id]
  (sql/delete! connection :dentist
               ["id = ?" id]))

(defn update-dentist [id params]
  (sql/update! connection :dentist params (s/where {:id id})))
