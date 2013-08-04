# The Template class models erb and template funtionality.
module Dockler
  class Template

    def initialize(template_file, output_file)
      @erb = open("#{template_dir}/#{template_file}.erb").read
      @output_file = output_file
    end

    def process(binding)
      ERB.new(@erb).result(binding)
    end

    def write(binding)
      File.open(@output_file, 'w') do |f| 
        f.puts process(binding)
      end
    end

    private

    def template_dir
      "#{Dockler::DOCKLER_HOME}/lib/dockler/templates"
    end
  end
end
