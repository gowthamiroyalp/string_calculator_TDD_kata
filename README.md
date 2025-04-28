# string_calculator_TDD_kata
String Calculator TDD Kata using Ruby programming language and Rspec to write testcases to acheive Test Driven Development.

# problem statement

https://blog.incubyte.co/blog/tdd-assessment/

https://osherove.com/tdd-kata-1/

 ###############################################################################################

Steps:
1. Create a simple String calculator with a method signature like this:

int add(string numbers)
Input: a string of comma-separated numbers
Output: an integer, sum of the numbers
Examples:

Input: “”, Output: 0
Input: “1”, Output: 1
Input: “1,5”, Output: 6

2. Allow the add method to handle any amount of numbers.

3. Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)

4. Support different delimiters:

To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]". For example, "//;\n1;2" where the delimiter is ";" should return 3.

5. Calling add with a negative number will throw an exception: "negative numbers not allowed <negative_number>".

If there are multiple negative numbers, show all of them in the exception message, separated by commas.

6. Numbers bigger than 1000 should be ignored, 
 so adding 2 + 1001 = 2

 ############################# Problem solution logic steps ###################################

# Setting up a clean environment 
1. Create the github repo and clone in the local system.
	
	mkdir workspace
	cd workspace
	git clone https://github.com/gowthamiroyalp/string_calculator_TDD_kata.git
	cd string_calculator_TDD_kata

# Installing RSpec
1. Initialize the bundle for creating 'Gemfile' and later can use to add the gems
	
	bundle init

2. Add 'rspec' gem and configure
	
	gem 'rspec' #in Gemfile
	bundle install #Run to install
	bundle info 'rspec' #Verify the installed gem info and also can check it in the Gemfile.lock for installed dependencies
	bundle exec rspec --init #Initialize RSpec, which will creates .rspec (RSpec config) and spec/spec_helper.rb (test configuration)

# Creating the Ruby class and spec file
1. create rb file for the StringCalculator class
2. create spec rb file for the StringCalculatorSpec class in spec folder
3. write the logic and specs for running test cases

# Running testcases/specs
1. run the spec file:
	bundle exec rspec spec/string_calculator_spec.rb
	bundle exec rspec #whole specs

# verify, debug and fix if any errors in test cases execution

# Push to the 'main -> string_calculator_cmd_line_feature' git branch.
	git clone repo_clone
	git checkout -b "new_branch_name"
	git add file1 file2
	git commit -m "commit msg"
	git push 

	** To push the current branch and set the remote as upstream, use

    git push --set-upstream origin string_calculator_cmd_line_feature
    To have this happen automatically for branches without a tracking upstream, see 'push.autoSetupRemote' in 'git help config'.

 ###############################################################################################


** public git repo with specific branch: 
https://github.com/gowthamiroyalp/string_calculator_TDD_kata/tree/string_calculator_cmd_line_feature **

###############################################################################################
