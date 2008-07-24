require 'fileutils'
include FileUtils

require 'rubygems'
%w[rake hoe newgem rubigen].each do |req_gem|
  begin
    require req_gem
  rescue LoadError
    puts "This Rakefile requires the '#{req_gem}' RubyGem."
    puts "Install it with: gem install #{req_gem} -y"
    exit
  end
end

$:.unshift(File.join(File.dirname(__FILE__), %w[.. lib]))
