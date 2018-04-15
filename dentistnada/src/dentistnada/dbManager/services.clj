(ns dentistnada.dbManager.services
  (:refer-clojure :exclude [get])
  (:require [clojure.java.jdbc :as sql]
            [clojure.java.jdbc.sql :as s]))

(def connection
  {:classname "com.mysql.jdbc.Driver"
   :subprotocol "mysql"
   :subname "//127.0.0.1:3306/nadaclojure"
   :user "root"
   :password ""})

(defn delete-services [id]
  (sql/delete! connection :service
               ["id = ?" id]))

(defn add-new-service
  [service]
  (sql/insert! connection :service service))


(defn find-all-services []
  (into [] (sql/query connection ["select * from service"])))


(defn get-service-by-id [id]
  (first (sql/query connection
                     (s/select * :service (s/where {:id id})))))

(defn updateService [id params]
  (sql/update! connection :service params (s/where {:id id})))
