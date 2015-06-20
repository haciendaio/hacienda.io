require 'rubygems'
require 'bundler/setup'

Bundler.require :website

require 'sinatra/base'
require 'slim'
puts Pathname.new(File.dirname(__FILE__)).join('app/init').to_s
require_relative Pathname.new(File.dirname(__FILE__)).join('app/init.rb').to_s

run Hacienda::Website
