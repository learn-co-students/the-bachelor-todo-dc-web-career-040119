require 'pry'

# return the first name of that season's winner.
def get_first_name_of_season_winner(data, season)
  data.each do |season_iteration, stats|
    if season_iteration == season
      stats.find do |winner|
        if winner["status"] == "Winner"
          return winner["name"].split.first
        end
      end
    end
  end
end

# returns the name of the woman who has that occupation.
def get_contestant_name(data, occupation)
  data.each do |season_iteration, stats|
    stats.find do |job|
      if job["occupation"] == occupation
        return job["name"]
      end
    end
  end
end

# This method should return a counter of the number of contestants who are from that hometown.
def count_contestants_by_hometown(data, hometown)
  home_town = 0
  data.each do |season_iteration, stats|
    stats.each do |town|
      if town["hometown"] == hometown
        home_town = home_town + 1
      end
    end
  end
  return home_town
end

# returns the occupation of the first contestant who hails from that hometown.
def get_occupation(data, hometown)
  data.each do |season_iteration, stats|
    stats.find do |town|
      if town["hometown"] == hometown
        return town["occupation"]
      end
    end
  end
end

# Iterate through the hash and return the average age of all of the contestants for that season
def get_average_age_for_season(data, season)
  data.each do |season_iteration, stats|
    if season_iteration == season
      total_ages = 0
      ages = stats.each do |age|
        total_ages = (total_ages + age["age"].to_i).to_f
      end
      return (total_ages/ages.length).round
    end
  end
end
