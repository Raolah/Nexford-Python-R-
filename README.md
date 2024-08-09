# Nexford-Python-R-

## README

## HIGHRIDGE CONSTRUCTION COMPANY PAYMENT SLIPS PROJECT

The company want to generate a payment slip for its employees and will be needing the services of a software engineer to develop a payment slip using python code and R.
## INSTRUCTIONS

Step 1: Develop a Python program that fulfills the requirements outlined in the assignment description.

Step 2: Ensure your program contains a list variable with at least 400 workers, created dynamically.

Step 3: Implement a for loop in your Python program to generate payment slips for all workers in the list.

Step 4: Incorporate the specified conditional statements within the loop.

Step 5: Add exception handling in your Python code to handle potential errors.

Step 6: Convert your Python code into R.

Step 7: Save your work as a zipped file and include a README file with instructions on how to use both your Python and R code.


## Installation

Generate a payslip using Python

```bash
import random
worker = []
```
    
Convert Python code to R

```bash
library(dplyr)
workers <- list()
```
    
## Running python code

To run Pyton code use

```bash
  print(workers)
```

To run R code use

```bash
 print(workers[1:10])
```

## Lessons Learned

In order to generate a payment slip, randomly generate a data from python and assign a variable (workers) and create a list of values like the id, name, gender, salary e.t.c.After writting out the code the run it using print(). This will callout the randomly generated employee data.


```bash
#Generate payment slips for 400 workers
workers = ["id", "name", "salary", "gender", "employee_level", "department"]
for worker in workers:
    print(worker)
```



After the data is generated then the conditional statement using the For Loop is applied to find out those with less or grater salary.

If the salary is greater than $10,000 and less than $20,000, assign the Employee level as "A1.
```bash
for employee_level in range(1, 401):
```

If the salary is greater than $7,500 and less than $30,000 and the employee is female, set the Employee level as "A5-F."
```bash
for female in range(1,401):
```

Then we go on to the exceptional error handling where we define the function of all the varaibles of the employees data.

```bash
def payment_slip(num_workers):
    workers = []
```

And also define the function to process the payment slip

```bash
def payment_processing(workers):
     for worker in workers:
```
Which the try, except and finally code is excecuted for error handling.

Finally, all the codes written in python is then converted to R.

Note: While all the codes are written in python and R, comments are also written to help follow and understand the codes and purpose which is represented by the # sign.

In this project, we made use of variables, integers, strings, list, tuples, (if, elif and else statement), for loop, def function and comparison operation.


Here is the link to the Python project:
http://localhost:8888/notebooks/Module%201%20Assignment%20BAN6420%20ROA141383.ipynb

R link:
