require 'json'
file = File.read('spec/fixtures/contestants.json')
data_hash = JSON.parse(file)
require 'pry'

def get_first_name_of_season_winner(data, season)
  winners = []
  data.each do |seasons, info|
    if seasons == season
     info.each do |value|
       if value["status"] == "Winner"
         a = value["name"].split(" ")
         a.pop
         winners.push(a)
       end
     end
    end
  end
  winner = winners.flatten(1)
  return winner.join
end

def get_contestant_name(data, occupation)
  array = []
    data.each do |seasons, info|
      info.each do |value|
        if value["occupation"] == occupation
          name = value["name"]
          return name
        end
      end
    end
end


def count_contestants_by_hometown(data, hometown)
  count = 0
    data.each do |seasons, info|
      info.each do |value|
        if value["hometown"] == hometown
          count += 1
        end
      end
    end
    return count
end

def get_occupation(data, hometown)
  ages = []
    data.each do |seasons, info|
      info.each do |value|
        if value["hometown"] == hometown
          occupation = value["occupation"]
          return occupation
        end
      end
    end
end


def get_average_age_for_season(data, season)
  age = []
  new_age = []
  data.each do |seasons, info|
    if seasons == season
     info.each do |value|
       age.push(value["age"])
     end
    end
  end

  age.each do |x|
    x = x.to_i
    new_age.push(x)
  end

  a = new_age.reduce(:+).to_f / new_age.size
  a = a.round
  return a

end


#get_first_name_of_season_winner()
