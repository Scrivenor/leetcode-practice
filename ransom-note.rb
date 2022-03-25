# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}

def can_construct(ransom_note, magazine)
  

  arrRansom_note = ransom_note.split("")
  arrMagazine = magazine.split("")

  arrRansom_note.each do |letter|
    if arrMagazine.include?( letter )
      # remove letter from magazine
      arrMagazine.delete_at( arrMagazine.find_index( letter ) )
   else
     return false
   end
  end

  return true

end

ran_note = "aa"
mag = "aba"

p can_construct( ran_note, mag )