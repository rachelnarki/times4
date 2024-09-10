library(devtools)
library(roxygen2)
library(usethis)

#usethis::create_package(path = "C:/Users/narks/OneDrive/Documents/GitHub/times4")

#Set the path where you want to save your package
use_git_config(user.name="rachel.narki", user.email="narks23@gmail.com")


# Step 2:Generate a Personal Access Token (PAT) for GitHub using `usethis` package
# This will open a browser window where you can create a new GitHub token.
# A GitHub token is necessary for authentication to allow R to connect with GitHub.
usethis::create_github_token()

# Step 3: Set your Personal Access Token (PAT) in RStudio for future use
# After creating the GitHub token, you’ll need to copy the token from the browser.
# Use `credentials::set_github_pat()` to store the token so you don't have to manually enter it each time.
credentials::set_github_pat()

# Step 4: Create a GitHub repository and push your local project to GitHub
# This command will initialize a new GitHub repository, create a remote, and push your current project to GitHub.
usethis::use_git()

#Get package to GitHub
usethis::use_github()
# usethis::use_git_remote("origin", url = NULL,
#                         overwrite = TRUE)
# Step 5: Initialize a local Git repository (if not already done)
# If your local project folder is not already a Git repository, run this command to set it up.
# This step ensures that Git is tracking your project files locally before pushing to GitHub.
use_git()

usethis::use_readme_rmd()

devtools::build_readme()

#When we think we are done with our code in the package, we can check that our package is still in working order
devtools::check()

#Afterwards we can install the package and use library() to load it.
devtools::install()


#This code is for giving your package a name
usethis::use_r("times4")

#' Title Times number 4
#'
#' @param x A numeric value
#'
#' @return Output the input number multiplied by 4
#' @export
#'
#' @examples
#' times4(3)
#'
times4 <- function(x){
  x*4
}


# Loads all functions, data, and dependencies from your package into the current R session.
# This allows you to test and use the functions without having to install the package.
# It’s very useful when developing a package, as it refreshes the package environment.
devtools::load_all()



# Updates the documentation for the package.
# It reads the Roxygen comments (starting with #') you’ve added in your code,
# and automatically generates help files, a NAMESPACE file, and other necessary package documents.
devtools::document()




























