require 'bundler/setup'

task :default do
  puts 'starting shotgun'
  sh 'shotgun --port=9292 config.ru'
end

desc 'Run Rackup'
task :rackup do
  sh 'rackup config.ru'
end