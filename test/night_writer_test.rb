require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"
require "./lib/braille_translator"

class NightWriterTest < Minitest::Test

  def setup
    @nw = NightWriter.new
  end

  def test_it_exists
    assert_instance_of NightWriter, @nw
  end

  def test_message_prints_to_terminal
    @nw.read_from_file
    @nw.write_to_file
    assert_equal "Created 'output.txt' containing 2 characters", @nw.print_message
  end

  def test_it_translate_one_letter_to_braille
    dictionary = BrailleTranslator.new
  end

end
