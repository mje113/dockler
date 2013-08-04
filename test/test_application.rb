require 'helper'

class TestApplication < MiniTest::Unit::TestCase

  def setup
    @app = Dockler::Application.new
  end

  def teardown
    @app.cleanup
  end

  def test_creates_dockler_work_directory
    assert Dir.exist?(Dockler::PROJECT_HOME)
  end

  def home
    assert_equal Dockler::PROJECT_HOME, @app.home
  end

end
