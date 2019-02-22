require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant, stats|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split.shift
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season, contestants|
    contestants.each do |contestant, stats|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant, stats|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupations = []
  data.each do |season, contestants|
    contestants.each do |contestant, stats|
      if contestant["hometown"] == hometown
        occupations << contestant["occupation"]
      end
    end
  end
  occupations[0]
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  average_age = 0

  data[season].each do |contestant, stats|
    ages << contestant["age"].to_f
  end

  ages.each{|age| average_age += age}
  average_age = (average_age / ages.length).round
end
