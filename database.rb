require_relative 'person'

class PersonManager

  def initialize
    @our_database = []
  end

  def prompt_for_desired_action
    puts "What would you like to do with the database? Please enter the corresponding letter"
    puts "Add a person to the database (A)"
    puts "Search for a person (S)"
    puts "Delete a person from the database (D)"
    gets.chomp.downcase
  end

  def add_details_to_person(person)
    politeness = "Please enter #{person.name}'s"
    puts "#{politeness} phone number"
    person.phone_number = gets.chomp
    puts "#{politeness} address"
    person.address = gets.chomp
    puts "#{politeness} position"
    person.position = gets.chomp
    puts "#{politeness} salary"
    person.salary = gets.chomp
    puts "#{politeness} slack account"
    person.slack_account = gets.chomp
    puts "#{politeness} github account"
    person.github_account = gets.chomp
  end

end
