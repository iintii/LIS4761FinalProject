#Libraries
library(readr)
require("mapproj")
library(ggplot2)
library(stringr)
# Load in tweets data
tweets <- read_csv("Tweets-1.csv")


# Add coordinates for cities without coordinates
# Los Angeles
tweets$tweet_coord[tweets$tweet_location == "Los Angeles"] <- "[34.052235, -118.243683]"
tweets$tweet_coord[tweets$tweet_location == "Los Angeles, CA"] <- "[34.052235, -118.243683]"
tweets$tweet_coord[tweets$tweet_location == "Los Angeles, California"] <- "[34.052235, -118.243683]"
tweets$tweet_coord[tweets$tweet_location == "Los Angeles, Calif."] <- "[34.052235, -118.243683]"
tweets$tweet_coord[tweets$tweet_location == "Los Angeles, Ca"] <- "[34.052235, -118.243683]"
tweets$tweet_coord[tweets$tweet_location == "los angeles ca"] <- "[34.052235, -118.243683]"
tweets$tweet_coord[tweets$tweet_location == "los angeles, ca"] <- "[34.052235, -118.243683]"

# San Francisco
tweets$tweet_coord[tweets$tweet_location == "San Francisco CA"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "San Francisco, CA"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "San Francisco"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "san francisco"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "California, San Francisco"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "San Francisco Bay Area"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "san francisco califorania"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "San Francisco, California"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "San Francisco, Ca"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "san francisco, ca"] <- "[37.773972, -122.431297]"

# San Diego
tweets$tweet_coord[tweets$tweet_location == "San Diego"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "san diego"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "San Diego, CA"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "San Diego CA"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "San Diego, CA USA"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "San Diego, Ca"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "san diego, CA"] <- "[32.715736, -117.161087]"
tweets$tweet_coord[tweets$tweet_location == "San Diego, CA (760)"] <- "[32.715736, -117.161087]"

# New York City and New York
tweets$tweet_coord[tweets$tweet_location == "NYC"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "nyc"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "New York City"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "New York City, NY"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "new york city"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "New York, NY"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "new york, new york"] <- "[40.730610, -73.935242]"
tweets$tweet_coord[tweets$tweet_location == "New York, New York"] <- "[40.730610, -73.935242]"

# Brooklyn 
tweets$tweet_coord[tweets$tweet_location == "Brooklyn"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "Brooklyn, NY"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "brooklyn, Ny"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "Brooklyn, New York"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "Brooklyn NY"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "brooklyn, ny, us"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "Brooklyn NY."] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "brooklyn"] <- "[40.650002, -73.949997]"
tweets$tweet_coord[tweets$tweet_location == "Brooklyn!"] <- "[40.650002, -73.949997]"

# Boston 
tweets$tweet_coord[tweets$tweet_location == "Boston, MA"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "Boston"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "Boston, Massachusetts"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "boston, ma"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "boston ma"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "Boston, MA."] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "Boston, USA"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "BOSTON"] <- "[42.361145, -71.057083]"
tweets$tweet_coord[tweets$tweet_location == "Boston, MA"] <- "[42.361145, -71.057083]"

# Rest of California
tweets$tweet_coord[tweets$tweet_location == "Stockton, CA"] <- "[37.961632, -121.275604]"
tweets$tweet_coord[tweets$tweet_location == "palo alto, ca"] <- "[37.468319, -122.143936]"
tweets$tweet_coord[tweets$tweet_location == "Manhattan Beach, CA."] <- "[33.881248, -118.407211]"
tweets$tweet_coord[tweets$tweet_location == "Oakland, California"] <- "[37.804363, -122.271111]"
tweets$tweet_coord[tweets$tweet_location == "Silicon Valley, California"] <- "[37.387474, -122.057543]"
tweets$tweet_coord[tweets$tweet_location == "Anaheim, CA"] <- "[33.835293, -117.914505]"
tweets$tweet_coord[tweets$tweet_location == "Malibu, CA"] <- "[34.031246, -118.788193]"
tweets$tweet_coord[tweets$tweet_location == "Long Beach, CA"] <- "[33.770050, -118.193741]"
tweets$tweet_coord[tweets$tweet_location == "San Marcos, CA"] <- "[33.143372, -117.166145]"
tweets$tweet_coord[tweets$tweet_location == "San Jose, California"] <- "[37.335480, -121.893028]"
tweets$tweet_coord[tweets$tweet_location == "Oakland, CA"] <- "[37.804363, -122.271111]"
tweets$tweet_coord[tweets$tweet_location == "Oakland, Ca"] <- "[37.804363, -122.271111]"
tweets$tweet_coord[tweets$tweet_location == "Rocklin, CA"] <- "[38.800011, -121.246731]"
tweets$tweet_coord[tweets$tweet_location == "Santa Rosa, CA"] <- "[38.444660, -122.720306]"
tweets$tweet_coord[tweets$tweet_location == "SF, CA"] <- "[37.773972, -122.431297]"
tweets$tweet_coord[tweets$tweet_location == "Calabasas, CA"] <- "[34.138332, -118.660835]"
tweets$tweet_coord[tweets$tweet_location == "Sacramento, CA"] <- "[38.575764, -121.478851]"
tweets$tweet_coord[tweets$tweet_location == "Hermosa Beach, CA"] <- "[33.862141, -118.400009]"
tweets$tweet_coord[tweets$tweet_location == "Mountain View, CA"] <- "[37.386051, -122.083855]"
tweets$tweet_coord[tweets$tweet_location == "Venice, CA"] <- "[33.988270, -118.472023]"
tweets$tweet_coord[tweets$tweet_location == "Foster City, CA"] <- "[37.55855, -122.27108]"
tweets$tweet_coord[tweets$tweet_location == "Fresno, CA"] <- "[36.746841, -119.772591]"
tweets$tweet_coord[tweets$tweet_location == "Aliso Viejo, CA"] <- "[33.567684, -117.725609]"
tweets$tweet_coord[tweets$tweet_location == "Culver City, CA"] <- "[34.010124, -118.415016]"
tweets$tweet_coord[tweets$tweet_location == "San Jose, CA"] <- "[37.335480, -121.893028]"
tweets$tweet_coord[tweets$tweet_location == "santa barbara, CA"] <- "[34.420830, -119.698189]"
tweets$tweet_coord[tweets$tweet_location == "Irvine, CA"] <- "[33.669445, -117.823059]"
tweets$tweet_coord[tweets$tweet_location == "Costa Mesa, CA"] <- "[33.641132, -117.918671]"
tweets$tweet_coord[tweets$tweet_location == "Mill Valley, CA"] <- "[37.905182, -122.544006]"
tweets$tweet_coord[tweets$tweet_location == "Fremont, California"] <- "[37.548271, -121.988571]"
tweets$tweet_coord[tweets$tweet_location == "Brentwood, CA"] <- "[37.931868, -121.695786]"
tweets$tweet_coord[tweets$tweet_location == "Berkeley, CA"] <- "[37.871666, -122.272781]"
tweets$tweet_coord[tweets$tweet_location == "San Bruno, CA"] <- "[37.625288, -122.425266]"
tweets$tweet_coord[tweets$tweet_location == "Ventura, California"] <- "[34.274647, -119.229034]"
tweets$tweet_coord[tweets$tweet_location == "Fullerton, CA"] <- "[33.876118, -117.921410]"
tweets$tweet_coord[tweets$tweet_location == "Redlands, CA"] <- "[34.055569, -117.182541]"
tweets$tweet_coord[tweets$tweet_location == "Hollywood, CA"] <- "[34.098907, -118.327759]"
tweets$tweet_coord[tweets$tweet_location == "Roseville, CA"] <- "[38.752125, -121.288010]"
tweets$tweet_coord[tweets$tweet_location == "Campbell, CA"] <- "[37.287167, -121.949959]"
tweets$tweet_coord[tweets$tweet_location == "Santa Ana, California"] <- "[33.745571, -117.867836]"
tweets$tweet_coord[tweets$tweet_location == "Union City, CA"] <- "[37.593392, -122.04383]"
tweets$tweet_coord[tweets$tweet_location == "Beverly Hills, CA"] <- "[34.073620, -118.400352]"
tweets$tweet_coord[tweets$tweet_location == "Pescadero, CA"] <- "[37.255164, -122.383015]"
tweets$tweet_coord[tweets$tweet_location == "Sherman Oaks, CA"] <- "[34.149956, -118.448891]"
tweets$tweet_coord[tweets$tweet_location == "Atascadero, CA"] <- "[35.489418, -120.670723]"
tweets$tweet_coord[tweets$tweet_location == "Rialto, CA"] <- "[34.106117, -117.372093]"
tweets$tweet_coord[tweets$tweet_location == "Palm Springs, CA"] <- "[33.830517, -116.545601]"
tweets$tweet_coord[tweets$tweet_location == "Pasadena, CA"] <- "[34.156113, -118.131943]"
tweets$tweet_coord[tweets$tweet_location == "Newport Beach, CA"] <- "[33.628342, -117.927933]"
tweets$tweet_coord[tweets$tweet_location == "Napa, CA"] <- "[38.297539, -122.286865]"
tweets$tweet_coord[tweets$tweet_location == "Redwood City, CA"] <- "[37.487846, -122.236115]"
tweets$tweet_coord[tweets$tweet_location == "West Covina, CA"] <- "[34.068623, -117.938950]"

                          ##########################################################################

# remove [] from tweet co-ord
tweets$tweet_coord <- gsub("\\[|\\]", "", tweets$tweet_coord)

# Uses library stringr to split on ',' into 2 cols lat, lon
tweets[c('lat', 'lon')] <- str_split_fixed(tweets$tweet_coord, ',', 2)

# changes tweet location col to lower case
tweets$tweet_location <- tolower(tweets$tweet_location)

# Removes rows with NA values in tweet_coord from dataset
tweets <- tweets[!is.na(tweets$tweet_coord),]

# Removes columns 7,8,10 (mostly NA's), Can keep if necessary.
tweets <- tweets[,-7]
tweets <- tweets[,-8]
tweets <- tweets[,-10]




























































































