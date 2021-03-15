class Year
  def leap_year(year)
    return true if year % 400 == 0
    return false if year % 100 == 0
    return true if year % 4 == 0

    false
  end

  def all_leap_years_between(year1, year2)
    leap_years = []
    until year1 > year2 do
      leap_years << year1 if leap_year(year1)
      year1 += 1
    end
    leap_years
  end
end
