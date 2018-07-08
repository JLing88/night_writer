class Writer

  attr_reader :writer

  def initialize
    @writer = File.open(ARGV[1], "w")
  end

  def write
    @writer.write
  end
end
