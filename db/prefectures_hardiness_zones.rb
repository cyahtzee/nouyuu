require 'json'

prefectures = { prefectures: [
  {
    name: 'Okinawa',
    hardiness_zone: [10, 11]
  },
  {
    name: 'Kagoshima',
    hardiness_zone: [6, 7, 8, 9, 10]
  },
  {
    name: 'Miyazaki',
    hardiness_zone: [6, 7, 8, 9]
  },
  {
    name: 'Kumamoto',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Nagasaki',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Saga',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Fukuoka',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Oita',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Yamaguchi',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Shimane',
    hardiness_zone: [6, 7, 8, 9]
  },
  {
    name: 'Hiroshima',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Tottori',
    hardiness_zone: [6, 7, 8, 9]
  },
  {
    name: 'Okayama',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Ehime',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Kagawa',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Kochi',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Tokushima',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Hyogo',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Kyoto',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Shiga',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Mie',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Nara',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Osaka',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Wakayama',
    hardiness_zone: [7, 8, 9, 10]
  },
  {
    name: 'Fukui',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Ishikawa',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Toyama',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Niigata',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Gifu',
    hardiness_zone: [6, 7, 8, 9]
  },
  {
    name: 'Nagano',
    hardiness_zone: [5, 6, 7, 8]
  },
  {
    name: 'Aichi',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Shizuoka',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Yamanashi',
    hardiness_zone: [7, 8]
  },
  {
    name: 'Gunma',
    hardiness_zone: [7, 8, 9]
  },
  {
    name: 'Tochigi',
    hardiness_zone: [7, 8]
  },
  {
    name: 'Saitama',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Ibaraki',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Kanagawa',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Tokyo',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Chiba',
    hardiness_zone: [8, 9]
  },
  {
    name: 'Fukushima',
    hardiness_zone: [5, 6, 7, 8, 9]
  },
  {
    name: 'Yamagata',
    hardiness_zone: [6, 7, 8]
  },
  {
    name: 'Miyagi',
    hardiness_zone: [6, 7, 8]
  },
  {
    name: 'Akita',
    hardiness_zone: [6, 7, 8]
  },
  {
    name: 'Iwate',
    hardiness_zone: [5, 6, 7]
  },
  {
    name: 'Aomori',
    hardiness_zone: [6, 7, 8]
  },
  {
    name: 'Hokkaido',
    hardiness_zone: [4, 5, 6, 7]
  }
] }

File.open('db/prefectures_hardiness_zones.json', 'wb') do |file|
  file.write(JSON.generate(prefectures))
end
