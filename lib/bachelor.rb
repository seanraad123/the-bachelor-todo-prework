require 'json'
file = File.read('spec/fixtures/contestants.json')
data_hash = JSON.parse(file)
require 'pry'

def get_first_name_of_season_winner(data, season)
  winners = []
  data.each do |seasons, info|
    if seasons = season
     info.each do |value|
       if value["status"] == "Winner"
         a = value["name"].split(" ")
         a.pop
         winners.push(a)
       end
     end
    end
  end
  print winners.flatten(1)
end

get_first_name_of_season_winner(data_hash, "season 10")

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end


#get_first_name_of_season_winner()
