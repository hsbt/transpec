require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)
Rubocop::RakeTask.new(:style)

Dir['tasks/**/*.rake'].each do |path|
  load(path)
end

task default: %w(spec style readme)

task travis: %w(spec style readme:check test:all)
