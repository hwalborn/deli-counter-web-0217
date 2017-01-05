katz_deli = []

def line(deli_line)
  if deli_line.size == 0
    puts "The line is currently empty."
  else
    deli_line.each_with_index {|name, index| deli_line[index] = "#{index + 1}. #{name}"}
    deli_str = deli_line.join(" ")
    puts "The line is currently: #{deli_str}"
  end
end

def take_a_number(deli_line, name)
  deli_line << name
  puts "Welcome, #{name}. You are number #{deli_line.length} in line."
end

def now_serving(deli_line)
  if deli_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
  end
end
