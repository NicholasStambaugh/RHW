model <- lm(data=EGR, log(saleprice) ~ log(lotsizeacres))
summary(model)

model2 <- lm(data = GAS186, log(quantity) ~ log(price) + weekday)
summary(model2)

model3 <- lm(data = ACSFT, log(incwage) ~ eduyears + age + sex + inschool, subset = incwage>0)
summary(model3)

model4 <- lm(data = ACSFT, log(incwage) ~ eduyears + sex + commutingtime + I(commutingtime^2), subset = incwage>0)
summary(model4)

model5 <- lm(data=GDP2, log(gdppercapita) ~ log(capitalpercapita) + investment_pc + humancapital_index)
summary(model5)

model6 <- lm(data=ACSFT, log(incwage) ~ eduyears + sex + age + I(age^2) + hadchildlastyear, subset = (incwage>0))
summary(model6)

ACSFT$hadchildlastyear
             