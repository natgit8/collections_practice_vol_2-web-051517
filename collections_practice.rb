array = ["ruby", "sails", "rspec"]

def begins_with_r(array)
  array.all? do |word|
  word[0] == "r"
  end
end

begins_with_r(array)

captain_planet = ["earth", "fire", "wind","water", "heart"]

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

contain_a(captain_planet)

stuff = ["candy", "pepper", "wall", "ball", "wacky"]

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

first_wa(stuff)

array3 = ["blake", 1, :hello]

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

remove_non_strings(array3)

names = [
  {:name => "blake"},
  {:name => "blake"},
  {:name => "ashley"} ]


def count_elements(array)
  array.sort_by do |hash|
    hash[:name]
  end

  array_w_count = []
  count = 1;
  prev = array[0]

  for i in 1..(array.size-1)
    if(array[i] == prev)
        count += 1
    else
      array_w_count << prev.merge({:count => count})
      prev = array[i]
      count = 1
    end
  end
  array_w_count << prev.merge(:count => count)
  array_w_count
end

count_elements(names)

def merge_data(keys, data)
merge_array = []

  data[0].each do |key, value|
    puts "key: #{key}"
    puts "value: #{value}"
    value[:first_name] = key
    merge_array << value
  end
  merge_array
end

def find_cool(hashes)
  hashes.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |key, value|
    if(schools_by_location[value[:location]] == nil)
      schools_by_location[value[:location]] = [key]
    else
      schools_by_location[value[:location]] << key
    end
  end
  schools_by_location
end
