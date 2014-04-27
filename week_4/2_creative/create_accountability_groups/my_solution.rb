# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:
# We're taking 1 argument-> the array of students
# We will split them into groups of 4, the remainder will be put into larger groups
# groups = {
#   group1: arrayOfStudents
#   group2: arrayOfStudents
# }
# cohort = {[groups]: [students]}
# students / 4 = accGroups
# accGroups = [1, 2, ..., n]

# how to put each student into a group
# if index % 4 == 0
# if index % 3 == 0
# if index % 2 == 0 && index % 4 !==0
# else


# 3. Initial Solution
testCohort = ["1", "2", "3", "4", "5", "6", "7", "8"]
def accountability_groups(cohort)
  numberOfGroups = cohort.length / 4
  for num in 1..numberOfGroups
    num = cohort.pop(4)
  end
  return num
end

print accountability_groups(testCohort)




# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection
