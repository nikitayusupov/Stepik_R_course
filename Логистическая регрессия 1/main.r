log_coef <- glm(am ~ disp + vs + mpg, mtcars, family = 'binomial')$coefficients
