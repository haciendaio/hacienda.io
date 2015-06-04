require 'rubygems'
require 'bundler/setup'

Bundler.require :website

require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'app', 'init')

run Hacienda::Website