% displayResults.m
function displayResults(gaussian_errors, bayesian_errors, classes)
    ks = 1:classes;
    disp("Gaussian Classifier Errors per Class");
    disp(ks);
    disp(gaussian_errors');
    disp("Naive Bayes Classifier Errors per Class");
    disp(ks);
    disp(bayesian_errors');
end