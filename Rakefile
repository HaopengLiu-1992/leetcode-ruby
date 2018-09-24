task default: :test

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.pattern = 'test/*_Test.rb'
  test.verbose = true
end
