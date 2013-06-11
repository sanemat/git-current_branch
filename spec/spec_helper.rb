$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
require 'rubygems'
require 'coveralls'
Coveralls.wear!('rails')
require 'bundler/setup'
require 'git/current_branch'
