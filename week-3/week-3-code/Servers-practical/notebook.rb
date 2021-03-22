class Notebook
  def initialize
    @notes = []
  end

  def add_note(author, text)
    @notes << { author: author, text: text }
  end

  def display
    # puts @notes
    @notes.each { |note| puts "#{note[:author]}: #{note[:text]}"}
  end
end
