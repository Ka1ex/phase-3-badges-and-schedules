# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end
def batch_badge_creator arr_of_names
    badges = arr_of_names.map do |name| 
        badge_maker(name)
    end
    badges
end


def assign_rooms names_array
    room_assignments = names_array.map.with_index do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    room_assignments
end

def printer(array)
    names = batch_badge_creator(array)
    rooms = assign_rooms(array)
    names.each do |name|
        puts name
    end
    rooms.each do |room|
        puts room
    end
end