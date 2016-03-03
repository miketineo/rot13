TOP    = 'z'.ord
BOTTOM = 'a'.ord

def cipher(ph)
  phrase = ph.downcase
  crypted = []
  phrase.bytes.each do |l|
    if l.between?(BOTTOM, TOP)
      l = l < BOTTOM+13 ? l+13 : l-13
    end
  crypted.push l
  end
  puts crypted.pack('c*')
end

cipher(ARGV[0])
