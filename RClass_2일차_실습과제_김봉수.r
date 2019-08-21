install.packages('gridExtra')
# 1.
library(dplyr)
# 2.
library(ggplot2)
# 3.
library(gridExtra)

# 4.
df <- read.csv('C:\\R\\sb19-01\\R_Class\\2일차\\tr_mod.csv')

# 5.
dim(df)
# 6.
str(df)
# 7.
names(df)

# 8.
table(df$Pclass)
# 9.
table(df$Embarked)
# 10.
table(df$Survived)
# 11.
table(df$SibSp)

# 12.
max(df$Age)
# 13.
min(df$Age)

# 14.
p1 = ggplot(data=df, aes(x=Age, y=Survived, fill=Sex)) + geom_col()
# 15.
p2 = ggplot(data=df, aes(x=Sex, y=Survived, fill=Sex)) + geom_col()

# 16.
p3 = ggplot(data=df, aes(x=Pclass, y=Survived, fill=Sex)) + geom_col()
# 17.
p4 = ggplot(data=df, aes(x=Embarked, y=Survived, fill=Sex)) + geom_col()

# 18.
grid.arrange(p1, p2, p3, p4, ncol=2, nrow=2, top='Titanic_Survived')

# 19.
# 성별

# 20.
dim(df)
is.na(df)
sum(is.na(df))

colSums(is.na(df))

colSums(!is.na(df))
# 21.

# 22.
df$Cabin <- as.factor(ifelse(is.na(df$Cabin), 'AAA', as.character(df$Cabin)))
df$Cabin
str(df$Cabin)
