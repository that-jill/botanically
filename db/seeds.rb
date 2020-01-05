##### Users #####

User.find_or_create_by(
  email: 'jill@example.com',
  password: 'plantlife'
)

##### Plants #####

protea = Plant.find_or_create_by(
  common_name: 'Little Prince', 
  botanical_name: 'Protea cyanroides', 
  care: 'Special care is required, since they can be tricky to grow. As can be expected from their natural coastal and mountainous habitats, they are used to lots of air flowing around them and plenty of sun. Their roots are very susceptible to fungal attack so it’s important not to disturb them. When planting, remove the shrub from its container, with as little interference as possible to its roots. Plant in a sunny position where the air circulates freely around the plant – they love windy areas. If they show signs of yellowing, apply Wonder Ferrofood granules or any other iron chelate product once, using the lowest recommended dose. Pruning proteas improves the quality and quantity of flowers, helps reduce disease, extends the life of the plant and creates bushier, more compact plants. Young plants should be tip pruned after the first six months to a year after planting, generally in spring to late summer. They can be pruned again after the first flowering by cutting the flower stem 10cm above where it branches out from the main stem. Cut out any weak and damaged stems. This encourages the remaining stems to produce healthier, more vigorous growth. Never remove more than 50 percent of the plant’s leaves and leave about 15cm of healthy leafy stem on which new shoots can develop.',
  care_link: 'https://www.proteaflora.com.au/growing-proteaflora-plants-in-pots/',
  sunlight: 'full sun',
  water: 'Water deeply once a week for the first two years after planting. Once established, they are drought tolerant.',
  soil: 'Well drained acidic soil, Low pH, premium potting mix without slow-release fertilizer',
  temperature: nil,
  fertilizer: 'Avoid fertilizing these plants',
  humidity: 'Dry',
  tag_list: 'Africa, flowering'
)

alocasia = Plant.find_or_create_by(
  common_name: "African Plant Mask", 
  botanical_name: "Alocasia 'Dwarf Amazonica'", 
  care: "Alocasias are beautiful foliage plants for lower light areas. They need warm temperatures and good light, especially during the wintertime. When put under environmental stress they can lose leaves and go back into their tuber or roots, which forces them into dormancy. Good light in the winter, warm temperatures above 65* and allowing the soil to dry a little between watering will keep them growing.",
  care_link: 'https://smartgardenguide.com/alocasia-amazonica-care/',
  sunlight: "Partial sun or shade. That is an east, west or north window. They don’t need direct sunlight but benefit from a little.",
  water: "A little dryness to the surface of the soil is helpful. Do not keep them evenly moist. When watering, thoroughly saturate soil until a little water runs out of the bottom of the pot. Growing in a clay pot will help maintain a healthy root system.",
  soil: 'Jungle Mix, or a lightweight, well-draining potting mix',
  temperature: nil,
  fertilizer: nil,
  humidity: 'Humid',
  tag_list: 'Asia, aroid, tropical, epiphyte'
)

orchid_cactus = Plant.find_or_create_by(
  common_name: 'Orchid Cactus', 
  botanical_name: 'Epiphyllum guatemalense monstrose', 
  care: 'The flowers are fragrant and usually open at night. Epiphyllum are sensitive to being moved so choosing spot in bright, indirect light would work best. Epiphyllum will also only bloom when root bound, so take this into consideration when repotting.',
  care_link: 'https://www.gardeningknowhow.com/ornamental/cacti-succulents/epiphyllum/how-to-grow-curly-locks-cactus.htm',
  sunlight: 'Bright, indirect',
  water: 'Every 10 days or so, when the potting mix dries',
  soil: 'The soil must hold moisture but drain quickly.',
  temperature: nil,
  fertilizer: nil,
  humidity: 'Humid, but will grow in dry',
  tag_list: 'America, cacti, tropical, flowering, epiphyte'
)

lantern = Plant.find_or_create_by(
  common_name: 'Himalayan Lantern', 
  botanical_name: 'Agapetes serpens', 
  care: 'A semi-climbing shrub species native to the Himalayas, 40–60 cm tall, grown as an ornamental for its attractive pendulous benches of red tubular flowers blooming over a long period. It is mostly grown in climates from cool temperate to sub-tropical. Propagation is from cuttings.',
  care_link: 'https://www.gardensonline.com.au/gardenshed/plantfinder/show_4115.aspx',
  sunlight: 'Light shade',
  water: 'Regular, even moisture',
  soil: 'Acidic, light, well-drained, plenty of organic matter',
  temperature: "Since this gorgeous rarity is native to the mild foothills of the Himalayas, it won't tolerate extremes in temperatures.",
  fertilizer: "Slow release fertilizer for acid-loving plants (such as is sold for Rhododendrons)",
  humidity: nil,
  tag_list: 'Asia, caudex, flowering, epiphyte'
)

##### Rooms #####

greenhouse = Room.find_or_create_by(
  name: 'Greenhouse',
  description: 'Main room with large south-facing window. Even halfway in the room, plants will receive some direct sun.'
)

master_bedroom = Room.find_or_create_by(
  name: 'Master Bedroom',
  description: 'North-facing clerestory window covered by awning. Low light room.'
)

bathroom = Room.find_or_create_by(
  name: 'Bathroom',
  description: 'Plants will have to grow under lights in this room, but there is a lot of humidity.'
)

##### Locations #####

greenhouse_window = Location.find_or_create_by(
  name: 'Greenhouse Window',
  description: 'Very hot, lots of direct sun',
  room: greenhouse
)

coffee_table = Location.find_or_create_by(
  name: 'Coffee Table',
  description: 'Hot, with some direct sun',
  room: greenhouse
)

bar = Location.find_or_create_by(
  name: 'bar',
  description: 'Farther away from hot window, but still plenty of bright light.',
  room: greenhouse
)

bookshelf = Location.find_or_create_by(
  name: 'bookshelf',
  description: 'Made for plants that can tolerate bright, hot light with a little direct sun.'
)

clerestory = Location.find_or_create_by(
  name: 'clerestory',
  description: 'North-facing window, suitable for plants that will allow for low light.',
  room: master_bedroom
)

bathroom = Location.find_or_create_by(
  name: 'bathroom',
  description: 'Only artificial light. High humidity.'
)

##### Plant Locations #####

PlantLocation.find_or_create_by(
  plant: protea,
  location: greenhouse_window
)

PlantLocation.find_or_create_by(
  plant: alocasia,
  location: clerestory
)

PlantLocation.find_or_create_by(
  plant: orchid_cactus,
  location: bookshelf
)

PlantLocation.find_or_create_by(
  plant: lantern,
  location: clerestory
)

##### Waterings #####

Water.find_or_create_by(
  plant: protea,
  amount: 30
)

Water.find_or_create_by(
  plant: alocasia, 
  amount: 15
)

Water.find_or_create_by(
  plant: orchid_cactus,
  amount: 15
)

Water.find_or_create_by(
  plant: lantern,
  amount: 15
)

##### Data Observations #####

SoilMoisture.find_or_create_by(
  plant: protea,
  reading: 1,
  created_at: 1.day.ago
)

SoilMoisture.find_or_create_by(
  plant: protea,
  reading: 5
)

##### Journal Entries #####

JournalEntry.find_or_create_by(
  plant: protea,
  note: 'Slight shock from travel. Keeping it under close observation.'
)

JournalEntry.find_or_create_by(
  plant: protea,
  note: 'Just starting to bloom.'
)