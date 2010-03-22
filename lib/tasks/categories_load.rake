    desc %q(Load Categories into Database)
    task(:categories_load => :environment) { |t,args|
        Category.create!( 
                :id=> 1, 
                :name=> "Unknown Category", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 2, 
                :name=> "Miscellanous", 
                :parent_id=> 1
        )

        Category.create!( 
                :id=> 3, 
                :name=> "Urban Grow Kits & Systems", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 4, 
                :name=> "General Hydroponics", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 5, 
                :name=> "Pots & Trays", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 6, 
                :name=> "Grow Beds", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 7, 
                :name=> "AutoPot", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 8, 
                :name=> "Dual Flow", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 9, 
                :name=> "Flood and Drain", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 10, 
                :name=> "Aerogarden", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 11, 
                :name=> "Water Storage & Irrigation", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 12, 
                :name=> "Nutri-Film (NFT)", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 13, 
                :name=> "Air Pumps", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 14, 
                :name=> "Propagation", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 15, 
                :name=> "Wilma Drip System", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 16, 
                :name=> "Bubble Buckets", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 17, 
                :name=> "X-Stream Propagators", 
                :parent_id=> 3
        )

        Category.create!( 
                :id=> 18, 
                :name=> "hydrogarden", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 19, 
                :name=> "products", 
                :parent_id=> 18
        )

        Category.create!( 
                :id=> 20, 
                :name=> "Soil & Mediums", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 21, 
                :name=> "Expanded Clay", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 22, 
                :name=> "Coco Fibre", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 23, 
                :name=> "Rockwool", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 24, 
                :name=> "Perlite", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 25, 
                :name=> "Organic Soils", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 26, 
                :name=> "Organic Starter Cubes", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 27, 
                :name=> "Worm & Bat Casts", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 28, 
                :name=> "Bat &Worm Casts", 
                :parent_id=> 20
        )

        Category.create!( 
                :id=> 29, 
                :name=> "Plant Lighting", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 30, 
                :name=> "High Power Lighting", 
                :parent_id=> 29
        )

        Category.create!( 
                :id=> 31, 
                :name=> "Low Energy Lighting", 
                :parent_id=> 29
        )

        Category.create!( 
                :id=> 32, 
                :name=> "Lighting Accessories", 
                :parent_id=> 29
        )

        Category.create!( 
                :id=> 33, 
                :name=> "Reflective Sheeting", 
                :parent_id=> 29
        )

        Category.create!( 
                :id=> 34, 
                :name=> "Nutrients & Additives", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 35, 
                :name=> "Canna", 
                :parent_id=> 34
        )

        Category.create!( 
                :id=> 36, 
                :name=> "BioBizz", 
                :parent_id=> 34
        )

        Category.create!( 
                :id=> 37, 
                :name=> "Growth Technology", 
                :parent_id=> 34
        )

        Category.create!( 
                :id=> 38, 
                :name=> "GHE", 
                :parent_id=> 34
        )

        Category.create!( 
                :id=> 39, 
                :name=> "Vitalink", 
                :parent_id=> 34
        )

        Category.create!( 
                :id=> 40, 
                :name=> "Air & Ventilation", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 41, 
                :name=> "Air Revitalisers", 
                :parent_id=> 40
        )

        Category.create!( 
                :id=> 42, 
                :name=> "Ventilation Fans & Filters", 
                :parent_id=> 40
        )

        Category.create!( 
                :id=> 43, 
                :name=> "Air Circulation Fans", 
                :parent_id=> 40
        )

        Category.create!( 
                :id=> 44, 
                :name=> "Carbon Dioxide Systems", 
                :parent_id=> 40
        )

        Category.create!( 
                :id=> 45, 
                :name=> "Humidity", 
                :parent_id=> 40
        )

        Category.create!( 
                :id=> 46, 
                :name=> "Grower's Tool Box", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 47, 
                :name=> "Seals, Tapes, Ezirollers & Hooks", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 48, 
                :name=> "Spraying", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 49, 
                :name=> "Hooks, Tapes & Seals", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 50, 
                :name=> "pH Testing", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 51, 
                :name=> "Nutrient Testing", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 52, 
                :name=> "Measuring", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 53, 
                :name=> "Thermometers & Hygrometers", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 54, 
                :name=> "Microscopes", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 55, 
                :name=> "Timers", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 56, 
                :name=> "Pest Control", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 57, 
                :name=> "Supports & Netting", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 58, 
                :name=> "Tank Heaters", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 59, 
                :name=> "Cleaning", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 60, 
                :name=> "Taking Cuttings", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 61, 
                :name=> "Harvesting", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 62, 
                :name=> "Water Pumps", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 63, 
                :name=> "Air Pumps", 
                :parent_id=> 46
        )

        Category.create!( 
                :id=> 64, 
                :name=> "Grow Cabinets", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 65, 
                :name=> "Eazi Stand", 
                :parent_id=> 64
        )

        Category.create!( 
                :id=> 66, 
                :name=> "Life Tents", 
                :parent_id=> 64
        )

        Category.create!( 
                :id=> 67, 
                :name=> "Eco System", 
                :parent_id=> 64
        )

        Category.create!( 
                :id=> 68, 
                :name=> "garland", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 69, 
                :name=> "products", 
                :parent_id=> 68
        )

        Category.create!( 
                :id=> 70, 
                :name=> "Seeds", 
                :parent_id=> nil
        )

        Category.create!( 
                :id=> 71, 
                :name=> "Chillies", 
                :parent_id=> 70
        )

        Category.create!( 
                :id=> 72, 
                :name=> "Herbs", 
                :parent_id=> 70
        )

        Category.create!( 
                :id=> 73, 
                :name=> "Lettuce", 
                :parent_id=> 70
        )

        Category.create!( 
                :id=> 74, 
                :name=> "Organic Range", 
                :parent_id=> 70
        )

        Category.create!( 
                :id=> 75, 
                :name=> "Salad Accompaniments", 
                :parent_id=> 70
        )

        Category.create!( 
                :id=> 76, 
                :name=> "Tomatoes", 
                :parent_id=> 70
        )

        Category.create!( 
                :id=> 77, 
                :name=> "Vegetables", 
                :parent_id=> 70
        )

    }
    desc %q(Load Supplier Joins into Database)
