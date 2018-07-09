

class NightWriter

  attr_reader :destination_file, :file_contents

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @file_contents
  end

  def read_from_file
    file_input = File.open(@input_file, "r")
    @file_contents = file_input.read
    file_input.close
  end

  def write_to_file
    @destination_file = File.open(@output_file, "w")
    @destination_file.write(@file_contents)
    @destination_file.close
    print_message
  end

  def print_message
    "Created '#{@output_file}' containing #{@file_contents.length} characters"
  end
end
