require "./lib/reader.rb"
require "./lib/writer.rb"

class NightWriter

  def intitialize
    @reader = Reader.new
    @writer = Writer.new
  end
end
