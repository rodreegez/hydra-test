require 'hydra'
require 'hydra/tasks'

# Tasks we want to be able to run locally and remotely
Hydra::GlobalTask.new('db:create:all')
Hydra::GlobalTask.new('db:test:prepare')
Hydra::GlobalTask.new('db:migrate')

# Put all tests into one array
all_tests = (Dir.glob("test/unit/**/*_test.rb") +
             Dir.glob("test/functional/**/*_test.rb") +
             Dir.glob("test/integration/**/*_test.rb"))

# Specify tests that don't play well with others
dangerous_tests = []

# Seperate the good from the bad
safe_tests = all_tests - dangerous_tests

Hydra::TestTask.new('hydra:safe') do |t|
  t.files = safe_tests
  t.verbose = true
end
Hydra::TestTask.new('hydra:dangerous') do |t|
  t.files = dangerous_tests
  # Dangerous tests are run in serial
  t.serial = true
  t.verbose = true
end

# run all tasks together
task :hydra => ['hydra:safe', 'hydra:dangerous']
