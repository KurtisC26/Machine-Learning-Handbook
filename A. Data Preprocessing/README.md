# Data Processing Notes

<p> Before training any machine learning model, we need to clean and process the dataset for optimal results. Here some of the key things to edit during the process </p>
  
  
 
<h3> Handling missing data </h3>
Reference: https://scikit-learn.org/stable/modules/impute.html#impute
<p>A basic strategy to use incomplete datasets is to discard entire rows and/or columns containing missing values. However, this comes at the price of losing data which may be valuable (even though incomplete). A better strategy is to impute the missing values, i.e., to infer them from the known part of the data. </p>


