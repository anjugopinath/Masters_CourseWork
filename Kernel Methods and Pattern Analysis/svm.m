model = svmtrain(normal_trainLabels, normal_train, '-s 2 -t 2 -g 0.01 -n 0.15');
[predicted_label, accuracy, probability_estimates] = svmpredict(novelty_testLabels, novelty_test, model);

C = confusionmat(novelty_testLabels, predicted_label)
% truePositive = C(2,2);
% falseAlarm = C(2,1)
% perTruePositive = truePositive / sum(C(:));
% perFalseAlarm = falseAlarm/ sum(C(:));
