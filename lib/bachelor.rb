def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |a|
    if a["status"] == "Winner"
      array = a["name"].split(" ")
      return array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |a,b|
    b.each do |c|
    if c["occupation"] == occupation
      return c["name"]
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |a,b|
    b.each do |c|
    if c["hometown"] == hometown
      counter+=1
    end
  end
end
return counter
end

def get_occupation(data, hometown)
  # code here
  counter = 0
  data.each do |a,b|
    b.each do |c|
      if c["hometown"] == hometown && counter <1
        counter +=1
        return c["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  num = 0
  data[season].each do |a|
      a = a["age"].to_f
      total+= a
      num+=1
  end
  return (total/num).round
end
