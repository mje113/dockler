require 'log4r'
require 'fileutils'
require 'erb'

# Extension of Rake::Application that allows the +dockle+ command to
# report its name properly and inject its own tasks without a Rakefile.
module Dockler
  class Application

    def initialize
      @logger = Log4r::Logger.new('dockler::lib::application')
    end

    def run
      b = binding
      create_work_dir
      create_files(b)
      self
    ensure
      cleanup
    end

    def work_dir
      "#{Dockler::PROJECT_HOME}/.dockler"
    end

    def cleanup
      remove_work_dir
    end

    private

    def create_work_dir
      FileUtils.mkdir_p work_dir
    end

    def remove_work_dir
      FileUtils.rm_rf work_dir
    end

    def create_files(b)
      %w(Vagrantfile vagrant-bootstrap Dockerfile).each do |f|
        template = Template.new(f, "#{work_dir}/#{f}")
        template.write(b)
      end
    end
  end
end
