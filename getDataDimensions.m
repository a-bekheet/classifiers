% getDataDimensions.m
function [features, samples, classes] = getDataDimensions(digits_train)
    features = size(digits_train, 1);
    samples = size(digits_train, 2);
    classes = size(digits_train, 3);
end