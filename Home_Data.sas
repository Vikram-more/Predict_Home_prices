Proc import 
datafile= "//reports/opa/standard/Vikram_Dev/Learning/Home_Price_Predictions/Documents/HousePricePrediction.xlsx"
out= Data_Home
dbms= xlsx
replace;
run;

Proc SQL;
Create table Home_data as 
Select *
from Data_Home
Where SalePrice > 250000
;
run;