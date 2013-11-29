Imagine you're writing software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Ocassionally it may be stormy, in which case no planes can land or take off.

Your task is to creat a set of classes/modules to make the given test suite pass. You will need to use random number generator to set the weather (it is normally sunny but on rare occasions it may be stormy). In your tests, you'll need to use stubbing to overide random weather. Finally, every plane must have a status indicating whether its flying or landed. You may expand on the original tests. 

(stubbing is something that we haven't touched yet - you'll need to read the documentation to learn how to use test doubles: https://www.relishapp.com/rspec/rspec-mocks/docs. There's an example of using a test double to test a die that's relevant to testing random weather in the test.)

The tests are located at http://bit.ly/1dFDf1

Please create seperate files for every class, module and test suite. Commit it to a repo on Github by the end of the day (or on the weekend if you started late).

The submission will be judged on the follwing criteria: 
- Test Pass
- Tests coverage is good 
- The code is elegant: every class had a clear responsibilty, methos are short etc.