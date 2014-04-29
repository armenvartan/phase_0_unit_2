# U2.W4: Homework Cheater!


# I worked on this challenge [with: Brendan Susens-Jackson].

# 2. Pseudocode

# Define Method Essay Writer Accepts Five Arguments: Name, Date, Topic, Thesis Statement, Pronoun
#   Variable Pronoun
#     He:
#     If Male return He
#     If Female return She
#     Him:
#     If Male return Him
#     If Female return Her
# Prints Essay Template with Variables From Arguments


# 3. Initial Solution

def essay_writer(name, date, topic, thesis_statement, sex)
  sex = sex.downcase
  subjectPronoun = nil
  objectPronoun = nil
  if sex == "male"
    subjectPronoun = "he"
    objectPronoun = "him"
  elsif sex == "female"
    subjectPronoun = "she"
    objectPronoun = "her"
  else
    subjectPronoun = "it"
    objectPronoun = "it"
  end
  template = %Q(#{topic}\n\n #{name} was a rad dude in #{date}. #{subjectPronoun} could hang ten with the biggest kahuna.
  I want to learn more about #{objectPronoun}. #{thesis_statement}. Then one day, #{subjectPronoun} caught the
  metaphorical big wave.  Now #{subjectPronoun}'s riding the big kahuna upstairs.)
  print template
end
essay_writer("John", 1890, "Topic", "thesis", "male")

# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE
p essay_writer("John", 1864, "Jimmy's Paper", "Never write a check that your tush can't cash", "male") == "Jimmy was a rad dude in 1864. He could hang ten with the biggest kahuna. I want to learn more about him.
Never write a check that your tush can't cash. Then one day, he caught the metaphorical big wave. Now he's riding the big kahuna upstairs."






# 5. Reflection
