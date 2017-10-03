hash = { data:
  { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],

    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

def room201cap(hash)
capacity = hash[:data][:rooms][0][:capacity]
end

puts "The capacity of room #201 is #{room201cap(hash)} people \n"





def fits_room?(hash)
  hash[:data][:events].each { |event|
    if event[:attendees] <= room201cap(hash)
      puts "\n"
      puts '-'*33
      puts "You're good to book for your party"
      puts '-'*33
    else
      puts "\n"
      puts '-'*33
      puts "Sorry you need a bigger venue"
      puts "\n"
    end
  }
end

fits_room?(hash)
