# Write your code here.
def badge_maker (name)
    "Hello, my name is #{name}."
end
def batch_badge_creator(names)
    names.map { |name| badge_maker(name) }
end
def assign_rooms(speakers)
    room_assignments = []

  speakers.each_with_index do |speaker, index|
    room_number = index + 1
    welcome_message = "Hello, #{speaker}! You have been assigned to room #{room_number}."
    room_assignments << welcome_message
  end

  room_assignments
end
def printer(speakers)
    badges = batch_badge_creator(speakers)
    room_assignments = assign_rooms(speakers)
  
    badges.each { |badge| puts badge }
    room_assignments.each { |assignment| puts assignment }
  end