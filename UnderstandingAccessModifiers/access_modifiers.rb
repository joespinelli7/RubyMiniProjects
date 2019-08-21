class Manager
  attr_accessor :name

  def initialize(name)
    @@name = name
  end

  protected

  def company(name)
      puts "#{name} works for SkillsEngine under #{@@name}"
  end

end

class Employee < Manager

  attr_accessor :name, :designation, :salary

  @@count = 0

  def initialize(name, designation, salary)
    @name = name
    @designation = designation
    @salary = salary
    @@count += 1
  end

  def self.count
    @@count
  end

  def organization_name
      puts "#{@name} belongs to #{organization}"
  end

  def call_company
    self.company(@name)
  end

  private

  def organization
    "Hackers de Anonymous"
  end

  protected

  def owner
    "We never mention his name!"
  end

end

e1 = Employee.new("Joe", "Jr Software Engineer", 60000)
e2 = Employee.new("Van", "Sr Software Engineer", 90000)
m = Manager.new("Bob")
puts e1.call_company
