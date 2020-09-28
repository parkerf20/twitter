library(ROAuth)
library("streamR")

my_oauth <- list(consumer_key = "XXX",
                 consumer_secret = "XXX",
                 access_token = "XXX",
                 access_token_secret = "XXX")

# For security reasons we prefer not to upload our token keys to github :) . 

save(my_oauth, file="my_oauth.rda")
load("my_oauth.rda")

locs_EU <- c(-10, 22, 86, 61)

# We decided to focus on EU countries. For that reason, we initially collected 
# more than 200K  tweets, that after filtering for EU countries, ended up being 134k.

filterStream(file.name="tweets_geo_eu.json", locations = locs_EU,
             oauth = my_oauth, timeout = 10800)