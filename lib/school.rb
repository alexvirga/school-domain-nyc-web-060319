class School
attr_accessor :roster
def initialize(name)
  @name = name
  @roster = {}
end
def add_student(name, grade)
  if @roster.has_key?(grade) == true
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
end
def grade(grade)
  @roster[grade]
end
def sort
  @roster.each do |grades, students|
    students.sort!
  end
end
end
