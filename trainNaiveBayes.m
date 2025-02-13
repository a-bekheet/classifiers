% trainNaiveBayes.m
function [n_ki, naiveBayesClassifier] = trainNaiveBayes(digits_train, features, samples, classes)
    log_digits_train = digits_train > 0.5;
    n_ki = zeros(features, classes);
    naiveBayesClassifier = zeros(samples, classes);
    
    for k = 1:classes
        n_ki(:, k) = mean(log_digits_train(:, :, k), 2);
    end
    
    for k = 1:classes
        naiveBayesClassifier(:, k) = prod((n_ki(:,k) .* (1-n_ki(:,k))),1);
    end
end