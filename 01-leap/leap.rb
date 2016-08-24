# def leap_year?(year)
#   if year % 4 == 0
#     unless year % 400 == 0
#       if year % 100 == 0
#         return false
#       end
#     end
#     return true
#   end
#   return false
# end


def leap_year?(year)
  if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
    return true
  else
    return false
  end
end
