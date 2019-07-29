# HYATT HOTELS CUSTOMER SATISFACTION ANALYSIS
# IST 687 Final Project (Fall '17)
# The code was fully revised and improved by David Forteguerre (Summer '19)







#######################################################################################################################################
##################################################################################
# DATA IMPORTATION (this section  was not revised)
##################################################################################

# to sort the data and only keep the attributes we deemed relevant
library(readr)
data2014February <- read_csv("~/Downloads/out-201402.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014February <- na.omit(data2014February)
data2014March <- read_csv("~/Downloads/out-201403.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014March <- na.omit(data2014March)
data2014April <- read_csv("~/Downloads/out-201404.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014April <- na.omit(data2014April)
data2014May <- read_csv("~/Downloads/out-201405.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014May <- na.omit(data2014May)
data2014June <- read_csv("~/Downloads/out-201406.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014June <- na.omit(data2014June)
data2014July <- read_csv("~/Downloads/out-201407.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014July <- na.omit(data2014July)
data2014August <- read_csv("~/Downloads/out-201408.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014August <- na.omit(data2014August)
data2014September <- read_csv("~/Downloads/out-201409.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014September <- na.omit(data2014September)
data2014October <- read_csv("~/Downloads/out-201410.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014October <- na.omit(data2014October)
data2014November <- read_csv("~/Downloads/out-201411.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014November <- na.omit(data2014November)
data2014December <- read_csv("~/Downloads/out-201412.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2014December <- na.omit(data2014December)
data2015January <- read_csv("~/Downloads/out-201501.csv")[,c("Country_PL", "City_PL", "Spirit_PL", "Hotel Name-Long_PL", "NPS_Type", "Likelihood_Recommend_H", "POV_CODE_C", "MEMBER_STATUS_R", "LENGTH_OF_STAY_C", "GUEST_COUNTRY_R", "Gender_H", "Age_Range_H", "Overall_Sat_H", "Guest_Room_H", "Tranquility_H", "Condition_Hotel_H", "Customer_SVC_H", "Staff_Cared_H", "Internet_Sat_H", "Check_In_H", "F&B_Overall_Experience_H")]
data2015January <- na.omit(data2015January)

# to merge all the datasets above
dataset <- rbind(data2014February, data2014March, data2014March, data2014April, data2014May, data2014June, data2014July, data2014August, data2014September, data2014October, data2014November, data2014December, data2015January)
dataset$`F&B_Overall_Experience_H` <- ceiling(dataset$`F&B_Overall_Experience_H`) # to round up the values in the last colunn
View(dataset)
str(dataset)

######################### TO EXPORT THE NEW FULL DATASET ######################### 
# To save the full dataset 
write.csv(dataset, '~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetFull.csv')
##################################################################################


# to see if there are any major gaps in the types of services offered by NYC hotels (let's import the last month) 
# THIS STEP WAS ADDED BEFORE DEFINING OUR BUSINESS QUESTIONS. 
library(readr)
HotelServices <- read_csv("~/Downloads/out-201501.csv")[,c("Country_PL", "City_PL", "Hotel Name-Long_PL","All Suites_PL", "Bell Staff_PL","Boutique_PL","Business Center_PL", "Casino_PL","Conference_PL", "Convention_PL", "Dry-Cleaning_PL","Elevators_PL","Fitness Center_PL", "Fitness Trainer_PL","Golf_PL", "Indoor Corridors_PL", "Laundry_PL","Limo Service_PL","Mini-Bar_PL","Pool-Indoor_PL","Pool-Outdoor_PL","Regency Grand Club_PL","Resort_PL","Restaurant_PL", "Self-Parking_PL","Shuttle Service_PL","Ski_PL","Spa_PL","Spa services in fitness center_PL", "Spa online booking_PL","Spa F&B offering_PL","Valet Parking_PL")]
HotelServices <- data.frame(HotelServices[HotelServices$City_PL == "New York",]) # to only keep NYC
sum(is.na(HotelServices)) # To see how many NAs there are in the dataset.
HotelServices[is.na(HotelServices)] <- "NO DATA" # To replace the NAs
HotelServicesSummary <- unique(HotelServices) # To only keep each hotel's info
rownames(HotelServicesSummary) <- NULL # To reindex the data
HotelServicesSummary$Country_PL <- NULL # to delete the location info (not needed anymore)
HotelServicesSummary$City_PL <- NULL # to delete the location info (not needed anymore)
HotelServicesSummary$Hotel.Name.Long_PL <- NULL # to delete the location info (not needed anymore)
UniqueValues = unique(do.call(c,HotelServicesSummary)) # to get all the unique values in the dataframe  # This command was found on Stackoverflow
HotelServicesSummary <- sapply(UniqueValues,function(x)colSums(HotelServicesSummary==x)) # to count all the occurrences of x in each row
HotelServicesSummary = t(HotelServicesSummary) # to transpose the dataset (flip columns and rows)
HotelServicesSummary <- HotelServicesSummary[-2,] # Now we can remove the NO DATA row
View(HotelServicesSummary)
# Overall, the NYC hotels offer the same types of services as the numbers are quite consistent. Therefore, we will keep this data in our analysis
# If a customer is unhappy because of the services offered at their hotel, their disatisfaction should be relfected in the "overall satisfaction" or "condition of the hotel" variables

######################### TO EXPORT THE SERVICES BY NYC HOTEL DATASET ##################### (Even though we will not use it in this analysis)
# to save the full dataset 
write.csv(HotelServicesSummary, '~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetServicesByNYCHotel.csv')
###########################################################################################
#######################################################################################################################################












##################################################################################
# I. DATA PREP AND ANALYSIS
##################################################################################


# to load packages
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(gridExtra) # to use grid.arrange() and  create a matrix that will be breaking up the plot space (ggplot2)


# to import the clean dataset
path = "/Users/davidforteguerre/Google Drive/2-SCHOOL/M.S. Data Science/IST687 Data Science/DF_FINAL PROJECT/5-Datasets/datasetFull.csv"
dataset <- read.csv(path
                    , header = TRUE
                    , sep = ","
                    , stringsAsFactors = TRUE)
View(dataset)
dataset$X <- NULL # to delete first column (it was automatically inserted when exporting)
str(dataset)
#?read.csv




# quick verification that NPS_Type variable was created properly based on the Likelihood_To_Recommend variable:
unique(dataset$NPS_Type) # to show unique values in NPS_Type
# Promoters. Promoters: 9, 10
tapply(dataset$Likelihood_Recommend_H, dataset$NPS_Type=="Promoter", unique) # Promoters gave a score of [1] 10  9 in the data
# Passives. Passives: 7, 8
tapply(dataset$Likelihood_Recommend_H, dataset$NPS_Type=="Passive", unique) # Passives gave a score of [1] 8 7 in the data
# Detractors. Detractors: 0, 1, 2, 3, 4, 5, 6
tapply(dataset$Likelihood_Recommend_H, dataset$NPS_Type=="Detractor", unique) # Detractors gave a score of [1] 6 3 5 2 4 1 in the data
# perfect




############################## OLD ############################## 
# to show which country has the largest amount of data
ResultsCountry <- data.frame(table(dataset$Country_PL))
ResultsCountry <- ResultsCountry[order(-ResultsCountry$Freq),]
rownames(ResultsCountry) <- NULL # to reset index
colnames(ResultsCountry) <- c("Country", "Surveys") # to rename columns. Note that the rename() funcion in dplyr is also handy for this
ResultsCountry <- head(ResultsCountry, 10) # to subset top 10 
ResultsCountry
############################## OLD ############################## 



# To show which country has the largest amount of data
ResultsCountry = data.frame(head(sort(table(dataset$Country_PL), decreasing=TRUE), 10))
colnames(ResultsCountry) <- c("Country", "Surveys")
ResultsCountry
View(ResultsCountry)
# to plot
ggplot(ResultsCountry, aes(x=Country, y=Surveys)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("Number Of Surveys By Country") + 
  xlab("Country") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them




# to show which city has the largest amount of data
ResultsCity = data.frame(head(sort(table(dataset$City_PL), decreasing=TRUE), 10))
colnames(ResultsCity) <- c("City", "Surveys")
ResultsCity
View(ResultsCity)
# to plot
ggplot(ResultsCity, aes(x=City, y=Surveys)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("Number Of Surveys By City") + 
  xlab("City") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them



################################################################################################################
# the U.S. has the largest number of cities, and NYC has a large amount of surveys
# Let's focus on NYC only and only keep that data
dataset <- data.frame(dataset[dataset$City_PL == "New York",]) # (base R)
rownames(dataset) <- NULL # to reset index (needed because of base R)
# dataset <- filter(dataset, City_PL=="New York")) # alternative (dplyr)
dim(dataset) # rows and cols
View(dataset)
################################################################################################################


# to show which hotel has the largest amount of data
ResultsHotel = data.frame(head(sort(table(dataset$Hotel.Name.Long_PL), decreasing=TRUE), 10))
colnames(ResultsHotel) <- c("HotelName", "Surveys")
ResultsHotel
View(ResultsHotel)
# to plot
ggplot(ResultsHotel, aes(x=HotelName, y=Surveys)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("Number Of Surveys By Hotel In NYC") + 
  xlab("Hotel") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them




# To calculate NPS by hotel. NPS FORMULA: (Number of Promoters — Number of Detractors) / (Number of Respondents) x 100

# quick check
totalrows = nrow(dataset) # 3252
a = nrow(filter(dataset, NPS_Type=="Promoter")) # alternative (non dplyr): length(which(dataset$NPS_Type=="Promoter"))
b = nrow(filter(dataset, NPS_Type=="Passive"))
c = nrow(filter(dataset, NPS_Type=="Detractor"))
totalrows == a+b+c # TRUE

# to create a function to calculate NPS based on the formula above
NPScalculation <- function(hotel) {
  NumberPromoters <- length(which(dataset$NPS_Type=="Promoter"&dataset$Hotel.Name.Long_PL==hotel))
  NumberDetractors <- length(which(dataset$NPS_Type=="Detractor"&dataset$Hotel.Name.Long_PL==hotel))
  NumberRespondents <- length(which(dataset$Hotel.Name.Long_PL==hotel))
  hotelNPS <- ((NumberPromoters - NumberDetractors) / NumberRespondents)*100
  return(hotelNPS)
}

# to calculate NPS for each hotel and store the results (NPS  can range from -100 to +100)
ResultsHotel$HotelName # to get names of hotels
hotelNPS1 <- NPScalculation("Grand Hyatt New York")
hotelNPS2 <- NPScalculation("Hyatt Times Square")
hotelNPS3 <- NPScalculation("Hyatt Place New York/Midtown-South")
hotelNPS4 <- NPScalculation("Andaz 5th Avenue")
hotelNPS5 <- NPScalculation("Hyatt Union Square New York")
hotelNPS6 <- NPScalculation("Andaz Wall Street")
hotelNPS7 <- NPScalculation("Hyatt 48 Lex")
hotelNPS8 <- NPScalculation("Park Hyatt New York")
hotelNPS9 <- NPScalculation("Hyatt Herald Square")
hotelNPS10 <- NPScalculation("Andaz Amsterdam, Prinsengracht")

# to create a dataframe with the results
HotelName <- ResultsHotel$HotelName # col 1
Surveys <- ResultsHotel$Surveys # col 2
NPS <- c(hotelNPS1, hotelNPS2, hotelNPS3, hotelNPS4, hotelNPS5, hotelNPS6, hotelNPS7, hotelNPS8, hotelNPS9, hotelNPS10) # col 3
NPSbyHotel <- data.frame(HotelName, Surveys, NPS) # to merge
NPSbyHotel <- NPSbyHotel[-10,] # the last row doesn't have any surveys so let's exclude it
NPSbyHotel
# to plot
ggplot(NPSbyHotel, aes(x=HotelName, y=NPS, fill=NPS)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  scale_fill_gradient(low = "#132B43", high = "#56B1F7") +
  #geom_col(fill="royalblue4") + 
  ggtitle("NPS by Hotel in NYC") + 
  xlab("Hotel") +
  ylab("NPS (-100 to 100)") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them


# OBSERVATIONS:
# No hotels with a large amount of surveys stand out for having a very low NPS. 
# The only hotel that stands out for having a very low NPS is the last one, but it has only 20 surveys.


###########################################################################################################################
# to remove the unnecessary information from the dataset that we don't need anymore (country, city, etc.)
dataset$Country_PL <- NULL
dataset$City_PL <- NULL
dataset$Spirit_PL <- NULL
View(dataset)
###########################################################################################################################











########################################################################################################################
# II. CUSTOMER SEGMENTATION / DESCRIPTIVE ANALYSIS
########################################################################################################################


# NPS Type (number of surveys)
NPSType = data.frame(sort(table(dataset$NPS_Type), decreasing=TRUE))
colnames(NPSType) <- c("NPSType", "Count")
NPSType
# to plot
ggplot(NPSType, aes(x=NPSType, y=Count)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("NYC Hotels: NPS Type") + 
  xlab("NPSType") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them





          # Univariate analysis

# Purpose of visit
PurposeOfVisit = data.frame(sort(table(dataset$POV_CODE_C), decreasing=TRUE))
colnames(PurposeOfVisit) <- c("PurposeOfVisit", "Count")
PurposeOfVisit
# to plot
a0 <- ggplot(PurposeOfVisit, aes(x=PurposeOfVisit, y=Count)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("NYC Hotels: Purpose of Visit") + 
  xlab("Purpose of Visit") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them

# Length of stay
AverageStay <- mean(dataset$LENGTH_OF_STAY_C) # to compute the average length of stay
AverageStay
# to plot (boxplot)
b0 <- ggplot(dataset, aes(x=factor(0), y=LENGTH_OF_STAY_C)) +
  geom_boxplot(outlier.alpha = 0.2) + # to color outliers: outlier.colour = "red",
  stat_summary(fun.y="mean", geom="point", shape=18, size=2, colour="blue") +
  ggtitle("NYC Hotels: Average Length of Stay") + 
  xlab("Average Length of Stay = 2.9 days") +
  ylab("Number of days") + 
  coord_cartesian(ylim=c(0,8)) + # to scale y axis without clipping (i.e., without removing the data points)
  theme_minimal() 

# Gender
Gender = data.frame(sort(table(dataset$Gender_H), decreasing=TRUE))
colnames(Gender) <- c("Gender", "Count")
Gender
# to plot
c0 <- ggplot(Gender, aes(x=Gender, y=Count)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("NYC Hotels: Gender") + 
  xlab("Gender") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them

# Age
CustomerAge = data.frame(table(dataset$Age_Range_H)) # not sorting here
colnames(CustomerAge) <- c("AgeRange", "Count")
CustomerAge
# to plot
d0 <- ggplot(CustomerAge, aes(x=AgeRange, y=Count)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("NYC Hotels: Age Bucket") + 
  xlab("Age Bucket") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them


# Member status
MemberStatus = data.frame(sort(table(dataset$MEMBER_STATUS_R), decreasing=TRUE))
colnames(MemberStatus) <- c("Status", "Count")
MemberStatus
# to plot
e0 <- ggplot(MemberStatus, aes(x=Status, y=Count)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("NYC Hotels: Member Status") + 
  xlab("Status") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them

# Guest Country
GuestCountry = data.frame(head(sort(table(dataset$GUEST_COUNTRY_R), decreasing=TRUE), 5)) # top 5
colnames(GuestCountry) <- c("GuestCountry", "Count")
GuestCountry
# to plot
f0 <- ggplot(GuestCountry, aes(x=GuestCountry, y=Count)) +
  geom_bar(stat="identity") + # stat="identity" is needed to tell ggplot2 not to summarize/pivot the data (it's already done)
  geom_col(fill="royalblue4") + 
  ggtitle("NYC Hotels: Guest Country (top 5)") + 
  xlab("Guest Country") +
  ylab("Count") + 
  #theme_minimal() +
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1)) # to change x label size and rotate them

# to combine all plots together 
grid.arrange(a0, b0, c0, d0, e0, f0, nrow = 2)




          # NPS type multivariate analysis 

# NPS type by Purpose of Visit
a <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + 
  geom_bar() + facet_grid(dataset$POV_CODE_C) + 
  xlab("Purpose of Visit") + 
  ylab("Count") + 
  labs(fill="NPS Type") + # legend
  ggtitle("NYC Hotels: NPS Type by Purpose of Visit") + scale_fill_brewer() + # or add palette = "Set1" in the last command (but I want blue here)
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1), legend.position="none") # to change x label size and rotate them

# to compute avg length of stay by NPS Type
MeanStay <- aggregate(dataset$LENGTH_OF_STAY_C, by=list(dataset$NPS_Type), mean)
colnames(MeanStay) <- c("NPS Type", "AvgLengthOfStay")
MeanStay
# to plot (ggplot variation that automatically takes the mean of the NPS_type factors here)
b <- ggplot(dataset, aes(x=factor(NPS_Type), y=LENGTH_OF_STAY_C)) +
  geom_boxplot(outlier.alpha = 0.2) +
  stat_summary(fun.y="mean", geom="point", shape=18, size=2, colour="blue", fill="royalblue4") + # to add mean
  ggtitle("NYC Hotels: NPS Type by Average Length of Stay") + 
  xlab("NPS Type") +
  ylab("Number of days") + 
  coord_cartesian(ylim=c(0,8)) + # to scale y axis without clipping (i.e., without removing the data points)
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1), legend.position="none") # to change x label size and rotate them


# NPS type by Gender (grouped barchart))
c <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + 
  geom_bar() + facet_grid(dataset$Gender_H) + 
  xlab("Gender") + 
  ylab("Count") + 
  labs(fill="NPS Type") + # legend
  ggtitle("NYC Hotels: NPS Type by Gender") + scale_fill_brewer() + # or add palette = "Set1" in the last command 
  theme(axis.text.x = element_text(size = 8, angle = 60, hjust = 1), legend.position="none") # to change x label size and rotate them


# NPS type by Age Bucket
d <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + 
  geom_bar() + facet_grid(dataset$Age_Range_H) + 
  xlab("Age Bucket") + 
  ylab("Count") + 
  labs(fill="NPS Type") + # legend
  ggtitle("NYC Hotels: NPS Type by Age Bucket") + scale_fill_brewer() + # or add palette = "Set1" in the last command 
  theme(axis.text.x = element_text(size = 6, angle = 60, hjust = 1), legend.position="none") # to change x label size and rotate them


# NPS type by Member Status
e <- ggplot(data=dataset, aes(x=dataset$NPS_Type, fill=dataset$NPS_Type)) + 
  geom_bar() + facet_grid(dataset$MEMBER_STATUS_R) + 
  xlab("Member Status") + 
  ylab("Count") + 
  labs(fill="NPS Type") + # legend
  ggtitle("NYC Hotels: NPS Type by Member Status") + scale_fill_brewer() + # or add palette = "Set1" in the last command 
  theme(axis.text.x = element_text(size = 6, angle = 60, hjust = 1), legend.position="none") # to change x label size and rotate them


# NPS type by (first 5) Guest Country
# to show the first 5 guest countries in the dataset
ResultsGuestCountry = data.frame(head(sort(table(dataset$GUEST_COUNTRY_R), decreasing=TRUE), 5))
colnames(ResultsGuestCountry) <- c("Country", "Count")
ResultsGuestCountry
# to subset the top 5 countries and create a new dataset
top10guestcountries = names(head(sort(table(dataset$GUEST_COUNTRY_R), decreasing=TRUE), 5))
dataset_subset <- filter(dataset, GUEST_COUNTRY_R %in% top10guestcountries)
View(dataset_subset)
# to plot
f <- ggplot(data=dataset_subset, aes(x=dataset_subset$NPS_Type, fill=dataset_subset$NPS_Type)) + 
  geom_bar() + facet_grid(dataset_subset$GUEST_COUNTRY_R) + 
  xlab("Guest Country") + 
  ylab("Count") + 
  labs(fill="NPS Type") + # legend
  ggtitle("NYC Hotels: NPS Type by Guest Country") + scale_fill_brewer() + # or add palette = "Set1" in the last command 
  theme(axis.text.x = element_text(size = 6, angle = 60, hjust = 1), legend.position="none")

# to combine all plots together 
grid.arrange(a, b, c, d, e, f, nrow = 2)












########################################################################################################################
# III. MODELING TECHNIQUES AND PREDICTIVE ANALYSIS
########################################################################################################################



# 1. LINEAR REGRESSION (this section was revised by David Forteguerre in the Summer of 2019)

# A. NUMERIC VARIABLES ONLY

datasetlm <- dataset # to subset
str(datasetlm)

# to remove unecessary columns
datasetlm$Hotel.Name.Long_PL <- NULL
datasetlm$NPS_Type <- NULL
datasetlm$POV_CODE_C <- NULL
datasetlm$MEMBER_STATUS_R <- NULL
datasetlm$GUEST_COUNTRY_R <- NULL
datasetlm$Gender_H <- NULL
datasetlm$Age_Range_H <- NULL
View(datasetlm) # should be numerical data only


# to look at correlations with a pairplots
library(GGally)
library(ggplot2)
# 1
ggpairs(datasetlm, title="Correlation matrix")
# 2
ggcorr(datasetlm
       , method = c("pairwise", "pearson")
       , low = "#FF0000" # red
       , mid = "#EEEEEE"
       , high = "#127F00" # green
       , size = 2
       , hjust = 0.8
       , label = TRUE
       , label_size = 6
       , label_color = "black") # correlation 


# INITIAL MODEL
lm0 = lm(Likelihood_Recommend_H~Overall_Sat_H, datasetlm) # to fit the linear model
summary(lm0) # to inspect
summary(lm0)$r.squared
#summary(lm1)$adj.r.squared

# to remove Overall_Sat_H since it's highly correlated with Likelihood_Recommend_H (doesn't really matter here - we want to make inference/understand what's driving the scores, not predictions)
datasetlm$Overall_Sat_H <- NULL
#datasetlm$Likelihood_Recommend_H <- NULL



# FIRST MODEL (includes everything)
# View(datasetlm)
lm1 = lm(Likelihood_Recommend_H~., datasetlm)
summary(lm1)


########################################################################################################
# to see what a stepwise regression function would have output from the first model
library(MASS)
step <- stepAIC(lm1, direction = "both", trace = FALSE) # both does both "backward", "forward"
summary(step)
# step$anova
########################################################################################################


# to remove poor predictors from lm1
datasetlm$LENGTH_OF_STAY_C <- NULL
datasetlm$Internet_Sat_H  <- NULL
datasetlm$Check_In_H  <- NULL


# SECOND MODEL 
lm2 = lm(Likelihood_Recommend_H~., datasetlm)
summary(lm2)

# to extract coefficients of features and examine their impact 
coefs <- data.frame(coefficients(lm2))
coefs$feature <- rownames(coefs)
rownames(coefs) <- NULL
colnames(coefs) <- c("coefficient", "feature")
coefs = coefs[,2:1] # to reorder 
coefs = coefs[2:7,] # to remove the intercept
coefs
# to plot
ggplot(coefs, aes(feature, coefficient)) + 
  geom_bar(stat="identity") + 
  xlab("Feature") + 
  ylab("Predicted increase of Y for every unit increase of X") +
  ggtitle("Feature Importance (from LR #2)") + ylim(0, 0.4) +
  theme(axis.text.x = element_text(size = 10, angle = 60, hjust = 1), legend.position="none")




# B. NUMERIC VARIABLES + CATEGORICAL

options(scipen=999999) # to turn off sci notation

datasetlm_more <- dataset # to subset
View(datasetlm_more)

# to remove unecessary columns
datasetlm_more$NPS_Type <- NULL # this corresponds to Likelihood_Recommend_H and Overall_Sat_H
datasetlm_more$Overall_Sat_H <- NULL
datasetlm_more$GUEST_COUNTRY_R <- NULL # you can comment this out too if you want to exclude guest country

# to run model
lm_full = lm(Likelihood_Recommend_H~., datasetlm_more)
summary(lm_full) # to inspect 

# to see baselines (example)
unique(datasetlm_more$GUEST_COUNTRY_R)
unique(datasetlm_more$Age_Range_H)











# 2. ASSOCIATION RULES

library(arules)
library(arulesViz)
library(readr)

# To import dataset 

####################################### TO IMPORT THE FULL DATASET ######################################
dataset <- read_csv('~/Google Drive/2-SCHOOL/M.A. SU/4-IST687 Saltz/7-BB "Project"/datasetFull.csv') # to import the dataset again
dataset$X1 <- NULL # to delete the automatically inserted column
# dataset <- data.frame(dataset[dataset$City_PL == "New York",]) # to only keep the NYC data
dataset <- data.frame(dataset[dataset$Country_PL == "United States",]) # to only keep the U.S. data
dataset$Country_PL <- NULL # to delete the location information we don't need anymore
dataset$City_PL <- NULL
dataset$Spirit_PL <- NULL
dataset$Hotel.Name.Long_PL <- NULL
View(dataset)
#########################################################################################################

# To remove the unwanted variables for aRules
dataset$Likelihood_Recommend_H <- NULL # We will predict NPS_Type with aRules, so we need to remove this.
dataset$Overall_Sat_H <- NULL # We showed in the previous aprt (linear regression) that we need to take out this column for the algorithms to work well, Indeed, with aRules, we're trying to predict "NPS_Type".

# To see the data structure
str(dataset)

# To convert the first set of fariables to factors
dataset$NPS_Type = factor(dataset$NPS_Type)
dataset$POV_CODE_C = factor(dataset$POV_CODE_C)
dataset$MEMBER_STATUS_R = factor(dataset$MEMBER_STATUS_R)
dataset$LENGTH_OF_STAY_C = factor(dataset$LENGTH_OF_STAY_C)
dataset$GUEST_COUNTRY_R = factor(dataset$GUEST_COUNTRY_R)
dataset$Gender_H = factor(dataset$Gender_H)
dataset$Age_Range_H = factor(dataset$Age_Range_H)

# To create bins with the metrics/scores variables (Note that these variables will automatically be created as factors)
dataset$Guest_Room_H <- cut(dataset$Guest_Room_H, breaks = c(0, 4, 7, 10), labels=c("Guest_Room_H_LOW", "Guest_Room_H_MID", "Guest_Room_H_HIGH"))
dataset$Tranquility_H <- cut(dataset$Tranquility_H, breaks = c(0, 4, 7, 10), labels=c("Tranquility_H_LOW", "Tranquility_H_MID", "Tranquility_H_HIGH"))
dataset$Condition_Hotel_H <- cut(dataset$Condition_Hotel_H, breaks = c(0, 4, 7, 10), labels=c("Condition_Hotel_H_LOW", "Condition_Hotel_H_MID", "Condition_Hotel_H_HIGH"))
dataset$Customer_SVC_H <- cut(dataset$Customer_SVC_H, breaks = c(0, 4, 7, 10), labels=c("Customer_SVC_H_LOW", "Customer_SVC_H_MID", "Customer_SVC_H_HIGH"))
dataset$Staff_Cared_H <- cut(dataset$Staff_Cared_H, breaks = c(0, 4, 7, 10), labels=c("Staff_Cared_H_LOW", "Staff_Cared_H_MID", "Staff_Cared_H_HIGH"))
dataset$Internet_Sat_H <- cut(dataset$Internet_Sat_H, breaks = c(0, 4, 7, 10), labels=c("Internet_Sat_H_LOW", "Internet_Sat_H_MID", "Internet_Sat_H_HIGH"))
dataset$Check_In_H <- cut(dataset$Check_In_H, breaks = c(0, 4, 7, 10), labels=c("Check_In_H_LOW", "Check_In_H_MID", "Check_In_H_HIGH"))
dataset$F.B_Overall_Experience_H <- cut(dataset$F.B_Overall_Experience_H, breaks = c(0, 4, 7, 10), labels=c("F.B_Overall_Experience_H_LOW", "F.B_Overall_Experience_H_MID", "F.B_Overall_Experience_H_HIGH"))

# To check the data structure one last time
View(dataset)
str(dataset) # Perfect, every variable is now a factor, and bins have been created.


# To delete the unwanted descriptive variables to havea clean dataset
dataset$POV_CODE_C <- NULL
dataset$MEMBER_STATUS_R <- NULL
dataset$LENGTH_OF_STAY_C <- NULL
dataset$GUEST_COUNTRY_R <- NULL
dataset$Gender_H <- NULL
dataset$Age_Range_H <- NULL
View(dataset)

##############################################################################################################


# Let's now run the aRules algorithm, predicting NPS_Type with the customer metrics/scores only (starting at the "Guest_Room_H" variables and below!)

# NOTE: 
# We found no good rules for passives, unless we lowered the confidence under 0.2 (which isn't worth it) (which is under 0.5, thus the rules aren't relevant.)
# So we'll keep it binary as Professor Krudys suggested.


# Promoters
RulesPromoters = apriori(dataset, parameter=list(support=0.01, confidence=0.8, maxlen=3), appearance=list(rhs='NPS_Type=Promoter'))
summary(RulesPromoters)
inspect(RulesPromoters)
plot(RulesPromoters, main="Rules for Promoters")

## Passives
# RulesPassives= apriori(dataset, parameter=list(support=0.01, confidence=0.3, maxlen=3), appearance=list(rhs='NPS_Type=Passive'))
# summary(RulesPassives)
# inspect(RulesPassives)
# plot(RulesPassives, main="Rules Passives")

# Detractors
RulesDetractors = apriori(dataset, parameter=list(support=0.01, confidence=0.8, maxlen=3), appearance=list(rhs='NPS_Type=Detractor'))
summary(RulesDetractors)
inspect(RulesDetractors)
plot(RulesDetractors, main="Rules for Detractors")





##### FURTHER aRules ANALYSIS #######

#Step1 converting the dataset again
#A new data frame for to calculate from the dataset
df = data.frame(sapply(dataset,as.factor))
str(df)

#Step2 Creating rules
#aRules - Rules 
NYrules = apriori(df, parameter = list(support = 0.3, confidence = 0.7, maxlen = 3))
inspect(NYrules)
NYrulesI = apriori(df, parameter = list(support = 0.7, confidence = 0.7, maxlen = 3)) 
inspect(NYrulesI)
promoter = apriori(df, parameter = list(support=0.3, confidence = 0.7, maxlen = 3), appearance=list(rhs='NPS_Type=Promoter',default='lhs'))
inspect(promoter)
detractor = apriori(df, parameter = list(support = 0.01, confidence = 0.8, maxlen = 3), appearance=list(rhs='NPS_Type=Detractor',default='lhs'))
inspect(detractor)
passive = apriori(df, parameter = list(support = 0.01, confidence = 0.3, maxlen = 3), appearance=list(rhs='NPS_Type=Passive',default='lhs'))
inspect(passive)

#Visualisation  
#Plot1 
plot(grules.detractor)
plot(NYrules, main="NYC Plot 1")
plot(NYrulesI, main="NYC Plot 2")
plot(promoter, main="Promoter Guests")
plot(detractor, main="Detractor Guests")
plot(passive, main="Passive Guests")
#Plot2
plot(NYrules, method = "graph", control=list(type="items"))
plot(NYrulesI, method = "graph", control=list(type="items"))
plot(promoter, method="graph", control=list(type="items"))
plot(detractor, method="graph", control=list(type="items"))
plot(passive, method="graph", control=list(type="items"))

#Further analysis of the rules via sections of the dataset
Promoters <- subset(NYrules, rhs %in% "NPS_Type=Promoter")
inspect(Promoters)
Unorule <- Promoters[quality(Promoters)$confidence > 0.5]
inspect(Unorule)
plot(Unorule, main = "Promoters")
plot(Unorule, method="graph", control=list(type="items"))

#Does Internet matter to hotel guests?
InternetMatter <- subset(NYrulesI, rhs %in% "Internet_Sat_H=Internet_Sat_H_HIGH")
inspect(InternetMatter)
dosrule <- InternetMatter[quality(InternetMatter)$support > 0.7]
inspect(dosrule)
plot(dosrule, main = "Internet Matters")
plot(dosrule, method="graph", control=list(type="items"))

#Do condition of hotels matter??
HotelCondition <- subset(NYrulesI, rhs %in% "Condition_Hotel_H=Condition_Hotel_H_HIGH")
inspect(HotelCondition)
tresrule <- HotelCondition[quality(HotelCondition)$support > 0.75]
inspect(tresrule)
plot(tresrule, main = "Hotel Conditions")
plot(tresrule, method="graph", control=list(type="items"))

#Hotel Tranquility impacts guests?
tranqguest <- subset(NYrulesI, rhs %in% "Tranquility_H=Tranquility_H_HIGH")
inspect(tranqguest)
fourthrule <- tranqguest[quality(tranqguest)$confidence > 0.8]
inspect(fourthrule)
plot(fourthrule, main = "Hotel Tranquility")
plot(fourthrule, method="graph", control=list(type="items"))

#Staff impacts guests? 
staffcared <- subset(NYrules, rhs %in% "Staff_Cared_H=Staff_Cared_H_HIGH")
inspect(staffcared)
fifthrule <- staffcared[quality(staffcared)$confidence > 0.7]
inspect(fifthrule)
plot(fifthrule, main = "Staff Cared Rule")
plot(fifthrule, method = "graph", control=list(type="items"))

#Condition of the Hotel imapcts guesets?
SVC <- subset(NYrules, rhs %in% "Customer_SVC_H=Customer_SVC_H_HIGH")
inspect(SVC)
sixth <- SVC[quality(SVC)$confidence > 0.99]
inspect(sixth)
plot(sixth, main = "Customer High SVC Score")
plot(sixth, method = "graph", control=list(type="items"))

#Check in relates to customer satisfaction?
checkin <- subset(NYrules, rhs %in% "Check_In_H=Check_In_H_HIGH")
inspect(checkin)
eight <- checkin[quality(checkin)$confidence > 0.8]
inspect(eight)
plot(eight, main = "Check-In Relates to Satisfaction")
plot(eight, method = "graph", control=list(type="items"))










# 3. SUPPORT VECTOR MACHINES (this section was revised by David Forteguerre in the Summer of 2019)


datasetlm <- dataset # to subset
str(datasetlm)

# to remove unecessary columns
datasetlm$Hotel.Name.Long_PL <- NULL
datasetlm$NPS_Type <- NULL
datasetlm$POV_CODE_C <- NULL
datasetlm$MEMBER_STATUS_R <- NULL
datasetlm$GUEST_COUNTRY_R <- NULL
datasetlm$Gender_H <- NULL
datasetlm$Age_Range_H <- NULL


datasetlm$Overall_Sat_H <- NULL

View(datasetlm) # should be numerical data only






# to import packages
library(e1071)
library(kernlab)

# to create a to calculate the root mean squared error
rmse <- function(error)
{
  sqrt(mean(error^2))
}

# to split the data into training and testing set (using the same data as for the linear model)
library(caTools)
set.seed(123)
split = sample.split(datasetlm$Likelihood_Recommend_H, SplitRatio = 0.7)
trainingData = subset(datasetlm, split == TRUE)
testData = subset(datasetlm, split == FALSE)



# using kSVM (kernel SVM)

# to fit kSVM to training set 
model.ksvm <- ksvm(Likelihood_Recommend_H ~ ., 
                   data=trainingData, 
                   kernel="vanilladot",  #  vanilladot is the  Linear kernel, the default is Radial Basis kernel "Gaussian"
                   type = "eps-svr", 
                   kpar="automatic", # for regression, use "C-svc" for classification
                   C=30, # cost of constraints violation (default, 1)  # tried tuning this
                   cross=5, # if a integer value k>0 is specified, a k-fold cross validation on the training data is performed to assess the quality of the model: the accuracy rate for classification and the Mean Squared Error for regression
                   prob.model=TRUE) # if set to TRUE builds a model for calculating class probabilities or in case of regression, calculates the scaling parameter of the Laplacian distribution fitted on the residuals.
model.ksvm

# to test the model on the testing dataset
pred.ksvm <- predict(model.ksvm, testData)
pred.ksvm

# to calculate the error and compute the rmse
testDataNew1 <- cbind(testData, pred.ksvm)
testDataNew1$ksvmerror <- testDataNew1$Likelihood_Recommend_H - testDataNew1$pred.ksvm
View(testDataNew1)
rmse(testDataNew1$ksvmerror)
# str(testDataNew1)


# using SVM

# to fit SVM to training set 
model.svm = svm(formula = Likelihood_Recommend_H ~ .,
                data = trainingData,
                type = 'eps-regression', # for regression, can use C-classification for classification
                kernel = 'linear',
                cross=5)
?svm
model.svm

# to test the model on the testing dataset
pred.svm <- predict(model.svm, testData)
#pred.svm

# to calculate the error and compute the rmse
testDataNew2 <- cbind(testData, pred.svm)
testDataNew2$svmerror <- testDataNew2$Likelihood_Recommend_H - testDataNew2$pred.svm
View(testDataNew2)
rmse(testDataNew2$svmerror)




