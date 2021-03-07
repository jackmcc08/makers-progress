<<~Question_1

You could make the Note class more cohesive by seperating out the display, title and body method into a seperate class, so you have the creation of the Note as one class and then the display aspects of the note in another.

Question_1
"end"

<<~Exercise_1

Bank
|
|      (1)*get_balance
|      *print_statement
|
|
|
|                 (2) * Credit_account
|                  * debit_account
|____________________________

Split into showing the amount (1) and adjusting the amount (2)

SecretDiary
|
|     (1)*lock
|        *Unlock
|
|
|      (2) *add_entry
|
|               (3) * get_entries
|____________________________

Split into securing methods (1), inputting into diary (2) and printing out the diary (3)

Exercise_1
"end"

<<~Exercise_2

Calculator
|
|     (1)*add
|        *subtract
|
|
|
|
|               (2) *print_answer
|____________________________

Split into two classes - 1(calculation) and 2 (display)

Exercise_2
"end"

<<-Exercise_3

Refactor the methods from exercise two into two classes as you see fit.

Exercise_3

class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
    Display.new()
  end
end

class Display
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

screen = Display.new
my_calculator = Calculator.new
screen.print_answer(my_calculator.add(5,10))

# "end"

<<-Exercise_4

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.

**First** organise it into one class only.

**Then**, when all your tests are green, reorganise it into classes with high cohesion.

This will also involve reorganising your tests!

Exercise_4




class SecretDiary
  def initialize
    @unlocked = false
    @entries = Entries.new(self)
  end

  attr_accessor :unlocked, 'entries'

#add in error for lockif already unlocked
  def lock
    @unlocked = false
    "Diary is now locked"
  end

  def unlock
    @unlocked = true
    "Diary is now unlocked"
  end

end

class Entries
  def initialize(diary)
    @entries = []
    @diary = diary
  end

  def add_entry
    if @diary.unlocked == true
      @entries << "Entry #{@entries.length + 1}"
      "You added an entry"
    else
      "Diary is locked"
    end
  end

  def get_entries
    if @diary.unlocked == true
      return @entries
    else
      "Diary is locked"
    end
  end
end

# The above example I need to rework as it is not as cohesive as it could be...there is an interdependency between the classes and the Entries have two methods

class Lock

  def initialize
    @locked = true
  end

  attr_reader 'locked'

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end

class SecretDiary_2
  def initialize
    @entries = []
    @lock = Lock.new
  end

  attr_reader 'lock'

  def get_entries
    if !self.lock.locked
      @entries
    else
      "Diary is locked"
    end
  end

  def add_entry(text)
    if !self.lock.locked
      entry = Entry_2.new(text)
      @entries << entry
      entry.text
    else
      "Diary is locked"
    end
  end

end

class Entry_2
  def initialize(text)
    @text = text
    @author = "Jack"
  end

  attr_reader 'text', 'author'

end

# Entries is the Diary
# lock is another object
# Entry is another object
