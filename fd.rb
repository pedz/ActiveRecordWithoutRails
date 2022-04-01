#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'yaml'

class Files < ActiveRecord::Base
end

$root = File.expand_path '..', __FILE__
$db_config = YAML.load(File.read(File.join($root, 'db/config.yml')), aliases: true)
$env = ENV["FD_ENV"] || "development"

ActiveRecord::Base.establish_connection($db_config[$env])

f = Files.new { |f|
  f.path = "Hobgoblin"
}

f.save
