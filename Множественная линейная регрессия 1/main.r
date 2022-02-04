scope = list(lower = model_null, upper = model_full)

ideal_model <- step(model_null, scope = scope, direction = 'forward')
