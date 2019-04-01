def get_first_name_of_season_winner(data, season)
    data[season].each do |people|
      people.each do |category, result|
        if result == "Winner"
          return people["name"].split(' ').first
        end
      end
    end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end # code here
end



def get_average_age_for_season(data, season)
  total = 0
  data[season].each do |contestant|
    total += contestant["age"].to_f
  end
  (total / data[season].count).round # code here
end