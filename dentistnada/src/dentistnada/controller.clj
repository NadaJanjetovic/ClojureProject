(ns dentistnada.controller
  (:require
    [clostache.parser :as clostache]
    [dentistnada.dbManager.dentist :as db-dentist]
    [dentistnada.dbManager.services :as db-services]
    [dentistnada.dbManager.blogs :as db-blogs]
    ))


(defn load-template-by-name [name-of-template]
  (slurp (clojure.java.io/resource
          (str "views/" name-of-template ".mustache"))))

(defn render-template [template-file params]
  (clostache/render (load-template-by-name template-file) params))

(defn index []
  (render-template "indeks" {}))

(defn dentists[]
  (render-template "dentist" {:dentists (db-dentist/find-all-dentists)}))

(defn services[]
  (render-template "services" {:services (db-services/find-all-services)}))

(defn blogs[]
  (render-template "blogs" {:blogs (db-blogs/find-all-blogs)}))

(defn update-dentist [id]
  (render-template "UpdateDentist" {:dentist (db-dentist/get-dentist-by-id id)}
                                     ))

(defn update-service [id]
  (render-template "UpdateService" {:service (db-services/get-service-by-id id)
                                    }))

(defn load-blog [id]
  (render-template "ViewBlog" {:blog (db-blogs/get-blog-by-id id)
                                 }))