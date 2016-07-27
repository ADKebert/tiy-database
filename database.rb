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

  def add_new_person
    puts "What is the person's name?"
    @our_database << Person.new(gets.chomp)
    # add_details_to_person(@our_database[-1])
  end

  def search_for_a_person(name)
    for person in @our_database
      if person.name == name
        return person
      end
    end
    return "not found"
  end

  def describe_a_person(person)
    puts "Name: #{person.name}"
    puts "Phone Number: #{person.phone_number}"
    puts "Address: #{person.address}"
    puts "Position: #{person.position}"
    puts "Salary: #{person.salary}"
    puts "Slack Account: #{person.slack_account}"
    puts "Github Account: #{person.github_account}"
  end

  def search_prompt
    puts "What is the name of the person you would like to search for?"
    name = gets.chomp
    target = search_for_a_person(name)
    if target == "not found"
      puts "That person was not found"
    else
      describe_a_person(target)
    end
  end

  def remove_a_person
    puts "What is the name of the person you would like to delete from the database?"
    target = search_for_a_person(gets.chomp)
    if target == "not found"
      puts "That person was not found"
    else
      @our_database.delete(target)
      puts "#{target.name} was removed from the database"
    end
    p @our_database
  end
end

testing = PersonManager.new
testing.add_new_person
testing.search_prompt
testing.search_prompt
testing.remove_a_person
