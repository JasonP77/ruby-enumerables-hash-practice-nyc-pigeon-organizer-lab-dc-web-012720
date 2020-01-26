def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |characters, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][characters] == nil
          pigeon_list[name][characters] = []
        end
        pigeon_list[name][characters].push(stats.to_s)
      end
    end 
  end
  pigeon_list
end
