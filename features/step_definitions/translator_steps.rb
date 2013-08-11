Given /^the input "(.*?)"$/ do |input|
  @word = input
end

When /^the translator is run$/ do
  @output = Ubyray.translate_word(@word)
end

Then /^the output should be "(.*?)"$/ do |output|
  @output.should == output
end

