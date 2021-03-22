require 'date'
require 'timecop'

class Birthday
  def initialize(first_name, last_name, day, month)
    @first_name = first_name
    @last_name = last_name
    @day_birth = day.to_i
    @month_birth = Date::MONTHNAMES.index(month)
  end

  attr_reader :first_name

  def my_birthday
    if birthday?
      true
    else
      days_to_birthday
    end
  end

  private

  def birthday?
    today = Date.today
    today.mday == @day_birth && today.month == @month_birth
  end

  def days_to_birthday
    today = Date.today
    if today > Date.new(today.year, @month_birth, @day_birth)
      Date.new(today.next_year.year, @month_birth, @day_birth) - today
    else
      (Date.new(today.year, @month_birth, @day_birth) - today).to_i
    end
  end

end
