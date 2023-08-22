# Guess a random number

target = rand(20) + 1
success = false
puts 'Guess the random number between 1 and 20.'

until success
  guess = gets
  if guess.to_i == target
    success = true
    puts 'Correct!'
  elsif guess.to_i < target
    puts 'Too low, please try again.'
  else
    puts 'Too high, please try again.'
  end
end
