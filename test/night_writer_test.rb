require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    nw = NightWriter.new
    assert_instance_of NightWriter, nw
  end
end
