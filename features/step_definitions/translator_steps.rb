Given /^the word "(.*?)"$/ do |input|
  @word = input
end

When /^the translator is run$/ do
  @output = Ubyray.translate_word(@word)
end

Then /^it generates the translation "(.*?)"$/ do |output|
  @output.should == output
end

