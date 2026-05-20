df = read.csv("D:/data analysis/case study/Bank_transacttions/Ban_transactions_dataset.csv")
View(df)
summary(df)

sapply(df, function(x) sum(is.na(x)) / length(x) *100)


df = df %>%
  +     mutate(
    +         Age = ifelse(is.na(Age), median(Age, na.rm = TRUE), Age),
    +     )

mean = mean(df$Age)
 print(mean)
 [1] 43.4698
 
median = median(df$Age)
 print(median)
 [1] 43
 
 
 max = max(df$Age)
  min = min(df$Age)
  range = max - min
  print(range)
 [1] 51