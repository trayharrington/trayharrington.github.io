word = "5m 2s"
delimiters = ['m ','s','h ',]
time = word.split(Regexp.union(delimiters))

(3-time.length).times { time.unshift('00') }

for value in time
  if value.length == 1
    value.prepend('0')
  end
end

puts time.join(':')
