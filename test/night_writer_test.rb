require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    nw = NightWriter.new
    assert_instance_of NightWriter, nw
  end

  def test_message_prints_to_terminal
    nw = NightWriter.new
    nw.read_from_file
    assert_equal "Created 'output.txt' containing 16 characters", nw.print_message
  end

end
