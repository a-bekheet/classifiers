% main.m
clear; clc;

% Load data
load("assignment1.mat")

% Get dimensions
[features, samples, classes] = getDataDimensions(digits_train);

% Train classifiers
[u_ki, var, gaussianClassifier] = trainGaussianClassifier(digits_train, features, samples, classes);
[n_ki, naiveBayesClassifier] = trainNaiveBayes(digits_train, features, samples, classes);

% Visualize results
plotClassifierMeans(u_ki, classes, 'Gaussian Classifier', 'Gaussian_Classifier_Means.png');
disp("Value of σ² = " + num2str(var));
plotClassifierMeans(n_ki, classes, 'Naive Bayes Classifier', 'NaiveBayesian_Classifier_Means.png');

% Test classifiers
[gaussian_errors, bayesian_errors] = testClassifiers(digits_test, u_ki, n_ki, var, features, classes);

% Display results
displayResults(gaussian_errors, bayesian_errors, classes);