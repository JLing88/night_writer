class NightWriter

  attr_reader :read_file

  attr_writer :write_file

  @read_file
  @write_file

  def print_message
    "Created braille.txt containing 256 characters"
  end

  def read_from_file
    @read_file = File.open(ARGV[0], "r")
  end

end
