def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |characters, value|
    value.each do |in_characters, names|
      names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][characters] == nil
          pigeon_list[name][characters] = []
        end
        pigeon_list[name][characters].push(in_characters.to_s)
      end
    end 
  end
  pigeon_list
end
