% trainGaussianClassifier.m
function [u_ki, var, gaussianClassifier] = trainGaussianClassifier(digits_train, features, samples, classes)
    u_ki = zeros(features, classes);
    var = 0;
    gaussianClassifier = zeros(samples, classes);
    
    for k = 1:classes
        u_ki(:, k) = mean(digits_train(:, :, k), 2);
        var = var + sum(sum((digits_train(:, :, k) - u_ki(:, k)).^2));
    end
    var = var / (features * samples * classes);
end