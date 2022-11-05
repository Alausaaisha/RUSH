restaurant1 = Restaurant.create!(
    {
      name: "The Place",
      address: "Lekki Phase 1",
      province: "Eti-Osa",
      food_name: [
        "Jollof rice with barbeque chicken and 35cl pet coke",
        "Fried rice with spicy chicken and 35cl pet fanta",
        "Potato porridge with fried fish and 35cl pet coke",
        "Spaghetti with barbeque chicken and 35cl pet sprite"
      ],
      food_image: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy26u00b12AuufXQJ24TrM19_NDwjEOQiXaRzKYQmePnQgPV6bLdTyW3m0UWJJ1jvd3JQ&usqp=CAU",
        "https://www.chicken-republic.com/wp-content/uploads/2021/09/ChickenRepublic_QuarterFlamerGrilledRiceMeal.jpg",
        "https://nigerianfoodiehub.com/wp-content/uploads/2022/04/IMG-0805-2-768x1024.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0KRmcvkHm2C-nq8pu8vGcHHhuJNjbjqfTSw&usqp=CAU"
      ],
      food_price: [
        1000,
        1050,
        1200,
        1250
      ],
      restaurant_rating: 80
    })
restaurant2 = Restaurant.create!(
    {
        name: "Chicken Republic",
        address: "Surulere",
        province: "Surulere",
        food_name: [
          "chicken and chips and 35cl pet coke",
          "Fried rice with spicy chicken, moin moin and 35cl pet fanta",
          "Potato porridge with fried fish and 35cl pet coke",
          "Spaghetti with sauce, barbeque chicken and 35cl pet sprite"
        ],
        food_image: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy26u00b12AuufXQJ24TrM19_NDwjEOQiXaRzKYQmePnQgPV6bLdTyW3m0UWJJ1jvd3JQ&usqp=CAU",
          "https://www.chicken-republic.com/wp-content/uploads/2021/09/7-REFUEL-MAX-FRIED-RICE-MEAL.jpg",
          "https://nigerianfoodiehub.com/wp-content/uploads/2022/04/IMG-0805-2-768x1024.jpg",
          "https://www.getfood.ng/wp-content/uploads/2020/08/Screen-Shot-2021-05-04-at-8.20.39-AM.png"
        ],
        food_price: [
          1000,
          1050,
          1200,
          1250
        ],
        restaurant_rating: 80
      }
  )
# user1 = User.create(name: "Temi", province: "Surulere", address: "Surulere", phone_number: 1034112456711, email_address: "abed-e@met.com", password: "1234556789120")
# user2 = User.create(name: "Febi", province: "Eti-Osa", address: "Lekki Phase 1", phone_number: 0323223456711, email_address: "cdede@met.com", password: "1234556489130")

# rider1 = Rider.create(restaurant_id: restaurant1.id, user_id: user1.id << [:id], delivery_fee: 500, province: restaurant1.province, phone_number: 07123456730, name: "Seyi")
# rider2 = Rider.create(restaurant_id: restaurant2.id, user_id: user2.id, delivery_fee: 700, province: restaurant2.province, phone_number: 07023456721, name: "Tayo")