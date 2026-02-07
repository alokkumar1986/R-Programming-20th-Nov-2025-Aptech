df <- data.frame(
  "name" = c("A", "B", "C"),
  "age" = c(22, 20, 24),
  "mark" = c(100, 98, 89)
)

print(df)

summary(df)

df[1]

df['name']

df$name

df[1, 1]

df[1, 3]

df[c(1), ]

df[c(3), ]

df[ ,c(3)]

df[1, ]

df[3, ]

df[, 3]



newrow <- c("D", 23, 97)

df1 = rbind(df, newrow)

df1


df2 <- data.frame(
  "name" = c("E"),
  "age" = c(24),
  "mark" = c(87)
)

df3 = rbind(df, df2)
df3


df4 <- data.frame(
  "course" = c("Python", "R", "Power BI")
)

df5 = cbind(df, df4)
df5




df[c(-1), ]

df[, c(-2)]


nrow(df)
ncol(df)
length(df)
