def get_first_name_of_season_winner(data, season)
  data[season].each do |info_hash|
    if info_hash["status"] == "Winner"
      return info_hash["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info_array|
    info_array.each do |info_hash|
      if info_hash["occupation"] == occupation
        return info_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  data.each do |season, info_array|
    info_array.each do |info_hash|
      if info_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  
  count
end

def get_occupation(data, hometown)
  data.each do |season, info_array|
    info_array.each do |info_hash|
      if info_hash["hometown"] == hometown
        return info_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  
  data.each do |season_value, info_array|
    if season_value == season
      info_array.each do |info_hash|
        total_age += info_hash["age"].to_i
      end
    end
  end
end

data1 = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}
