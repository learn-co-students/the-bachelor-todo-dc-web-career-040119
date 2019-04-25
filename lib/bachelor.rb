require 'pry'

def get_first_name_of_season_winner(data, season)
  season_winner = nil
  data[season].each do |hash_objects|
    if hash_objects["status"] == "Winner"
      hash_objects.each do |key , value|
        if key == "name"
          split_value = value.split
          first_name = split_value[0]
          season_winner = first_name
        end
      end
    end
  end
  season_winner
end


def get_contestant_name(data, occupation)
  return_name = nil
  data.each do |key , value|
    value.each do |key, value|
      if key["occupation"] == occupation
        key.each do |key, value|
          if key == "name"
            return_name = value
          end
        end
      end
    end
  end
  return_name
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |key, value|
    value.each do |key|
      key.each do |key, value|
        if key == "hometown" && value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  hash_new = nil
  done_occupation = "Not filled"
  data.each do |key, value|
    value.each do |key|
      if key["hometown"] == hometown
        occupation = key["occupation"]
        return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |key, value|
    if key == season
      value.each do |key|
        string_number = key.values[1]
        age_array << Integer(string_number)
      end
    end
  end
  average = age_array.sum / age_array.size
end
