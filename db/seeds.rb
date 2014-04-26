jordan = User.create({email: "jordan@mail.com", password: "password", password_confirmation: "password"});

cookbook = Cookbook.create({
  user: jordan
  })

recipe1 = Recipe.create({
    title: "Hungry?",
    imageurl: "hungry?.com",
    ingredientlist: "coconuts, bananas, pineapples",
    yummlyid: "abc123"
  })

recipe2 = Recipe.create({
    title: "Yes?",
    imageurl: "yes?.com",
    ingredientlist: "coconuts, bananas, pineapples",
    yummlyid: "abc124"
  })

recipe3 = Recipe.create({
    title: "No?",
    imageurl: "no?.com",
    ingredientlist: "coconuts, bananas, pineapples",
    yummlyid: "abc125"
  })

cookbook.recipes << recipe1 << recipe2 << recipe3
