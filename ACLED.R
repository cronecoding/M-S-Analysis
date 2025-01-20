install.packages("acled.api")
library(acled.api)
#Armed Conflict Location & Event Data Project (ACLED); www.acleddata.com
Sys.setenv(ACLED_EMAIL_ADDRESS = "becky.aza.kimble@gmail.com")
Sys.setenv(ACLED_ACCESS_KEY = "pMIALd145*tGPs1UEOx8")
# Retrieve ACLED data for specified regions and date range
acled_data <- acled.api(
  email.address = Sys.getenv("ACLED_EMAIL_ADDRESS"),
  access.key = Sys.getenv("ACLED_ACCESS_KEY"),
  region = c(1, 7),  # Replace with desired region codes
  start.date = "2022-01-01",
  end.date = "2022-12-31"
)

# View the first few rows of the dataset
head(acled_data)
