library(dplyr)
library(RSQLite)

conn <- dbConnect(RSQLite::SQLite(), "../Data/sql-murder-mystery.db")

crime_scene_report <- dbSendQuery(conn, "SELECT * FROM crime_scene_report") %>% dbFetch()
facebook_event_checkin = dbSendQuery(conn,"SELECT * FROM facebook_event_checkin") %>% dbFetch()
get_fit_now_member = dbSendQuery(conn,"SELECT * FROM get_fit_now_member") %>% dbFetch()
get_fit_now_check_in = dbSendQuery(conn,"SELECT * FROM get_fit_now_check_in") %>% dbFetch()
interview = dbSendQuery(conn,"SELECT * FROM interview") %>% dbFetch()
person = dbSendQuery(conn,"SELECT * FROM person") %>% dbFetch()
income = dbSendQuery(conn,"SELECT * FROM income") %>% dbFetch()
drivers_license = dbSendQuery(conn,"SELECT * FROM drivers_license") %>% dbFetch()

  