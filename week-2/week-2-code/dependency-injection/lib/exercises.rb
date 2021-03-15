# Exercise 1

# Amend the following classes to be testable in isolation, then write the tests for them.

class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  # def format(note)
  #   "Title: #{note.title}\n#{note.body}"
  # end
end

# Exercise 2

# Amend the following classes to be testable in isolation, then write the tests for them.

class Diary
  def initialize(entry_class = Entry)
    @entry_class = entry_class
    @entries = []
  end

  def add(title, body)
    @entries << @entry_class.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end


# Exercise 3

# Amend SayHello to be testable in isolation, then write the tests for it.

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class EmailClient
  def initialize(message_class = Message)
    @message_class = message_class
  end

  def message
    @message_class.new
  end
end

class SayHello
  def initialize(email = EmailClient.new)
    @email = email
  end

  def run
    # @email # = EmailClient.new
    @email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end

# Exercise 4 - Optional Extension

class Greeter
  def initialize(input_class = Kernel)
    @input_class = input_class
  end

  def greet
    puts "What is your name?"
    name = @input_class.gets.chomp
    puts "Hello, #{name}"
  end
end

# DONE!
