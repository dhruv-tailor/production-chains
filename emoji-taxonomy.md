# 🏭 Production Chain Emoji Taxonomy

A comprehensive classification of emojis for the production chain simulator. Every emoji is sorted into a primary category based on its role in the production pipeline: raw inputs → intermediate goods → finished products, plus supporting categories for professions, buildings, tools, and more.

---

## 📋 Category Overview

| #  | Category                              | Description                                              |
|----|---------------------------------------|----------------------------------------------------------|
| 1  | Raw Resources — Flora                 | Plants, crops, trees harvestable directly from terrain   |
| 2  | Raw Resources — Fauna                 | Livestock, wild game, fish, insects                      |
| 3  | Raw Resources — Minerals & Elements   | Stone, gems, water, oil, salt                            |
| 4  | Intermediate Resources                | First-stage processed goods (lumber, thread, flour, etc.)|
| 5  | Finished Goods — Food & Drink         | Cooked/prepared consumables made from other resources    |
| 6  | Finished Goods — Clothing & Textiles  | Wearable items crafted from materials                    |
| 7  | Finished Goods — Crafted Objects      | Books, instruments, art, furniture, containers           |
| 8  | Professions                           | Worker types that operate the production chains          |
| 9  | Buildings & Infrastructure            | Where production, trade, and storage happen              |
| 10 | Tools & Equipment                     | Items used by professions to produce goods               |
| 11 | Transportation                        | Vehicles and animals that move goods between provinces   |
| 12 | Terrain & Biomes                      | Province terrain types affecting available raw resources |
| 13 | Currency & Trade                      | Money, scales, trade-related symbols                     |
| 14 | Energy & Power                        | Fire, electricity, wind, sun — fuel for production       |
| 15 | Military & Defense                    | Weapons, armor, fortifications                           |

---

## 1. 🌿 Raw Resources — Flora

Plants, crops, and trees that can be harvested directly from the land without prior processing.

> **Spawn Point Rules (3,200 provinces):**
> - **Global** — Every province independently rolls the Spawn Rate % to contain this resource.
> - **Number** — That many seed provinces are placed randomly on the map. The Spawn Rate % is the chance an adjacent province also gets the resource (cascading outward from each seed to form clusters).

| Emoji | Name             | Notes                             | Spawn Rate | Spawn Points | Base Price 🪙 |
|-------|------------------|-----------------------------------|------------|--------------|---------------|
| 🌾    | Wheat            | Grain crop, base for flour        | 70%        | 150          | 2             |
| 🌽    | Corn             | Grain crop                        | 65%        | 120          | 2             |
| 🍇    | Grapes           | Base for wine                     | 30%        | 40           | 4             |
| 🍎    | Apple            | Orchard fruit                     | 35%        | 50           | 3             |
| 🍏    | Green Apple      | Orchard fruit variant             | 30%        | 45           | 3             |
| 🍊    | Orange           | Citrus fruit                      | 25%        | 30           | 4             |
| 🍋    | Lemon            | Citrus fruit                      | 25%        | 30           | 4             |
| 🍒    | Cherries         | Orchard fruit                     | 15%        | 20           | 5             |
| 🍓    | Strawberry       | Berry crop                        | 30%        | 35           | 4             |
| 🫐    | Blueberries      | Berry crop                        | 15%        | 20           | 5             |
| 🍑    | Peach            | Orchard fruit                     | 15%        | 20           | 4             |
| 🍐    | Pear             | Orchard fruit                     | 15%        | 20           | 4             |
| 🍌    | Banana           | Tropical fruit                    | 25%        | 25           | 4             |
| 🥥    | Coconut          | Tropical palm product             | 15%        | 20           | 5             |
| 🌰    | Chestnut         | Foraged nut                       | 15%        | 20           | 3             |
| 🥜    | Peanuts          | Legume crop                       | 30%        | Global       | 2             |
| 🫒    | Olive            | Base for oil                      | 15%        | 15           | 5             |
| 🌱    | Seedling         | Generic crop growth               | 90%        | Global       | 1             |
| 🍄    | Mushroom         | Foraged fungus                    | 35%        | 40           | 3             |
| 🌻    | Sunflower        | Oil seed crop                     | 30%        | 35           | 3             |
| 🌹    | Rose             | Flower crop, used in perfume      | 10%        | 10           | 8             |
| 🌺    | Hibiscus         | Flower crop, used in tea          | 10%        | 10           | 8             |
| 🪻    | Lavender         | Herb crop                         | 12%        | 12           | 7             |
| 🌶️    | Hot Pepper       | Spice crop                        | 25%        | 25           | 4             |
| 🧄    | Garlic           | Root vegetable                    | 55%        | Global       | 2             |
| 🧅    | Onion            | Root vegetable                    | 55%        | Global       | 2             |
| 🥕    | Carrot           | Root vegetable                    | 60%        | Global       | 2             |
| 🥔    | Potato           | Tuber crop                        | 80%        | Global       | 1             |
| 🍅    | Tomato           | Vine crop                         | 55%        | 80           | 3             |
| 🥬    | Leafy Green      | Vegetable crop                    | 60%        | Global       | 2             |
| 🥦    | Broccoli         | Vegetable crop                    | 30%        | 35           | 3             |
| 🫚    | Ginger           | Root spice                        | 12%        | 12           | 6             |
| 🫛    | Pea Pod          | Legume crop                       | 30%        | 35           | 2             |
| 🥒    | Cucumber         | Vine crop                         | 30%        | 35           | 3             |
| 🍆    | Eggplant         | Vine crop                         | 25%        | 30           | 3             |
| 🫑    | Bell Pepper      | Vine crop                         | 25%        | 30           | 3             |
| 🥑    | Avocado          | Tropical fruit                    | 10%        | 8            | 8             |
| 🥝    | Kiwi             | Tropical fruit                    | 10%        | 8            | 8             |
| 🥭    | Mango            | Tropical fruit                    | 12%        | 12           | 7             |
| 🍍    | Pineapple        | Tropical fruit                    | 10%        | 10           | 7             |
| 🍈    | Melon            | Vine fruit                        | 25%        | 30           | 3             |
| 🍉    | Watermelon       | Vine fruit                        | 25%        | 30           | 3             |
| 🫘    | Beans            | Legume crop                       | 55%        | Global       | 2             |
| 🌲    | Evergreen Tree   | Source of softwood lumber         | 85%        | 200          | 3             |
| 🌳    | Deciduous Tree   | Source of hardwood lumber         | 80%        | 250          | 3             |
| 🌴    | Palm Tree        | Source of palm oil, coconut       | 25%        | 30           | 5             |
| 🌵    | Cactus           | Desert flora                      | 30%        | 25           | 4             |
| 🍀    | Clover           | Forage/pasture plant              | 60%        | Global       | 1             |
| 🪴    | Potted Plant     | Cultivated plant                  | 10%        | Global       | 5             |
| 🎋    | Bamboo           | Fast-growing building material    | 25%        | 25           | 4             |
| 🍃    | Leaves           | Generic foliage / tea leaves      | 90%        | Global       | 1             |
| 🌿    | Herb             | Generic herb for cooking/medicine | 55%        | Global       | 2             |

---

## 2. 🐄 Raw Resources — Fauna

Living animals that produce resources (milk, eggs, wool) or are themselves a resource (meat, leather, fish).

| Emoji | Name             | Products                              | Spawn Rate | Spawn Points | Base Price 🪙 |
|-------|------------------|---------------------------------------|------------|--------------|---------------|
| 🐄    | Cow              | Milk, beef, leather                   | 60%        | Global       | 8             |
| 🐂    | Ox               | Draft power, beef                     | 15%        | 20           | 12            |
| 🐃    | Water Buffalo    | Milk, draft power                     | 10%        | 15           | 14            |
| 🐑    | Sheep            | Wool, mutton                          | 55%        | Global       | 6             |
| 🐏    | Ram              | Wool, mutton                          | 30%        | 25           | 8             |
| 🐐    | Goat             | Milk, cheese, meat                    | 35%        | 30           | 6             |
| 🐖    | Pig              | Pork, bacon, leather                  | 55%        | Global       | 7             |
| 🐗    | Boar             | Wild game meat                        | 25%        | 30           | 6             |
| 🐔    | Chicken          | Eggs, poultry                         | 80%        | Global       | 3             |
| 🐓    | Rooster          | Poultry                               | 50%        | Global       | 3             |
| 🦃    | Turkey           | Poultry, feathers                     | 30%        | 35           | 5             |
| 🦆    | Duck             | Eggs, poultry, feathers               | 35%        | Global       | 4             |
| 🦢    | Swan             | Feathers (decorative)                 | 3%         | 8            | 18            |
| 🐇    | Rabbit           | Fur, meat                             | 55%        | Global       | 4             |
| 🦌    | Deer             | Venison, hide, antlers                | 30%        | 40           | 8             |
| 🐎    | Horse            | Transport, draft power                | 25%        | Global       | 15            |
| 🐟    | Fish             | Food, oil                             | 85%        | 300          | 3             |
| 🐠    | Tropical Fish    | Exotic food                           | 25%        | 25           | 10            |
| 🐡    | Pufferfish       | Rare delicacy                         | 3%         | 5            | 25            |
| 🦈    | Shark            | Meat, fins                            | 5%         | 15           | 20            |
| 🐙    | Octopus          | Seafood                               | 12%        | 20           | 8             |
| 🦑    | Squid            | Seafood, ink                          | 12%        | 20           | 7             |
| 🦐    | Shrimp           | Seafood                               | 50%        | 80           | 5             |
| 🦀    | Crab             | Seafood                               | 30%        | 50           | 8             |
| 🦞    | Lobster          | Seafood (luxury)                      | 10%        | 15           | 18            |
| 🐝    | Bee              | Honey, beeswax                        | 35%        | Global       | 5             |
| 🐛    | Caterpillar      | Silk (silkworm)                       | 10%        | 12           | 12            |
| 🕷️    | Spider           | Spider silk (rare)                    | 5%         | Global       | 10            |
| 🦅    | Eagle            | Feathers, hunting aid                 | 5%         | 10           | 20            |
| 🦉    | Owl              | Feathers, pest control                | 12%        | 20           | 8             |
| 🦜    | Parrot           | Exotic pet / trade good               | 10%        | 12           | 18            |
| 🐦    | Bird             | Feathers, eggs                        | 80%        | Global       | 2             |
| 🦚    | Peacock          | Decorative feathers                   | 3%         | 5            | 25            |
| 🐺    | Wolf             | Fur, wild game                        | 12%        | 20           | 10            |
| 🦊    | Fox              | Fur                                   | 10%        | 15           | 12            |
| 🐻    | Bear             | Fur, meat, fat                        | 5%         | 10           | 18            |
| 🐊    | Crocodile        | Leather (exotic)                      | 5%         | 8            | 20            |
| 🐢    | Turtle           | Shell (decorative)                    | 10%        | 15           | 8             |
| 🐍    | Snake            | Venom (medicine), skin                | 12%        | 15           | 10            |
| 🐘    | Elephant         | Ivory (historical), draft power       | 3%         | 5            | 40            |
| 🦏    | Rhinoceros       | Horn (trade good)                     | 2%         | 3            | 50            |
| 🦬    | Bison            | Meat, hide                            | 15%        | 20           | 10            |
| 🪿    | Goose            | Eggs, feathers, down                  | 30%        | 35           | 4             |
| 🫏    | Donkey           | Draft power, transport                | 25%        | Global       | 8             |
| 🦩    | Flamingo         | Decorative feathers                   | 3%         | 5            | 22            |
| 🐪    | Camel            | Milk, transport (desert)              | 12%        | 15           | 15            |
| 🐫    | Two-Hump Camel   | Wool, transport (desert)              | 10%        | 12           | 16            |
| 🦙    | Llama            | Wool, transport (mountain)            | 10%        | 12           | 12            |
| 🦫    | Beaver           | Fur, dam-building                     | 12%        | 15           | 8             |
| 🦦    | Otter            | Fur                                   | 5%         | 10           | 12            |
| 🐈    | Cat              | Pest control                          | 30%        | Global       | 5             |
| 🐕    | Dog              | Herding, guarding                     | 35%        | Global       | 5             |

---

## 3. 💎 Raw Resources — Minerals & Elements

Non-living natural resources extracted from the earth or environment.

| Emoji | Name             | Notes                                 | Spawn Rate | Spawn Points | Base Price 🪙 |
|-------|------------------|---------------------------------------|------------|--------------|---------------|
| 💎    | Gem / Diamond    | Precious gemstone                     | 2%         | 5            | 100           |
| 🪨    | Rock / Stone     | Base building & crafting material     | 95%        | Global       | 1             |
| 🧊    | Ice              | Cold-climate resource, water source   | 50%        | 100          | 2             |
| 💧    | Water            | Essential resource for all production | 90%        | Global       | 1             |
| 🛢️    | Oil Barrel       | Petroleum / crude oil                 | 8%         | 10           | 15            |
| 🧂    | Salt             | Mineral for food preservation         | 30%        | 40           | 4             |
| 🪸    | Coral            | Marine mineral resource               | 10%        | 15           | 8             |

> **Note:** Godot emoji rendering can represent different ore types (iron, copper, gold, coal) by tinting or labeling the 🪨 rock emoji. Consider using colored circles as ore indicators:
>
> | Emoji | Ore Type   | Spawn Rate | Spawn Points | Base Price 🪙 |
> |-------|------------|------------|--------------|---------------|
> | 🟤    | Iron Ore   | 45%        | 60           | 8             |
> | 🟠    | Copper Ore | 30%        | 40           | 10            |
> | 🟡    | Gold Ore   | 3%         | 5            | 50            |
> | ⚫    | Coal       | 50%        | Global       | 5             |
> | ⬜    | Limestone  | 35%        | Global       | 3             |
> | 🔵    | Sapphire   | 2%         | 4            | 80            |
> | 🔴    | Ruby       | 2%         | 4            | 80            |
> | 🟢    | Emerald    | 1%         | 3            | 90            |

---

## 4. 🪵 Intermediate Resources

First-stage processed goods. These are created from raw resources and serve as inputs for finished goods.

| Emoji | Name             | Made From                     | Used In                            | Base Price 🪙 |
|-------|------------------|-------------------------------|------------------------------------|---------------|
| 🪵    | Lumber / Planks  | 🌲🌳 Trees                   | Buildings, furniture, tools        | 5             |
| 🧵    | Thread           | 🐛 Silkworm / 🌿 Flax       | Cloth, clothing, sails             | 6             |
| 🧶    | Yarn / Wool      | 🐑 Sheep                     | Clothing, blankets                 | 5             |
| 🪶    | Feather          | 🦆🐔🦃 Poultry/Birds        | Arrows, quills, pillows            | 3             |
| 🥚    | Egg              | 🐔 Chicken / 🦆 Duck         | Baking, food                       | 2             |
| 🥛    | Milk             | 🐄 Cow / 🐐 Goat             | Cheese, butter, cream              | 3             |
| 🧈    | Butter           | 🥛 Milk                      | Baking, cooking                    | 5             |
| 🍯    | Honey            | 🐝 Bee                       | Mead, sweets, medicine             | 6             |
| 🧱    | Brick            | 🪨 Clay + 🔥 Fire            | Buildings, walls                   | 4             |
| 📜    | Parchment        | 🐑 Sheepskin / 🪵 Wood pulp  | Books, scrolls, maps               | 8             |
| 🪣    | Bucket           | 🪵 Wood / 🪨 Metal           | Water transport, milking           | 4             |
| 🪡    | Needle           | 🪨 Metal ore                 | Sewing, tailoring                  | 5             |
| 🫗    | Liquid (generic) | Various                       | Potions, oils, spirits             | 3             |
| 🏮    | Paper Lantern    | 📜 Paper + 🕯️ Candle        | Lighting, decoration               | 7             |
| ♱️    | Clay Pot         | 🪨 Clay + 🔥 Fire            | Storage, cooking vessels           | 4             |
| 🪢    | Rope             | 🌿 Hemp / 🧵 Thread          | Rigging, construction, binding     | 4             |
| 🫙    | Jar              | 🪨 Clay / Glass              | Preservation, storage              | 4             |

---

## 5. 🍞 Finished Goods — Food & Drink

Consumable products created by combining raw and intermediate resources. Restores population health/happiness.

### 🥖 Baked Goods

| Emoji | Name             | Ingredients                          | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🍞    | Bread            | 🌾 Wheat → Flour + 💧 Water         | 5             |
| 🥖    | Baguette         | 🌾 Flour + 💧 Water                 | 5             |
| 🥐    | Croissant        | 🌾 Flour + 🧈 Butter                | 8             |
| 🫓    | Flatbread        | 🌾 Flour + 💧 Water                 | 4             |
| 🥞    | Pancakes         | 🌾 Flour + 🥚 Egg + 🥛 Milk        | 7             |
| 🧇    | Waffle           | 🌾 Flour + 🥚 Egg + 🥛 Milk        | 7             |
| 🍩    | Donut            | 🌾 Flour + 🍯 Honey + 🛢️ Oil       | 8             |
| 🍪    | Cookie           | 🌾 Flour + 🧈 Butter + 🍯 Honey    | 6             |
| 🥧    | Pie              | 🌾 Flour + 🍎 Fruit + 🧈 Butter    | 12            |
| 🎂    | Cake             | 🌾 Flour + 🥚 Egg + 🥛 Milk + 🍯   | 15            |
| 🍰    | Cake Slice       | (portion of 🎂)                      | 8             |
| 🧁    | Cupcake          | 🌾 Flour + 🥚 Egg + 🍯 Honey       | 10            |
| 🥮    | Mooncake         | 🌾 Flour + 🥚 Egg + 🫘 Bean paste  | 12            |

### 🥩 Meat & Protein

| Emoji | Name             | Ingredients                          | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🥩    | Steak            | 🐄 Cow                               | 12            |
| 🥓    | Bacon            | 🐖 Pig + 🧂 Salt                    | 10            |
| 🍖    | Meat on Bone     | 🐄🐖🐑 Livestock                    | 8             |
| 🍗    | Poultry Leg      | 🐔🦃 Poultry                        | 6             |
| 🌭    | Hot Dog          | 🐖 Pork + 🍞 Bread                  | 7             |
| 🍔    | Hamburger        | 🐄 Beef + 🍞 Bread + 🥬 Lettuce    | 10            |

### 🍲 Prepared Meals

| Emoji | Name             | Ingredients                          | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🍕    | Pizza            | 🍞 Dough + 🧀 Cheese + 🍅 Tomato   | 12            |
| 🌮    | Taco             | 🌽 Corn + 🥩 Meat + 🥬 Lettuce     | 10            |
| 🌯    | Burrito          | 🌾 Flour + 🥩 Meat + 🫘 Beans      | 10            |
| 🥙    | Pita             | 🫓 Flatbread + 🥩 Meat + 🥬 Veg    | 10            |
| 🧆    | Falafel          | 🫘 Beans + 🌶️ Spices               | 8             |
| 🥘    | Stew             | 🥩 Meat + 🥔 Potato + 🥕 Carrot    | 10            |
| 🍲    | Pot of Food      | Mixed ingredients                    | 8             |
| 🫕    | Fondue           | 🧀 Cheese + 🍷 Wine                 | 18            |
| 🥗    | Salad            | 🥬 Greens + 🍅 Tomato + 🥒 Cucumber| 6             |
| 🍝    | Spaghetti        | 🌾 Flour + 🍅 Tomato sauce          | 10            |
| 🍜    | Noodle Soup      | 🌾 Flour + 💧 Broth                 | 8             |
| 🍛    | Curry            | 🥩 Meat + 🌶️ Spices + 🍚 Rice     | 12            |
| 🍣    | Sushi            | 🍚 Rice + 🐟 Fish + 🌿 Seaweed     | 18            |
| 🍱    | Bento Box        | 🍚 Rice + 🐟 Fish + 🥬 Veg         | 15            |
| 🥟    | Dumpling         | 🌾 Flour + 🥩 Meat                  | 8             |
| 🍤    | Fried Shrimp     | 🦐 Shrimp + 🌾 Flour + 🛢️ Oil     | 12            |
| 🍙    | Rice Ball        | 🍚 Rice + 🌿 Seaweed               | 5             |
| 🍚    | Cooked Rice      | 🌾 Raw rice + 💧 Water              | 4             |
| 🍘    | Rice Cracker     | 🍚 Rice + 🧂 Salt                   | 5             |
| 🍢    | Oden / Skewer    | 🐟 Fish + 🥔 Vegetables             | 8             |
| 🍡    | Dango            | 🍚 Rice flour + 🍯 Honey            | 6             |
| 🥪    | Sandwich         | 🍞 Bread + 🥩 Meat + 🧀 Cheese     | 8             |

### 🍬 Sweets & Confections

| Emoji | Name             | Ingredients                          | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🍧    | Shaved Ice       | 🧊 Ice + 🍓 Fruit syrup             | 5             |
| 🍨    | Ice Cream        | 🥛 Milk + 🍯 Sugar + 🍓 Fruit      | 8             |
| 🍫    | Chocolate        | 🫘 Cacao beans + 🥛 Milk            | 12            |
| 🍬    | Candy            | 🍯 Honey / Sugar                    | 6             |
| 🍭    | Lollipop         | 🍯 Sugar                            | 5             |
| 🍮    | Custard / Flan   | 🥚 Egg + 🥛 Milk + 🍯 Sugar        | 10            |

### 🧀 Dairy Products

| Emoji | Name             | Ingredients                          | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🧀    | Cheese           | 🥛 Milk + 🧂 Salt + Time            | 10            |

### 🍺 Drinks & Beverages

| Emoji | Name             | Ingredients                          | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🍺    | Beer             | 🌾 Wheat/Barley + 💧 Water + Yeast  | 6             |
| 🍻    | Beer Mugs        | (variant of 🍺)                      | 6             |
| 🍷    | Wine             | 🍇 Grapes + Time                    | 15            |
| 🍸    | Cocktail         | 🫗 Spirits + 🍊 Fruit               | 18            |
| 🍹    | Tropical Drink   | 🫗 Spirits + 🍍 Tropical fruit      | 18            |
| 🥃    | Whiskey          | 🌾 Grain + 💧 Water + 🪵 Oak barrel | 22            |
| 🍶    | Sake             | 🍚 Rice + 💧 Water                  | 15            |
| ☕    | Coffee           | 🫘 Coffee beans + 💧 Water          | 8             |
| 🍵    | Tea              | 🍃 Tea leaves + 💧 Water            | 6             |
| 🧃    | Juice Box        | 🍎 Fruit + 💧 Water                 | 5             |
| 🥤    | Soft Drink       | 💧 Water + 🍯 Sugar                 | 4             |
| 🧋    | Bubble Tea       | 🍵 Tea + 🥛 Milk + 🍯 Sugar        | 10            |
| 🥂    | Champagne        | 🍇 Grapes (sparkling)               | 25            |
| 🫖    | Teapot           | (vessel for 🍵)                      | 12            |

---

## 6. 👗 Finished Goods — Clothing & Textiles

Wearable items crafted from thread, yarn, leather, and other intermediate materials.

| Emoji | Name             | Made From                            | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 👕    | T-Shirt          | 🧵 Thread / Cloth                   | 10            |
| 👔    | Necktie / Shirt  | 🧵 Thread / Silk                    | 12            |
| 👗    | Dress            | 🧵 Thread / Cloth                   | 20            |
| 👖    | Jeans / Pants    | 🧵 Thread / Cloth                   | 15            |
| 🧥    | Coat             | 🧶 Wool / 🧵 Cloth + 🪶 Down       | 25            |
| 👒    | Sun Hat          | 🧵 Straw / Cloth                    | 8             |
| 🧣    | Scarf            | 🧶 Yarn / Wool                      | 10            |
| 🧤    | Gloves           | 🧶 Yarn / Leather                   | 10            |
| 🧦    | Socks            | 🧶 Yarn                             | 6             |
| 👞    | Dress Shoe       | Leather (from 🐄)                   | 18            |
| 👟    | Sneaker          | 🧵 Cloth + Rubber                   | 15            |
| 👠    | High Heel        | Leather + 💎 Gem                    | 35            |
| 👡    | Sandal           | Leather                              | 10            |
| 👢    | Boot             | Leather + 🧵 Thread                 | 20            |
| 👑    | Crown            | 🟡 Gold + 💎 Gems                   | 80            |
| 💍    | Ring             | 🟡 Gold / Silver + 💎 Gem           | 60            |
| 👛    | Purse            | Leather / 🧵 Cloth                  | 15            |
| 👜    | Handbag          | Leather                              | 20            |
| 🎒    | Backpack         | 🧵 Cloth + 🧵 Thread                | 15            |
| 💼    | Briefcase        | Leather + 🪨 Metal clasp            | 25            |
| 🧳    | Suitcase         | Leather / 🧵 Cloth + 🪨 Metal      | 30            |
| 🥻    | Sari             | 🧵 Silk / Cloth                     | 18            |
| 🩱    | Swimsuit         | 🧵 Cloth                            | 12            |
| 🩲    | Undergarments    | 🧵 Cloth                            | 6             |
| 🩳    | Shorts           | 🧵 Cloth                            | 8             |
| 🩴    | Flip Flops       | Rubber                               | 5             |
| 🎩    | Top Hat          | 🧵 Felt / 🧶 Wool                  | 20            |
| 🎓    | Graduation Cap   | 🧵 Cloth + 📜 Parchment             | 15            |
| ⛑️    | Rescue Helmet    | 🪨 Metal + Leather                  | 25            |
| 🪖    | Military Helmet  | 🪨 Metal + Leather                  | 30            |

---

## 7. 🏺 Finished Goods — Crafted Objects

Non-consumable, non-wearable manufactured items. Includes art, books, furniture, instruments, tools, and science equipment.

### 📚 Knowledge & Writing

| Emoji | Name             | Made From                            | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 📖    | Open Book        | 📜 Parchment + 🧵 Thread binding    | 15            |
| 📚    | Books            | 📜 Parchment + Leather cover         | 20            |
| 🗺️    | Map              | 📜 Parchment + Ink                  | 18            |
| 📃    | Document         | 📜 Parchment                        | 8             |

### 🎸 Music & Art

| Emoji | Name             | Made From                            | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🎸    | Guitar           | 🪵 Wood + 🧵 String                 | 25            |
| 🎺    | Trumpet          | 🪨 Metal (brass)                    | 30            |
| 🥁    | Drum             | 🪵 Wood + Leather                   | 18            |
| 🎻    | Violin           | 🪵 Wood + 🧵 String + 🪶 Horsehair | 40            |
| 🎹    | Piano / Keys     | 🪵 Wood + 🪨 Metal + Ivory          | 60            |
| 🎨    | Artist Palette   | 🪵 Wood + Pigments                  | 12            |
| 🖼️    | Framed Picture   | 🪵 Wood frame + Canvas              | 20            |
| 🎭    | Theater Masks    | 🪵 Wood / 📜 Papier-mâché          | 15            |

### 🏺 Decorative & Household

| Emoji | Name             | Made From                            | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🏺    | Amphora          | 🪨 Clay + 🔥 Fire                   | 10            |
| 🪔    | Oil Lamp         | 🪨 Clay / Metal + 🛢️ Oil           | 8             |
| 🕰️    | Mantle Clock     | 🪵 Wood + ⚙️ Gears + 🪨 Metal      | 35            |
| 🪞    | Mirror           | 🪨 Glass + Metal                    | 20            |
| 🪆    | Nesting Dolls    | 🪵 Wood + Paint                     | 15            |
| 🧸    | Teddy Bear       | 🧵 Cloth + 🧶 Stuffing              | 12            |
| 🪑    | Chair            | 🪵 Wood                             | 10            |
| 🛏️    | Bed              | 🪵 Wood + 🧵 Cloth + 🪶 Down       | 25            |
| 🕯️    | Candle           | 🐝 Beeswax + 🧵 Wick               | 4             |
| 💡    | Light Bulb       | 🪨 Glass + Metal + Wire             | 8             |
| 🔑    | Key              | 🪨 Metal                            | 5             |
| 🪙    | Coin             | 🟡 Gold / Silver / Copper           | 1             |
| 📦    | Box / Crate      | 🪵 Wood                             | 4             |

### 🔬 Science & Navigation

| Emoji | Name             | Made From                            | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🧭    | Compass          | 🪨 Metal + 💎 Lodestone             | 20            |
| ⏳    | Hourglass        | 🪨 Glass + 🧂 Sand                  | 15            |
| ⌚    | Watch            | 🪨 Metal + ⚙️ Gears                 | 30            |
| ⏰    | Alarm Clock      | 🪨 Metal + ⚙️ Gears + 🔔 Bell      | 25            |
| 🔔    | Bell             | 🪨 Metal (bronze)                   | 10            |
| 🔬    | Microscope       | 🪨 Metal + 🪨 Glass lenses          | 40            |
| 🔭    | Telescope        | 🪨 Metal + 🪨 Glass lenses          | 45            |
| ⚗️    | Alembic          | 🪨 Glass                            | 20            |
| 🧪    | Test Tube        | 🪨 Glass                            | 10            |
| 🧫    | Petri Dish       | 🪨 Glass                            | 8             |
| 🧬    | Magnet           | 🪨 Iron ore                         | 12            |

### 🎲 Games & Toys

| Emoji | Name             | Made From                            | Base Price 🪙 |
|-------|------------------|--------------------------------------|---------------|
| 🪀    | Yo-Yo            | 🪵 Wood + 🧵 String                 | 5             |
| 🎲    | Dice             | 🪵 Wood / 🪨 Stone                  | 4             |
| ♟️    | Chess Piece      | 🪵 Wood / 🪨 Stone                  | 8             |
| 🎯    | Dart Board       | 🪵 Wood + Paint                     | 10            |
| 🧩    | Puzzle           | 🪵 Wood / 📜 Cardboard              | 6             |
| 🪁    | Kite             | 🧵 Cloth + 🪵 Wood + 🧵 String     | 8             |
| 🪤    | Mouse Trap       | 🪵 Wood + 🪨 Metal spring           | 5             |

---

## 8. 👷 Professions

Worker types that operate the various production chains. Each province can support a limited number of profession slots.

| Emoji | Profession       | Operates On                          |
|-------|------------------|--------------------------------------|
| 👨‍🌾    | Farmer           | Crops, orchards, vineyards           |
| 🧑‍🌾    | Farmer (alt)     | Crops, orchards, vineyards           |
| 👨‍🍳    | Chef / Cook      | Food preparation, baking             |
| 🧑‍🍳    | Chef (alt)       | Food preparation, baking             |
| 👷    | Builder          | Construction, infrastructure         |
| 👨‍🏭    | Factory Worker   | Manufacturing, processing            |
| 👨‍🔬    | Scientist        | Research, alchemy, chemistry         |
| 🧑‍🔬    | Scientist (alt)  | Research, alchemy, chemistry         |
| 👨‍⚕️    | Doctor           | Medicine, healing, hospitals         |
| 🧑‍⚕️    | Doctor (alt)     | Medicine, healing, hospitals         |
| 👨‍🎓    | Scholar          | Research, education, libraries       |
| 👨‍🏫    | Teacher          | Education, training                  |
| 👨‍💼    | Merchant         | Trade, commerce, markets             |
| 🧑‍💼    | Merchant (alt)   | Trade, commerce, markets             |
| 👨‍🔧    | Mechanic         | Repairs, engineering, machinery      |
| 🧑‍🔧    | Mechanic (alt)   | Repairs, engineering, machinery      |
| 👨‍✈️    | Pilot / Captain  | Air/sea transport                    |
| 👨‍🚒    | Firefighter      | Emergency, safety                    |
| 👮    | Guard / Police   | Security, law enforcement            |
| 💂    | Royal Guard      | Castle defense, royal service        |
| 🥷    | Ninja / Spy      | Espionage, sabotage                  |
| 🧙    | Mage / Wizard    | Magic, enchanting, potions           |
| 🧝    | Elf / Ranger     | Forestry, archery, nature            |
| 🧑‍⚖️    | Judge / Governor | Administration, law                  |
| 🧑‍🎨    | Artist           | Painting, sculpture, decoration      |
| 🧑‍🎤    | Bard / Performer | Entertainment, morale                |
| 🧑‍💻    | Engineer         | Machines, automation, tech           |
| ⛏️    | Miner            | Mining ores, gems, stone             |
| 🎣    | Fisher           | Fishing, aquaculture                 |
| 🤴    | Prince / Lord    | Governance, diplomacy                |
| 👸    | Princess / Lady  | Governance, diplomacy                |
| 👨‍🚀    | Explorer         | Discovery, new territories           |
| 🧑‍🏭    | Miller           | Grain processing, lumber milling     |
| 🍺    | Brewer           | Beer, wine, spirits production       |
| 🧑‍🍳    | Baker            | Bread, pastries, baked goods         |
| 🪚    | Lumberjack       | Timber harvesting                    |
| 🧑‍🎓    | Alchemist        | Potions, transmutation               |

---

## 9. 🏭 Buildings & Infrastructure

Structures where production, trade, storage, and governance happen. Built using intermediate resources.

| Emoji | Building          | Function                             | Build Cost                    |
|-------|-------------------|--------------------------------------|-------------------------------|
| 🏠    | House             | Population housing                   | 🪵 + 🧱                      |
| 🏡    | Garden House      | Small farm housing                   | 🪵 + 🧱                      |
| 🏢    | Office Building   | Administration, trade hub            | 🧱 + 🪨                      |
| 🏣    | Post Office       | Mail, communication                  | 🧱 + 🪨                      |
| 🏤    | European Post     | Communication hub                    | 🧱 + 🪨                      |
| 🏥    | Hospital          | Healing, medicine production         | 🧱 + 🪨 + 🪵                |
| 🏦    | Bank              | Currency storage, lending            | 🧱 + 🪨 + 🟡 Gold           |
| 🏨    | Hotel / Inn       | Traveler housing, trade rest stop    | 🪵 + 🧱                      |
| 🏪    | Convenience Store | Small retail / market stall          | 🪵 + 🧱                      |
| 🏫    | School            | Education, training professions      | 🧱 + 🪵 + 📚                |
| 🏬    | Department Store  | Large market / trade center          | 🧱 + 🪨 + 🪵                |
| 🏭    | Factory           | Mass manufacturing                   | 🧱 + 🪨 + ⚙️                |
| 🏯    | Japanese Castle   | Military fortress                    | 🪨 + 🪵                      |
| 🏰    | Castle            | Governance, military defense         | 🪨 + 🪵 + 🧱                |
| 💒    | Chapel            | Morale, ceremonies                   | 🪨 + 🪵                      |
| ⛪    | Church            | Morale, community                    | 🪨 + 🪵                      |
| 🕌    | Mosque            | Morale, community                    | 🪨 + 🧱                      |
| 🛕    | Temple            | Morale, blessings                    | 🪨 + 🟡 Gold                |
| 🕍    | Synagogue         | Morale, community                    | 🪨 + 🪵                      |
| ⛩️    | Shrine Gate       | Morale, nature bonus                 | 🪵                            |
| 🗼    | Tower             | Lookout, defense                     | 🪨 + 🧱                      |
| ⛲    | Fountain          | Morale, water supply                 | 🪨 + 💧                      |
| ⛺    | Tent              | Temporary shelter                    | 🧵 Cloth + 🪵 Poles          |
| 🏗️    | Construction Site | Building in progress                 | —                             |
| 🛖    | Hut               | Basic shelter                        | 🪵                            |
| 🏟️    | Stadium           | Entertainment, morale                | 🪨 + 🧱                      |
| 🎪    | Circus Tent       | Entertainment, morale                | 🧵 Cloth + 🪵 Poles          |

---

## 10. 🔨 Tools & Equipment

Items used by professions to produce goods. Tools have durability and can break over time.

| Emoji | Tool              | Used By                  | Made From                    | Base Price 🪙 |
|-------|-------------------|--------------------------|------------------------------|---------------|
| ⚒️    | Hammer & Pick     | ⛏️ Miner, 👷 Builder     | 🪨 Metal + 🪵 Wood          | 12            |
| 🔨    | Hammer            | 👷 Builder               | 🪨 Metal + 🪵 Wood          | 10            |
| ⛏️    | Pickaxe           | ⛏️ Miner                 | 🪨 Metal + 🪵 Wood          | 12            |
| 🪓    | Axe               | 🪚 Lumberjack            | 🪨 Metal + 🪵 Wood          | 10            |
| 🔧    | Wrench            | 🧑‍🔧 Mechanic            | 🪨 Metal                    | 8             |
| 🔩    | Nut & Bolt        | 🧑‍🔧 Mechanic, 👷 Builder | 🪨 Metal                    | 3             |
| ⚙️    | Gear              | 🧑‍💻 Engineer             | 🪨 Metal                    | 6             |
| 🪚    | Saw               | 🪚 Lumberjack, 👷 Builder| 🪨 Metal + 🪵 Wood          | 10            |
| 🪝    | Hook              | 🎣 Fisher                | 🪨 Metal                    | 4             |
| 🪜    | Ladder            | 👷 Builder               | 🪵 Wood                     | 8             |
| 🪛    | Screwdriver       | 🧑‍🔧 Mechanic            | 🪨 Metal + 🪵 Wood          | 8             |
| 🎣    | Fishing Rod       | 🎣 Fisher                | 🪵 Wood + 🧵 String         | 8             |
| 🏹    | Bow & Arrow       | 🧝 Ranger                | 🪵 Wood + 🧵 String + 🪶    | 15            |
| ⚖️    | Scale / Balance   | 👨‍💼 Merchant             | 🪨 Metal                    | 12            |

---

## 11. 🚢 Transportation

Vehicles and draft animals that move goods and people between provinces. Speed and capacity vary by type.

### 🐴 Animal Transport

| Emoji | Name             | Terrain          | Capacity | Speed   |
|-------|------------------|------------------|----------|---------|
| 🐴    | Horse            | Land (plains)    | Low      | Fast    |
| 🐪    | Camel            | Land (desert)    | Medium   | Medium  |
| 🐫    | Bactrian Camel   | Land (desert)    | Medium   | Medium  |
| 🐘    | Elephant         | Land (jungle)    | High     | Slow    |
| 🦙    | Llama            | Land (mountain)  | Low      | Medium  |
| 🫏    | Donkey           | Land (all)       | Medium   | Slow    |

### 🚗 Land Vehicles

| Emoji | Name             | Capacity | Speed   |
|-------|------------------|----------|---------|
| 🚗    | Car              | Low      | Fast    |
| 🚕    | Taxi             | Low      | Fast    |
| 🚌    | Bus              | High     | Medium  |
| 🚐    | Minibus          | Medium   | Medium  |
| 🚑    | Ambulance        | Low      | Fast    |
| 🚒    | Fire Engine      | Medium   | Fast    |
| 🚓    | Police Car       | Low      | Fast    |
| 🚚    | Delivery Truck   | High     | Medium  |
| 🚛    | Semi Truck       | V. High  | Slow    |
| 🚜    | Tractor          | Medium   | Slow    |
| 🏎️    | Race Car         | Low      | V. Fast |
| 🛻    | Pickup Truck     | Medium   | Medium  |
| 🚂    | Locomotive       | V. High  | Medium  |
| 🚃    | Railway Car      | V. High  | Medium  |
| 🚲    | Bicycle          | Low      | Slow    |
| 🛞    | Wheel            | Component|  —      |

### ⛵ Water Vehicles

| Emoji | Name             | Capacity | Speed   |
|-------|------------------|----------|---------|
| 🚢    | Ship             | V. High  | Medium  |
| ⛵    | Sailboat         | Medium   | Medium  |
| 🚤    | Speedboat        | Low      | Fast    |
| 🛥️    | Motor Boat       | Medium   | Fast    |
| 🛳️    | Passenger Ship   | V. High  | Slow    |
| 🛶    | Canoe            | Low      | Slow    |

### ✈️ Air Vehicles

| Emoji | Name             | Capacity | Speed   |
|-------|------------------|----------|---------|
| ✈️    | Airplane         | High     | V. Fast |
| 🚀    | Rocket           | Low      | V. Fast |
| 🚁    | Helicopter       | Medium   | Fast    |

### 🛣️ Infrastructure

| Emoji | Name             | Notes                                |
|-------|------------------|--------------------------------------|
| 🛣️    | Highway          | Fast land route                      |
| 🛤️    | Railway          | High-capacity land route             |
| ⛽    | Gas Station      | Fuel for vehicles                    |

---

## 12. 🏔️ Terrain & Biomes

Province terrain types that determine which raw resources are naturally available. Each province has one biome.

| Emoji | Biome            | Available Raw Resources                               |
|-------|------------------|-------------------------------------------------------|
| 🏔️    | Mountains        | 🪨 Stone, 💎 Gems, ⛏️ Ore, 🐐 Goat, 🌲 Conifers    |
| ⛰️    | Hills            | 🪨 Stone, 🐑 Sheep, 🌳 Trees, 🌾 Grain              |
| 🌋    | Volcano          | 🪨 Obsidian, 🧂 Minerals, ⚫ Coal                    |
| 🏕️    | Forest           | 🌲🌳 Timber, 🍄 Mushroom, 🦌 Deer, 🐻 Bear, 🍯 Honey|
| 🏖️    | Beach / Coast    | 🐟 Fish, 🦐 Shellfish, 🧂 Salt, 🪸 Coral            |
| 🏜️    | Desert           | 🌵 Cactus, 🐪 Camel, 🧂 Salt, 🛢️ Oil               |
| 🏝️    | Island           | 🌴 Palm, 🥥 Coconut, 🐟 Fish, 🍍 Tropical fruit     |
| 🏞️    | Valley / Plains  | 🌾 Wheat, 🌽 Corn, 🐄 Cattle, 🐖 Pigs              |
| 🌊    | Ocean            | 🐟 Fish, 🦈 Shark, 🐙 Octopus, 🦑 Squid, 🪸 Coral  |
| ❄️    | Tundra / Arctic  | 🧊 Ice, 🐻 Bear, 🦌 Reindeer, 🐺 Wolf               |
| 🌨️    | Snowy            | 🧊 Ice, 🌲 Conifers, 🐺 Wolf                        |
| 🌧️    | Rainy / Tropical | 🌴 Palm, 🍌 Banana, 🥭 Mango, 🌿 Herbs              |
| ☀️    | Sunny / Arid     | 🌻 Sunflower, 🍇 Grape, 🫒 Olive, 🍊 Citrus         |
| 🌤️    | Temperate        | 🌾 Grain, 🍎 Apple, 🐄 Cattle, 🌳 Trees             |
| 🌿    | Grassland        | 🐄 Cattle, 🐑 Sheep, 🌾 Grain, 🍀 Clover            |
| 🌲    | Taiga            | 🌲 Conifers, 🐺 Wolf, 🦫 Beaver, 🪵 Timber          |
| 🌴    | Jungle           | 🍌 Banana, 🥭 Mango, 🐍 Snake, 🦜 Parrot, 🌿 Herbs |

---

## 13. 💰 Currency & Trade

Monetary and economic symbols used for commerce between provinces.

| Emoji | Name             | Role                                  |
|-------|------------------|---------------------------------------|
| 💰    | Money Bag        | Generic currency / savings            |
| 💴    | Yen Note         | Eastern currency                      |
| 💵    | Dollar Note      | Western currency                      |
| 💶    | Euro Note        | European currency                     |
| 💷    | Pound Note       | British currency                      |
| 💳    | Credit Card      | Modern payment                        |
| 🪙    | Coin             | Basic currency unit                   |
| 💲    | Dollar Sign      | Price indicator                       |
| 🏧    | ATM              | Currency exchange point               |
| ⚖️    | Balance Scale    | Fair trade, weighing goods            |
| 📊    | Bar Chart        | Economic statistics                   |
| 📈    | Chart Up         | Price increase / prosperity           |
| 📉    | Chart Down       | Price decrease / recession            |

---

## 14. ⚡ Energy & Power

Energy sources that fuel production buildings and enable advanced manufacturing.

| Emoji | Name             | Type         | Notes                          |
|-------|------------------|--------------|--------------------------------|
| 🔥    | Fire             | Combustion   | Basic energy, smelting, cooking|
| ⚡    | Lightning / Elec | Electrical   | Advanced manufacturing         |
| 💡    | Light Bulb       | Electrical   | Modern power indicator         |
| 🕯️    | Candle           | Combustion   | Basic lighting                 |
| ☀️    | Sun              | Solar        | Renewable energy               |
| 💨    | Wind             | Wind         | Renewable energy (windmills)   |
| ♨️    | Hot Springs      | Geothermal   | Geothermal energy              |
| 🔋    | Battery          | Stored       | Portable energy                |
| ☢️    | Radioactive      | Nuclear      | Advanced energy (late game)    |
| ⚛️    | Atom             | Nuclear      | Advanced energy (late game)    |
| 🌙    | Moon             | Tidal        | Tidal/night energy             |

---

## 15. ⚔️ Military & Defense

Weapons, armor, and military symbols. Used for province defense and conquest.

| Emoji | Name             | Type         | Made From                      | Base Price 🪙 |
|-------|------------------|--------------|--------------------------------|---------------|
| ⚔️    | Crossed Swords   | Melee weapon | 🪨 Metal + 🪵 Wood hilt       | 25            |
| 🗡️    | Dagger           | Melee weapon | 🪨 Metal                      | 15            |
| 🏹    | Bow & Arrow      | Ranged weapon| 🪵 Wood + 🧵 String + 🪶     | 15            |
| 🔫    | Pistol           | Ranged weapon| 🪨 Metal + 🪵 Wood            | 30            |
| 💣    | Bomb             | Explosive    | 🪨 Metal + ⚫ Gunpowder       | 35            |
| 🛡️    | Shield           | Armor        | 🪵 Wood + 🪨 Metal            | 20            |
| 🪖    | Military Helmet  | Armor        | 🪨 Metal + Leather             | 30            |
| 🎖️    | Military Medal   | Decoration   | 🟡 Gold + Ribbon               | 40            |

---

## 🔗 Example Production Chains

### Bread Chain
```
🌾 Wheat  →  (👨‍🌾 Farmer)  →  🌾 Grain
🌾 Grain  →  (🧑‍🏭 Miller)  →  Flour
Flour + 💧 Water  →  (🧑‍🍳 Baker)  →  🍞 Bread
```

### Wine Chain
```
🍇 Grapes  →  (👨‍🌾 Farmer)  →  🍇 Harvested Grapes
🍇 Grapes  →  (🍺 Brewer)  →  🍷 Wine
🍷 Wine + ⏳ Time  →  🍷 Aged Wine (luxury)
```

### Clothing Chain
```
🐑 Sheep  →  (👨‍🌾 Farmer)  →  🧶 Wool
🧶 Wool  →  (🧑‍🏭 Factory Worker)  →  🧵 Thread / Cloth
🧵 Cloth  →  (🧑‍🏭 Tailor)  →  👕 Clothing
```

### Sword Chain
```
🪨 Iron Ore  →  (⛏️ Miner)  →  🪨 Raw Iron
🪨 Raw Iron + 🔥 Fire  →  (🧑‍🏭 Blacksmith)  →  ⚔️ Sword
🪵 Wood  →  (🪚 Lumberjack)  →  🪵 Lumber  →  Sword Hilt
```

### Cheese Chain
```
🐄 Cow  →  (👨‍🌾 Farmer)  →  🥛 Milk
🥛 Milk + 🧂 Salt  →  (🧑‍🍳 Chef)  →  🧀 Cheese
```

---

## 📝 Notes

- **Dual-purpose emojis**: Some emojis appear in multiple categories (e.g., 🏹 in Tools & Military, ☀️ in Terrain & Energy). In the game data, give them a primary category and tag secondary uses.
- **Ore variants**: Since there aren't unique emojis for each metal ore, use colored circles (🟤🟠🟡⚫⬜🔵🔴🟢) as ore indicators alongside 🪨.
- **Profession gender**: Use the gender-neutral `🧑‍` prefix in-game to keep a single emoji per role. Male/female variants listed above are alternatives.
- **Scalability**: New emojis can be added as Unicode expands. The category structure supports arbitrary growth.
- **Province assignment**: Each province's biome (Category 12) determines which raw resources (Categories 1–3) spawn naturally. Players build buildings (Category 9) and assign professions (Category 8) to process resources up the chain.
