class TimeSlot < ApplicationRecord
  belongs_to :appointment
  enum time: {
    "1" => "9:00",
    "2" => "9:30",
    "3" => "10:00",
    "4" => "10:30",
    "5" => "11:00",
    "6" => "11:30",
    "7" => "12:00",
    "8" => "12:30",
    "9" => "13:00",
    "10" => "13:30"
  }
end
