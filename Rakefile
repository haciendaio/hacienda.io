require 'bundler/setup'

desc 'Run using default runner'
task run: ['run:rerun']

namespace :run do

  desc 'Run rackup'
  task :rackup do
    sh 'rackup config.ru'
  end

  desc 'Run puma'
  task :puma do
    sh 'puma -C config/puma.rb'
  end

end