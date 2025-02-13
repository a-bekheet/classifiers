% plotClassifierMeans.m
function plotClassifierMeans(means, classes, title_text, filename)
    figure;
    for k = 1:classes
        subplot(ceil(classes / 5), 5, k);
        imagesc(reshape(means(:,k), 8, 8)');
        axis equal; axis off; colormap gray;
        title(['k = ' num2str(mod(k,10))]);
    end
    sgtitle(['Plot of \mu_k for ' title_text]);
    saveas(gcf, filename);
end