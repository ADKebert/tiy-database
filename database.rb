class Person
  attr_accessor :name, :phone_number, :address, :position, :salary, :slack_account, :github_account

  def initialize(name)
    self.name = name
  end

end

def prompt_for_desired_action
  puts "What would you like to do with the database? Please enter the corresponding letter"
  puts "Add a person to the database (A)"
  puts "Search for a person (S)"
  puts "Delete a person from the database (D)"
  gets.chomp.downcase
end

puts prompt_for_desired_action
