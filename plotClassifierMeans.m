% plotClassifierMeans.m
function plotClassifierMeans(means, classes, classifier_type, filename)
    figure;
    for k = 1:classes
        subplot(ceil(classes / 5), 5, k);
        imagesc(reshape(means(:,k), 8, 8)');
        axis equal; axis off; colormap gray;
        title(['k = ' num2str(mod(k,10))]);
    end
    
    % Use different symbols based on classifier type
    if strcmp(classifier_type, 'Gaussian Classifier')
        symbol = '\mu';
    else  % Naive Bayes
        symbol = '\eta';
    end
    
    sgtitle(['Plot of ' symbol '_k for ' classifier_type]);
    saveas(gcf, filename);
end