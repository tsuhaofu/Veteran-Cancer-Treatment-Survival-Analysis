library(survival)

veteran = veteran
str(veteran )
summary(veteran )
sum(is.na(veteran ))
fit_ln = survreg(Surv(time,status)~trt,data=veteran,dist = "lognormal")
fit_w = survreg(Surv(time,status)~trt,data=veteran,dist = "weibull")
fit_ll = survreg(Surv(time,status)~trt,data=veteran,dist = "loglogistic")
summary(fit_ln)
summary(fit_w)
summary(fit_ll)

km_plain= survfit(Surv(time, status) ~ trt, data= veteran, conf.type="plain")
km_log= survfit(Surv(time, status) ~ trt, data= veteran, conf.type="log")
km_loglog = survfit(Surv(time, status) ~ trt, data= veteran, conf.type="log-log")

summary(km_plain)
summary(km_log)
summary(km_loglog)

plot(km_log, col = c("red","blue"),conf.int=FALSE,xlab="time",ylab="survival probability")
legend("topright", c("trt1", "trt2"),lty=1,col = c("red","blue"))

# log-rank test
survdiff(Surv(time, status) ~ trt, data= veteran)
plot
#Cox
cox.fit2 = coxph(Surv(time, status) ~ strata(trt), data= veteran)
plot(survfit(cox.fit2), col = c("red","blue"),fun="cloglog",xlab="log(time)",ylab="log-log survival") 
legend("topleft", c("trt1", "trt2"),lty=1,col = c("red","blue"))
#Weibull
fit_w = survreg(Surv(time,status)~trt,data=veteran,dist = "weibull")
summary(fit_w)