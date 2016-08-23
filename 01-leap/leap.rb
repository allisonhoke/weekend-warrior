def leap_year?(year)
  if year % 4 == 0
    unless year % 400 == 0
      if year % 100 == 0
        return false
      end
    end
    return true
  end
  return false
end


  # unless year % 100 == 0
  #   if year % 4 == 0
  #     return true
  #   end
  # end
