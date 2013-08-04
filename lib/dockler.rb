require 'dockler/version'

# Dockler is a lightweight, flexible, Rake-based system for packaging
# your Ruby applications into a Docker.io container files.
module Dockler

  autoload :Application, 'dockler/application'
  autoload :Template,    'dockler/template'
  autoload :Errors,      'dockler/errors'

  DOCKLER_HOME = File.expand_path(File.dirname(__FILE__) + '/..') unless defined?(DOCKLER_HOME)
  PROJECT_HOME = File.expand_path('.')

  def self.application
    @application ||= Application.new
  end

  def self.run
    application.run
  end

  def self.cleanup
    application.cleanup
  end
end
