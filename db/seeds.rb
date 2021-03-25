CookingTime.create(name: '---')
CookingTime.create(name: '5~10分')
CookingTime.create(name: '10~20分')
CookingTime.create(name: '20~30分')
CookingTime.create(name: '30分以上')
Recipe.create(recipe_name: 'お肉料理', ingredients: '鶏肉', nutrition: 'タンパク質 / 100g', cooking_method: '10分焼く', cooking_time_id: '2')
Recipe.create(recipe_name: '魚料理', ingredients: '鮭', nutrition: 'タンパク質 / 50g', cooking_method: '5分焼く', cooking_time_id: '3')
Recipe.create(recipe_name: 'イタリア料理', ingredients: 'パスタ', nutrition: '炭水化物 / 100g',cooking_method: '茹でる', cooking_time_id: '4')
Recipe.create(recipe_name: '燻製料理', ingredients: '牛肉', nutrition: 'タンパク質 / 100g',cooking_method: '茹でる', cooking_time_id: '5')