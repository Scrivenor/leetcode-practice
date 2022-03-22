# @param {String} s
# @return {Integer}
def roman_to_int(s)
    arrRomans = ["M","D","C","L","X","V","I"]
    arrToConvert = s.split("")
    retInteger = 0
    skip = false

    arrToConvert.each_with_index do |numeral, i|
      if skip != true
        case numeral
        when "M"
          retInteger += 1000
        when "D"
          retInteger += 500
        when "C"
          if arrToConvert[i+1] == "D"
            retInteger += 400
            skip = true
          elsif arrToConvert[i+1] == "M"
            retInteger += 900
            skip = true
          else 
            retInteger += 100
          end
        when "L"
          retInteger += 50
        when "X"
          if arrToConvert[i+1] == "L"
            retInteger += 40
            skip = true
          elsif arrToConvert[i+1] == "C"
            retInteger += 90
            skip = true
          else 
            retInteger += 10
          end
        when "V"
          retInteger += 5
        when "I"
          if arrToConvert[i+1] == "V"
            retInteger += 4
            skip = true
          elsif arrToConvert[i+1] == "X"
            retInteger += 9
            skip = true
          else 
            retInteger += 1
          end
        end
      else 
        skip = false
      end
    end
    retInteger
end

p roman_to_int("MCMXCIV")