# ask user what difficulty they would like to play
count = 0
print "Welcome to Guess the number!"
sleep 1
print "\nWhat difficulty would you like to play?\n Type easy or hard:"
# accept user input and save it as a variable
difficulty = gets.chomp

if difficulty == "easy"
  random_number = rand(1..10)
  print "I've picked a number from 1 to 10. Now guess it! "
elsif difficulty == "hard"
  random_number = rand(1..20)
  puts "I've picked a number from 1 to 20. Now guess it! "
end

count += 1
answer = gets.chomp

while answer != random_number.to_s
  puts "Nope, try again!"
  count += 1
  answer = gets.chomp
end

puts "You win Nice job!"
puts "Your score was : #{count}"
