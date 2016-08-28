class Xmas

  def self.gifts(day)
     gift_list = []
     line = []
     setup.each do |key, value|
       line << value
       gift_list << line.reverse
     end
      gift_list[0][0] = gift_list[0][0][4..-1]
    return gift_list[day]
  end


  def self.verse(day)
    verses = []
    i = 0
    setup.each do |key, value|
      verses << "On the #{key} day of Christmas my true love gave to me\n" + gifts(i).join("\n")
      i += 1
    end
  return verses[day]
  end

  def self.setup
    lyrics = {
      "first" => "and a partridge in a pear tree",
      "second" => "two turtle doves",
      "third" => "three french hens",
      "fourth" => "four calling birds",
      "fifth" => "FIVE GOLDEN RINGS",
      "sixth" => "six geese-a-laying",
      "seventh" => "seven swans-a-swimming",
      "eighth" => "eight maids-a-milking",
      "ninth" => "nine ladies dancing",
      "tenth" => "ten lords-a-leaping",
      "eleventh" => "eleven pipers piping",
      "twelfth" => "twelve drummers drumming"
    }
    return lyrics
  end

  def self.sing # string of whole song
    song = ""
    day = 0
    until day == 12
        if day == 11
          song << verse(day)
          day += 1
        else
          song << verse(day) + "\n\n"
          day += 1
        end
    end
    return song
  end
end

# a = Xmas.sing
# puts a
#
# x = Xmas.verse(0)
# puts x
#
# y = Xmas.verse(10)
# puts y
# g = Xmas.gifts(0)
# puts g
# #
# x = Xmas.gifts(0)
# puts x
# # g1, g2 = Xmas.gifts(1)
# puts g1
# puts g2
