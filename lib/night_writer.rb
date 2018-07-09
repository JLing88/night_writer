

class NightWriter

  attr_reader :file_contents_string

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @input_string
  end

  def read_from_file
    file_input = File.open(@input_file, "r")
    @input_string = file_input.read
    file_input.close
  end

  def write_to_file
    destination_file = File.open(@output_file, "w")
    destination_file.write(@input_string)
    destination_file.close
  end

  def print_message
    "Created '#{@output_file}' containing #{@input_string.length} characters"
  end
end
