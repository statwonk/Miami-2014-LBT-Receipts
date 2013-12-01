#!/usr/bin/env rackup
LIB_PATH = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$:.unshift LIB_PATH
require 'myapp/environment'
MyApp::Environment.from_file(File.join(File.dirname(__FILE__), 'environment.rb'))

require 'myapp/application'
run MyApp::Application
