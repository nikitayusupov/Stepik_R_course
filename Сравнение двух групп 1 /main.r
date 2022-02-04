ToothGrowth$group = factor(
  ifelse(
    ToothGrowth$supp == 'OJ' & ToothGrowth$dose == 0.5,
    'Orange',
    ifelse(
      ToothGrowth$supp == 'VC' & ToothGrowth$dose == 2,
      'Askorbine',
      NA
    )
  )
)

t_stat <- t.test(len ~ group, ToothGrowth)$statistic