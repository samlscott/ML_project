
# Random Forest

# Loading packages
library(stats)
library(dplyr)
library(randomForest)

# Split data into Training and Testing
set.seed(123)  # for reproducibility
index_1 <- sample(1:nrow(heart_failure), round(nrow(heart_failure) * 0.7))
train_1 <- heart_failure[index_1, ]
test_1  <- heart_failure[-index_1, ]

# Model
RFM = randomForest(HeartDisease~., data = train_1)

# Evaluate model accuracy
Heart_pred = predict(RFM, test_1)
test_1$Heart_pred = Heart_pred

# Build confusion matrix
CFM = table(test_1$HeartDisease, test_1$Heart_pred)
CFM

Classification_Accuracy = sum(diag(CFM)/sum(CFM))
Classification_Accuracy

