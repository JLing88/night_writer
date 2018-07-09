class Reader

  attr_reader :reader

  def initialize
    @reader = File.open(ARGV[0], "w")
  end

  def read
    @reader.read
  end
end
