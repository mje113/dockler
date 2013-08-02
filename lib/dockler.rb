require 'dockler/version'
require 'dockler/application'

# Dockler is a lightweight, flexible, Rake-based system for packaging
# your Ruby applications into a Docker.io container files.
module Dockler
  DOCKLER_HOME = File.expand_path(File.dirname(__FILE__) + '/..') unless defined?(DOCKLER_HOME)

  def self.run
    Application.new.run
  end
end
