require 'json'

crops = { crops: [
  {
    name: 'Tomato',
    crop_type: 'Fruit Vegetable',
    plant_family: 'Solanaceae',
    description: '',
    max_days_to_harvest: 90,
    min_days_to_harvest: 55,
    max_hardiness_zone: 12,
    min_hardiness_zone: 5,
    sowing_months: 'March, April',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'User'
  },
  {
    name: 'Cauliflower',
    crop_type: 'Flower Vegetable',
    plant_family: 'Brassicaceae',
    description: '',
    max_days_to_harvest: 65,
    min_days_to_harvest: 50,
    max_hardiness_zone: 12,
    min_hardiness_zone: 5,
    sowing_months: 'March, April, May, June',
    spacing_in_cm: 50,
    planting_depth_in_cm: 10,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 4,
    nitrogen_needs: 'User'
  },
  {
    name: 'Potato',
    crop_type: 'Tuber Vegetable',
    plant_family: 'Solanaceae',
    description: '',
    max_days_to_harvest: 120,
    min_days_to_harvest: 90,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'March, April',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'User'
  },
  {
    name: 'Carrot',
    crop_type: 'Root Vegetable',
    plant_family: 'Umbelliferae',
    description: '',
    max_days_to_harvest: 80,
    min_days_to_harvest: 60,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'April, May',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'User'
  },
  {
    name: 'Bell Pepper',
    crop_type: 'Fruit Vegetable',
    plant_family: 'Solanaceae',
    description: '',
    max_days_to_harvest: 90,
    min_days_to_harvest: 60,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'April, May, June, July',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'User'
  }
] }

File.open('db/crops.json', 'wb') do |file|
  file.write(JSON.generate(crops))
end
