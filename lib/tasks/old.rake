namespace :old do
  desc 'Locations with people that are deleted'
  task location_people: :environment do
    puts "B===================================================D"
    my_mom = Assignment.where.not(location_id: Location.pluck(:id)).delete_all
    puts "#{my_mom} Locations with people were deleted"

  end

  desc 'People with locations that are deleted '
  task location_people: :environment do
    steve = Assignment.where.not(person_id: Person.pluck(:id)).delete_all
    puts "#{steve} People with locations were deleted"
    puts "B===================================================D"
  end

end
