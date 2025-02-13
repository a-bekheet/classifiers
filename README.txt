======================================
Digit Recognition using MATLAB
======================================

Overview:
This program implements Gaussian and Naive Bayes classifiers for handwritten digit recognition. 
It trains both classifiers on digit data and evaluates their performance.

Files:
- main.m                 - Runs the entire program
- getDataDimensions.m    - Retrieves dimensions from the input dataset
- trainGaussianClassifier.m - Trains the Gaussian classifier
- trainNaiveBayes.m      - Trains the Naive Bayes classifier
- plotClassifierMeans.m  - Generates visualizations of classifier means
- testClassifiers.m      - Tests both classifiers using the test set
- displayResults.m       - Displays classification results

Requirements:
- MATLAB
- The file `assignment1.mat` must be in the same directory as the scripts.

How to Run:
1. Place all `.m` files and `assignment1.mat` in the same directory.
2. Open MATLAB.
3. Run the script:


Expected Output:
- Two images showing the classifier means:
- `Gaussian_Classifier_Means.png`
- `NaiveBayesian_Classifier_Means.png`
- A table displaying the number of errors per digit for both classifiers.
- Console output showing overall error rates for both classifiers.

Notes:
- This program assumes each handwritten digit is represented as a 64-dimensional vector (8x8 pixel images).
- The Gaussian classifier assumes all feature covariances are zero, and the Naive Bayes classifier binarizes pixel values.

Author:
Ali Bekheet
ELEC 425
