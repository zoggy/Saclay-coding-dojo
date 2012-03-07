

def ask_name
  puts "What's your name dude?"
  gets.chomp!
end

def ask_age(name)
  puts "Sooo... #{name}, how old are you?"
  gets.chomp!
end

name = ask_name
age = ask_age(name)

puts "Welcome #{name}.  We see you are #{age} years old."