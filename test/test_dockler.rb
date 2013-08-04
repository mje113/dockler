require 'helper'

class TestDockler < MiniTest::Unit::TestCase

  def test_defines_home
    assert Dockler::DOCKLER_HOME =~ /dockler$/
  end

  def test_defines_project_home
    assert Dockler::PROJECT_HOME =~ /dockler$/
  end

  def test_can_run
    assert Dockler.run
  end

  def test_has_reference_to_application
    Dockler.run
    assert_instance_of Dockler::Application, Dockler.application
  end

  def test_can_cleanup
    FileUtils.stub :rm_rf, true do
      assert Dockler.cleanup
    end
  end
end
