

class NightWriter

  attr_reader :file_contents_string

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @file_contents_string
  end

  def read_from_file
    file_input = File.open(@input_file, "r")
    @file_contents_string = file_input.read
    file_input.close
  end

  def write_to_file
    destination_file = File.open(@output_file, "w")
    destination_file.write(@file_contents_string)
    destination_file.close
    print_message
  end

  def print_message
    puts "Created '#{@output_file}' containing #{@file_contents.length} characters"
  end
end
