# **rspec notes**
* describe: defines a group of tests, or an Example group, in rspec terminology. is precided by a block
  * ```ruby
    describe <TestCase> do 
      <tests>
    end  
    ```
  * can take a class name or string argument 
* context: similar to describe, but might be used to note the conditions under which the test will occur, like, "When passing bad parameters to the fooBar() method". Takes a class name and/or string arg. is not mandatory
* it: describes a test, or Example. 
* expect: defines expected behavior of function
  * used with to, forming an english like syntax, eg `expect(message).to eql "hello world"`
  * eql: an example of a Matcher. in this case, it is testing for string equality
* other matchers: conditionals( <, >, <=, >=), match (passes when actual matches a regular expression), be_instane_of(tests whether actual is instance of expected class), test whether value is true/false/truthy/falsey, test whether an error is raised  
* doubles: used in a test of a class as a standin for an instance of a seperate class. this ensures that any failures will be because of an issue of this class and not a different one
* mocks: similar to doubles but stand in for a method of a different class that may not exist yet. use them with allow method ie `allow(student).to receive(:name) {'John Smith'}`
* cleanup: certain actions may be performed before or after tests run to ensure each test is not affected by previous conditions that may have been created. an example of this may be making sure each test starts with a new instance of the Class. 
  ```ruby
    before(:each) do
      # code
    end
  ```
  * before and after are the most common hooks for performing clean up. they can be passed symbols like :each and :all 
* tags: provide a way of describing whish tests of a example group to run to the rspec cli
  ```ruby
  describe "How to run specific Examples with Tags" do 
   it 'is a slow test', :slow = > true do 
      sleep 10 
      puts 'This test is slow!' 
   end 
   
   it 'is a fast test', :fast = > true do 
      puts 'This test is fast!' 
   end 
  end
  ```
  * `$ rspec --tag slow tag_spec.rb` runs only test with the slow tag
* helper methods: if two examples use the same or similar lines of codes, these lines can be extracted into a helper method, which is just a normal ruby method in the scope of the describe block
* the describe, context and it strings can and should read like an english sentance
* formatter: a option flag used to determine how test results show up
* expect method: a method that evalueates an expression. 
  * used in concert with other methods, it forms an expectation. 
    * ie `expect(1 + 1).to eq(2)` means you expect that the expression 1 + 1 will evaluate to 2
