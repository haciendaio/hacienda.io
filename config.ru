require 'rubygems'
require 'bundler/setup'

Bundler.require :website

require 'sinatra/base'
require 'slim'

require_relative 'app/init'

Hacienda::Website.run!