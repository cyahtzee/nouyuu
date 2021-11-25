require 'json'

crops = { crops: [
  {
    name: 'Tomato',
    crop_type: 'Fruit Vegetable',
    plant_family: 'Solanaceae',
    description: 'The tomato is the edible berry of the plant Solanum lycopersicum. The species originated in western South America and Central America',
    image_url: 'tomato.png',
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
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Cauliflower',
    crop_type: 'Flower Vegetable',
    plant_family: 'Brassicaceae',
    description: 'The cauliflower is one of several vegetables in the species Brassica oleracea. Typically, only the head is eaten – the edible white flesh sometimes called the "curd". It was originally grown in Asia around the Mediterranean Sea.',
    image_url: 'cauliflower.png',
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
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Potato',
    crop_type: 'Tuber Vegetable',
    plant_family: 'Solanaceae',
    description: 'The potato is the starchy tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas.',
    image_url: 'potato.png',
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
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Carrot',
    crop_type: 'Root Vegetable',
    plant_family: 'Umbelliferae',
    description: 'The carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist. All are domesticated forms of the wild carrot, Daucus carota, native to Europe and Southwestern Asia.',
    image_url: 'carrot.png',
    max_days_to_harvest: 80,
    min_days_to_harvest: 60,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'April, May',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Bell Pepper',
    crop_type: 'Fruit Vegetable',
    plant_family: 'Solanaceae',
    description: 'The bell pepper (also known as sweet pepper, pepper, or capsicum) is the fruit of the species Capsicum annuum. They are native to Mexico, Central America, and northern South America.',
    image_url: 'bellpepper.png',
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
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Cucumber',
    crop_type: 'Fruit Vegetable',
    plant_family: 'Cucurbitaceae',
    description: 'The cucumber is the cylindrical fruit of the widely-cultivated creeping vine plant Cucumis sativus. The species originates from South Asia.',
    image_url: 'cucumber.png',
    max_days_to_harvest: 70,
    min_days_to_harvest: 50,
    max_hardiness_zone: 12,
    min_hardiness_zone: 4,
    sowing_months: 'April, May',
    spacing_in_cm: 25,
    planting_depth_in_cm: 4,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Broad Beans',
    crop_type: 'Pod Vegetable',
    plant_family: 'Fabaceae',
    description: 'Broad beans (also known as fava beans, or faba beans) are the seeds of the Vicia faba plant, contained in broad, green leathery pods that mature to a dark blackish-brown. They are widely cultivated as a crop for human consumption, and also as a cover crop. The species originated in the Middle-East.',
    image_url: 'broadbeans.png',
    max_days_to_harvest: 100,
    min_days_to_harvest: 80,
    max_hardiness_zone: 10,
    min_hardiness_zone: 2,
    sowing_months: 'February, March, April, October, November',
    spacing_in_cm: 25,
    planting_depth_in_cm: 5,
    climber: true,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Soil Builder'
  },
  {
    name: 'Beetroot',
    crop_type: 'Root Vegetable',
    plant_family: 'Chenopodiaceae',
    description: 'The beetroot is the taproot portion of the Beta vulgaris plant. Beets were domesticated in the ancient Middle East, primarily for their greens, and were grown by the Ancient Egyptians, Greeks and Romans. By the Roman era, it is thought that they were cultivated for their roots as well.',
    image_url: 'beetroot.png',
    max_days_to_harvest: 65,
    min_days_to_harvest: 45,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'April, May, June, July',
    spacing_in_cm: 10,
    planting_depth_in_cm: 3,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 4,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Onion',
    crop_type: 'Bulb Vegetable',
    plant_family: 'Liliaceae',
    description: 'The onion is the most widely cultivated species of the genus Allium. Common onions are normally available in three colour varieties: yellow or brown, red or purple, and white. Its ancestral wild original form is not known.',
    image_url: 'onion.png',
    max_days_to_harvest: 155,
    min_days_to_harvest: 90,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'March, April',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Cabbage',
    crop_type: 'Leafy Vegetable',
    plant_family: 'Brassicaceae',
    description: 'Cabbage comprises several cultivars of Brassica oleracea, and is a leafy green, purple, red, or white biennial plant grown for its dense-leaved heads. It is descended from the wild cabbage, and was most likely domesticated somewhere in Europe before 1000 BC.',
    image_url: 'cabbage.png',
    max_days_to_harvest: 100,
    min_days_to_harvest: 65,
    max_hardiness_zone: 10,
    min_hardiness_zone: 1,
    sowing_months: 'March, April',
    spacing_in_cm: 25,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Brussels Sprouts',
    crop_type: 'Leafy Vegetable',
    plant_family: 'Brassicaceae',
    description: 'The Brussels sprout is a member of the cabbage family, grown for its edible buds. It has long been popular in Brussels, Belgium, from which it gained its name.',
    image_url: 'brusselssprouts.png',
    max_days_to_harvest: 110,
    min_days_to_harvest: 90,
    max_hardiness_zone: 9,
    min_hardiness_zone: 2,
    sowing_months: 'March, April',
    spacing_in_cm: 50,
    planting_depth_in_cm: 2,
    climber: true,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Broccoli',
    crop_type: 'Leafy Vegetable',
    plant_family: 'Brassicaceae',
    description: 'Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable. It was engineered from a cabbage relative in what is now Tuscany.',
    image_url: 'broccoli.png',
    max_days_to_harvest: 85,
    min_days_to_harvest: 55,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'April, May',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  }
] }

File.open('db/crops.json', 'wb') do |file|
  file.write(JSON.generate(crops))
end
