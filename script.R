# Apriori

install.packages('arules')
library(arules)
dataset1 = read.transactions('MBO.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset1)
itemFrequencyPlot(dataset1, topN = 10)

# Training Apriori on the dataset
rules = apriori(data = dataset1, parameter = list(support = 0.004, confidence = 0.2))

# Visualising the results
inspect(sort(rules, by = 'lift'))

# Eclat

# install.packages('arules')
# library(arules)
dataset2 = read.transactions('MBO.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset2)
itemFrequencyPlot(dataset2, topN = 10)

# Training Eclat on the dataset
rules = eclat(data = dataset2, parameter = list(support = 0.003, minlen = 2))

# Visualising the results
inspect(sort(rules, by = 'support'))