puts "3.Example for class".green
class RubySyntaxExample
  def hello
    puts "Hello this is syntax class example".blue
  end
end

$global_application_name = "[Ruby Only]:"

class People
  # extend and include go first
  # inner classes
  # constants are next
  CLASS_VERSION = 1
  # afterwards we have attribute macros
  # followed by other macros (if any)
  # public class methods are next in line
  # initialization goes between class methods and other instance methods
  # followed by other public instance methods
  # protected and private methods are grouped near the end
  @@no_of_people = 0
  def initialize(name, age)
    @name = name
    @age = age
    @@no_of_people += 1
  end

  # class getter, setter
  def self.no_of_people
    @@no_of_people
  end
  def self.no_of_people=(num)
    @@no_of_people = num.to_i
  end
  # instance getter, setter
  def name
    @name
  end
  def name=(name)
    @name = name
  end

  def show_info
    welcome_verb = 'Hello'
    borned_year = 2017 - @age.to_i
    print (".#{@name}").red + " - #{$global_application_name}".green + "\n"
    puts "#{welcome_verb} #{@name} - Age : #{@age} \n".red
    puts "Name : %s\nAge : %s\nBorned Year : %s" % [@name,@age, borned_year]
    puts "----\n"
  end

  def self.class_version
    CLASS_VERSION
  end

  def total_no_of_people
    print (@@no_of_people.to_s + " people").green + "\n"
  end
end

obj = RubySyntaxExample.new
obj.hello
puts "People Class Version : " + "#{People::CLASS_VERSION}\n".red

people_a = People.new("Son","29")
people_b = People.new("Miso","30")
people_a.show_info
puts "People Name: " + people_a.name
puts "----"
people_b.show_info
puts "Total people : " + People.no_of_people.to_s.red
puts "----\n"