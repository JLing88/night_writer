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
    assert_equal "Created braille.txt containing 256 characters", nw.print_message
  end

  def test_file_object_is_created
    nw = NightWriter.new
    assert_instance_of File, nw.read_from_file
  end

end
