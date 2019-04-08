# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create([
#     {
#         email: 'test@example.at',
#         password: 'slfjsflj2441!j',
#         nickName: 'suppiduppipflanzenboy'
#     },
#     {
#         email: 'test1@example.at',
#         password: 'slfjsflj2441!j',
#         nickName: 'suppiduppipflanzenboyy'
#     }
# ])

Plant.create([
    {
        realName: 'sljfslfj',
        nickName: 'plant1',
        waterNeed: 1400,
        waterCurrent: 600,
        sunNeed: 2.5,
        place: 'bedroom',
        love: 6
    },
    {
        realName: 'sfsf',
        nickName: 'plant2',
        waterNeed: 1200,
        waterCurrent: 600,
        sunNeed: 2.5,
        place: 'living room',
        love: 3
    }
])