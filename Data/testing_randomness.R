#Set working directory
setwd('~/Desktop/OpenSSL-wNAF-analysis-with-Flush-Reload/Data/')

#Read in the data
rands = read.table('random_test_vals.csv', header=T)

#Rename columns
#colnames(Countries) = c('Country', 'LifeExp', 'GDP', 'HIV')

rands$rand_chars = as.character(rands$test_hex)
rands$rand_ints = strtoi(c(rands$test_hex))

attach(rands)
hist(rand_ints, breaks = 100, freq = FALSE, right = TRUE, density = 10, angle = 45, col = 'BLUE', border = NULL, main = paste("Histogram of random values"), xlab = "Random Values")