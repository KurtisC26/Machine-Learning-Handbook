<h2>Logistic Regression</h2>
We could start by assuming p(x) be the linear function. However, the problem is that p is the probability that should vary from 0 to 1 whereas p(x) is an unbounded linear equation. To address this problem, let us assume, log p(x) be a linear function of x and further, to bound it between a range of (0,1), we will use logit transformation. Therefore, we will consider log p(x)/(1-p(x)). Next, we will make this function to be linear: 
<br>
![image](https://user-images.githubusercontent.com/58488172/150695442-e24cf3b6-9768-4277-9456-065707203ec0.png)


When we solve for p:
<br>
![image](https://user-images.githubusercontent.com/58488172/150695452-1a3e99df-583b-4236-aee0-f3b906a51ace.png)

To make the logistic regression a linear classifier, we could choose a certain threshold, e.g. 0.5. Now, the misclassification rate can be minimized if we predict y=1 when p ≥ 0.5 and y=0 when p<0.5. Here, 1 and 0 are the classes.
Since Logistic regression predicts probabilities, we can fit it using likelihood. Therefore, for each training data point x, the predicted class is y. Probability of y is either p if y=1 or 1-p if y=0. Now, the likelihood can be written as: <br>
![image](https://user-images.githubusercontent.com/58488172/150695505-664911ad-17a4-4319-b752-a6556e577dfd.png)



The multiplication can be transformed into a sum by taking the log: <br>
![image](https://user-images.githubusercontent.com/58488172/150695545-48365ee4-176a-4028-b305-cf74f990e7b9.png)


Further, after putting the value of p(x):<br>
![image](https://user-images.githubusercontent.com/58488172/150695561-ecce79e7-a1eb-424c-b6c6-0f2f84fbe3ba.png)
<br>
The next step is to take a maximum of the above likelihood function because in the case of logistic regression gradient ascent is implemented (opposite of gradient descent).


reference: https://medium.com/analytics-vidhya/the-math-behind-logistic-regression-c2f04ca27bca
