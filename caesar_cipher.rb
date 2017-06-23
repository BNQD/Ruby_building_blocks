def caesar_cipher(string, shift)
	new_string = ""
  for a in string.split("") 
    if a.match (/^[[:alpha:]]$/)
      if (a.ord>65 && a.ord+shift > 90 && a.ord < 91) or (a.ord>97 && a.ord+shift>122)
        new_string += ((a.ord + shift - 26)).chr 
      else
		    new_string += ((a.ord + shift)).chr 
		  end
		else
		  new_string += a
		end
	end
	puts new_string
end