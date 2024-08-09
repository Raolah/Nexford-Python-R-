# Generate a data frame with random data
set.seed(42)  # Setting seed for reproducibility

# Define a list to hold the workers
workers <- list()

# Now generate a worker data
for (i in 1:400) {
  worker <- list(  
  id = i,
  name= sample (c("worker"),400, replace = TRUE),
  age = sample(25:65, 400, replace = TRUE),
  salary = round(runif(10, min = 5000, max = 35000), 2),
  gender = sample(c("male", "female"), 400, replace = TRUE),
  employee_level = sample (c("A1", "A2", "A3", "A4", "A5"), 400, replace = TRUE),
  department = sample(c("HR", "Marketing", "Accounting", "Sales", "Finance", "IT"),400, replace = TRUE) 
)
  workers[[i]] <- worker  
}
# Print the first 10 workers to verify creation of workers list
print(workers[1:10])



# Generate payment slips for 400 workers
workers <- c("id", "name", "salary", "gender", "employee_level", "department")
for (worker in workers) {
  print(worker)
}


# Conditional statement within FOR loop
# Create a variable to assign value
salary <- 15000
employee_level <- c("A1", "A2", "A3", "A4", "A5")

# Conditional statement to assign employee level
# If salary is greater than $10,000 and less than $20,000
for (i in 1:400) {
  if (salary > 10000 && salary < 20000) {
    employee_level <- "A1"
    print("A1")
  } else {
    print("Unknown")
  }
}


# Conditional statement within FOR loop
# Create a variable to assign value
salary <- 15000
gender <- "female"

# Conditional statement to assign employee level
# If salary is greater than $7,500 and less than $30,000
for (female in 1:400) {
  if (salary > 7500 && salary < 30000 && gender == "female") {
    print("A5-F")
  } else {
    print(" Not Female")
  }
}


# Exceptional Handling of errors of payment processing
# Gather all codes to execute error handling for payment process
set.seed(123)  # For reproducibility

# Define function to generate workers list data
payment_slip <- function(num_workers) {
  workers <- list()
  for (i in 1:num_workers) {
    worker <- list(
      id = i,
      name = paste("Worker", i, sep = "_"),
      salary = sample(5000:35000, 1),
      gender = sample(c("male", "female"), 1),
      employee_level = sample(c("A1", "A2", "A3", "A4", "A5"), 1),
      department = sample(c("HR", "Marketing", "Accounting", "Sales", "Finance", "IT"), 1)
    )
    workers[[i]] <- worker
  }
  return(workers)
}

# Define the function to generate a payment processing slip
payment_processing <- function(workers) {
  for (worker in workers) {
    tryCatch({
      # Payment processing output
      cat(sprintf("processing payment for %s with salary %d\n", worker$name, worker$salary))
      
      # Conditional statement for employee salary
      if (worker$salary > 10000 && worker$salary < 20000) {
        worker$employee_level <- "A1"
      } else if (worker$salary > 7500 && worker$salary < 30000 && worker$gender == "female") {
        worker$employee_level <- "A5-F"
      } else {
        worker$employee_level <- "Unknown"
      }
    }, error = function(e) {
      cat(sprintf("Error processing payment for %s: %s\n", worker$name, e$message))
    }, finally = {
      cat(sprintf("Finished processing worker %d\n", worker$id))
    })
    cat(sprintf("Payment processed successfully for %s\n", worker$name))
  }
}

# This will generate the list of workers
workers <- payment_slip(5)

# This will generate the payment slips
payment_processing(workers)

