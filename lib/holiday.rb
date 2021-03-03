require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
holiday_hash.dig(:summer, :fourth_of_july)[1] #dig to go through to desired key. index in brackets to pull the second element

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.map do |holiday, supplies|
        supplies << supply
    
        
      end
    end
    
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |season, holidays|
  if season == :spring
    holidays.map do |holiday, supplies|
      supplies << supply
    end
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end


def all_winter_holiday_supplies(holiday_hash) 
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten.each do |supply| #if we think of winter as having keys of :christmas and :new years, then the values would be the supplies, which is why this works
    supply
    end
  end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
   puts "#{season.to_s.capitalize!}:" #takes each season, turns it into a string, and capitalizes
    holidays.each do |holiday, supplies|
    puts"  #{holiday.to_s.split("_").map {|day| day.capitalize!}.join(' ')}: #{supplies.join(", ")}"
    end
  end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  answer = []
  holiday_hash.map do |season, holidays|#accesses season: holidays value
    holidays.map do |holiday, supplies|# accesses holidays and their supplies
     if supplies.include?("BBQ")
      holiday
     end
    end
    end.flatten.compact #takeas outputted array and operates on it
end







