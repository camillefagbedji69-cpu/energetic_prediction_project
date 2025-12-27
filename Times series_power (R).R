## Séries temporelles avec R 

# installation des packages 
install.packages("forecast")
install.packages('tseries')

##activation de la librairie 

library(forecast)

##importation des données 

serie <-  read.csv("C:/Système/Projet IA/Notebooks/Power.csv", sep = ",", 
                   header = TRUE)

## données visualisées et corrigé. Direction AUTO-ARIMA 

fit <- auto.arima(serie$Power)

# Résumé du modèle
summary(fit)


## prédiction 

fc <- forecast(fit, h=12)

## visualisation
plot(fc)

## vérification des résidus 

checkresiduals(fit)



## données d'entraînement et validation 

ts_data <- serie$Power

# Taille du test (ex: 12 derniers points)
h <- 100
train <- head(ts_data, length(ts_data) - h)
test <- tail(ts_data, h)

# Ajustement du modèle ARIMA sur le train
fit_train <- auto.arima(train)

# Prévision sur le test
fc <- forecast(fit_train, h = h)

# Comparer les prévisions avec les vraies valeurs
accuracy(fc, test)


## intégration de la saisonnalité 

fit_train <- auto.arima(train, seasonal=TRUE)

fc_2 <- forecast(fit_train, h = h)

accuracy(fc_2, test)
