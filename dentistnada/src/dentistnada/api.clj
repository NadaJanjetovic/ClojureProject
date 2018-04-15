(ns dentistnada.api
  (:use compojure.core
        ring.util.json-response
        ring.adapter.jetty)
  (:require [compojure.core :refer [defroutes GET POST]]
            [clojure.string :as str]
            [ring.util.response :as resp]
            [compojure.route :as route]
            [compojure.handler :as handler]
            [dentistnada.controller :as controller]
            [dentistnada.dbManager.dentist :as db-dentist]
            [dentistnada.dbManager.services :as db-services]
            [dentistnada.dbManager.blogs :as db-blogs]
            [ring.middleware.resource :refer [wrap-resource]]
            ))


(defroutes api_routes
  (GET "/" [] (controller/index))
  (route/resources "/")
  (GET "/index" [] (controller/index))
  (route/resources "/")
  (GET "/dentists" [] (controller/dentists))
  (route/resources "/")
  (GET "/services" [] (controller/services))
  (route/resources "/")
  (GET "/blogs" [] (controller/blogs))
  (route/resources "/")
  (GET "/dbManager/dentist/:id/delete" [id]
       (do (db-dentist/delete-dentist id)
         (resp/redirect "/dentists")))
  (GET "/dbManager/services/:id/delete" [id]
       (do (db-services/delete-services id)
         (resp/redirect "/services")))

  (POST "/dbManager/dentist/insert" [& dentist]
        (do (db-dentist/add-new-dentist dentist)
          (resp/redirect "/dentists")))
  (POST "/dbManager/services/insert" [& service]
        (do (db-services/add-new-service service)
          (resp/redirect "/services")))
  (POST "/dbManager/blogs/insert" [& blog]
        (do (db-blogs/add-new-blog blog)
          (resp/redirect "/blogs")))
  (GET "/dbManager/dentist/:id/update" [id] (controller/update-dentist id))

  (GET "/dbManager/blog/:id/load" [id] (controller/load-blog id))
  (POST "/dbManager/dentist/:id/update" [& dentist]
        (do (db-dentist/update-dentist (:id dentist) dentist)
          (resp/redirect "/dentists")))


  (GET "/dbManager/services/:id/update" [id] (controller/update-service id))

  (POST "/dbManager/services/:id/update" [& service]
        (do (db-services/updateService (:id service) service)
          (resp/redirect "/services")))
)

(defroutes app-routes
  api_routes
  (route/not-found "404 Not Found")
  )
(def app
  (handler/site app-routes)
  )