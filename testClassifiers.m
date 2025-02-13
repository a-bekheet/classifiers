% testClassifiers.m
function [gaussian_errors, bayesian_errors] = testClassifiers(digits_test, u_ki, n_ki, var, features, classes)
    test_samples = size(digits_test, 2);
    digits_test_reshaped = reshape(digits_test, features, test_samples * classes);
    bdigs_test_reshaped = digits_test_reshaped > 0.5;
    
    gaussianClassifier_test = zeros(test_samples * classes, classes);
    naiveBayesClassifier_test = zeros(test_samples * classes, classes);
    gaussian_errors = zeros(classes, 1);
    bayesian_errors = zeros(classes, 1);
    
    prefactor = (2 * pi * var)^(-features / 2);
    
    for k = 1:classes
        gaussianClassifier_test(:, k) = prefactor * exp(-(sum((digits_test_reshaped(:,:) - u_ki(:,k)).^2, 1)) / (2 * var));
        naiveBayesClassifier_test(:, k) = prod((n_ki(:,k).^bdigs_test_reshaped) .* (1-n_ki(:,k)).^(~bdigs_test_reshaped));
    end
    
    [~, gaussian_test_results] = max(gaussianClassifier_test, [], 2);
    [~, bayesian_test_results] = max(naiveBayesClassifier_test, [], 2);
    
    gaussian_test_results = reshape(gaussian_test_results, test_samples, classes);
    bayesian_test_results = reshape(bayesian_test_results, test_samples, classes);
    
    for k = 1:classes
        gaussian_errors(k,1) = sum(gaussian_test_results(:,k) ~= k);
        bayesian_errors(k,1) = sum(bayesian_test_results(:,k) ~= k);
    end
end