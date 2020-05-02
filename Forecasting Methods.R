##Simple Forecasting Methods

library(fpp2)
# Set training data from 1992 to 2007
beer_production <- window(ausbeer,start=1992,end=c(2007,4))
# Plot some forecasts
autoplot(beer_production) +
  autolayer(meanf(beer_production, h=11),
            series="Mean", PI=FALSE) +
  
  autolayer(naive(beer_production, h=11),
            series="Naïve", PI=FALSE) +
  
  autolayer(snaive(beer_production, h=11),
            series="Seasonal naïve", PI=FALSE) +
  ggtitle("Forecasts for quarterly beer production") +
  xlab("Year") + ylab("Megalitres") +
  guides(colour=guide_legend(title="Forecast"))