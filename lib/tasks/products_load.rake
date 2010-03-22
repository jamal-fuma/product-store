    desc %q(Load Products into Database)
    task(:products_load => :environment) { |t,args|
        @product = Product.new( 
                :id             => 1, 
                :supplier_id    => 1,
                :name           => "GHE WaterFarm System With Hailea ACO2201 Pump", 
                :weight         => 2200,
                :order_code     => "01-005-007",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
        @product.sale_price     = 30.25
        @product.save!
puts "saved product with id #{@product.id} called #{@product.name}"

        @product = Product.new( 
                :id             => 2, 
                :supplier_id    => 1,
                :name           => "GHE Waterfarm 8 Pot System (with Controller & Air Pump)", 
                :weight         => 1900,
                :order_code     => "01-005-011",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
        @product.sale_price     = 194.00 
        @product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 3, 
                :supplier_id    => 1,
                :name           => "GHE AquaFarm", 
                :weight         => 4200,
                :order_code     => "01-005-017",
                :packaging      => "empty",
                :description    => "A larger version of the Waterfarm. Just add Hydroton Clay and Nutrient to own one of the most compact systems around.  Famous for giving a highly oxygenated nutrient supply. Great for longer term plants. Nutrient tank holds 45L. Pump & instructions included.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-005-015_GH_aquafarm.JPG"
        )
        @product.sale_price     = 40.30
        @product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 4, 
                :supplier_id    => 1,
                :name           => "GHE Spare Grommet (WaterFarm/AquaFarm/RainForest Reservoir)", 
                :weight         => 10,
                :order_code     => "01-005-022",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
        @product.sale_price =  0.56
        @product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 5, 
                :supplier_id    => 1,
                :name           => "Kit Only for Aquafarm", 
                :weight         => 430,
                :order_code     => "01-005-200",
                :packaging      => "empty",
                :description    => "Spare Drip Ring and Pumping Column Kit for the Aquafarm. A useful spare in case of damage or blockages.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-005-200_GH_AquafarmKit_Only.JPG"
        )
@product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 6, 
                :supplier_id    => 1,
                :name           => "Kit Only for WaterFarm", 
                :weight         => 410,
                :order_code     => "01-005-205",
                :packaging      => "empty",
                :description    => "Spare Drip Ring and Pumping Column Kit for the Waterfarm. A useful spare in case of damage or blockages.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-005-205_GH_WaterfarmKit_Only.JPG"
        )
@product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 7, 
                :supplier_id    => 1,
                :name           => "Halida Adjustable Air Pump 8 Outlet 1080l/h ACO9630 - 20303", 

                :weight         => 2700,
                :order_code     => "10-455-140",
                :packaging      => "empty",
                :description    => "Variable output airpump ideal for aeration use or to power air driven systems such as Aquafarms or Waterfarms.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hallida_AirPump_8outlet.jpg"
        )
        @product.sale_price =  14.20
        @product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 8, 
                :supplier_id    => 1,
                :name           => "Net Pot 46mm Diameter", 
                :weight         => 10,
                :order_code     => "01-010-040",
                :packaging      => "empty",
                :description    => "Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "http://www.hydrogarden.com/StockPics/Netpot46mm.jpg"
        )
                @product.sale_price =  0.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 9, 
                :supplier_id    => 1,
                :name           => "Net Pot 51mm Diameter for Rainforest", 
                :weight         => 10,
                :order_code     => "01-010-045",
                :packaging      => "empty",
                :description    => "Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.  This pot fits the Rainforest too !",
                :filename       => "http://www.hydrogarden.com/StockPics/Netpot51mm.jpg"
        )
                @product.sale_price =  0.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 10, 
                :supplier_id    => 1,
                :name           => "Net Pot 77mm Diameter", 
                :weight         => 20,
                :order_code     => "01-010-050",
                :packaging      => "empty",
                :description    => "Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.  This pot fits the Aeroflo too !",
                :filename       => "http://www.hydrogarden.com/StockPics/Netpot77mm.jpg"
        )
                @product.sale_price =  0.23
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 11, 
                :supplier_id    => 1,
                :name           => "Net Pot 150mm (6')", 
                :weight         => 50,
                :order_code     => "01-010-055",
                :packaging      => "empty",
                :description    => "Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 12, 
                :supplier_id    => 1,
                :name           => "Heavy Duty Net Pot 80mm Diameter", 
                :weight         => 20,
                :order_code     => "01-010-060",
                :packaging      => "empty",
                :description    => "Superior quality Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems and NFTor for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.  Try our Heavy Duty Net Pots!",
                :filename       => "http://www.hydrogarden.com/StockPics/Netpot_HeavyDuty_80mm.jpg"
        )
                @product.sale_price =  0.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 13, 
                :supplier_id    => 1,
                :name           => "Heavy Duty Net Pot 140mm Diameter", 
                :weight         => 60,
                :order_code     => "01-010-065",
                :packaging      => "empty",
                :description    => "Superior quality Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems and NFTor for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.  Try our Heavy Duty Net Pots!",
                :filename       => "http://www.hydrogarden.com/StockPics/Netpot_HeavyDuty_140mm.jpg"
        )
                @product.sale_price =  0.53
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 14, 
                :supplier_id    => 1,
                :name           => "Heavy Duty Net Pot 200mm Diameter", 
                :weight         => 120,
                :order_code     => "01-010-070",
                :packaging      => "empty",
                :description    => "Superior quality Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems and NFTor for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.  Try our Heavy Duty Net Pots!",
                :filename       => "http://www.hydrogarden.com/StockPics/Netpot_HeavyDuty_200mm.jpg"
        )
                @product.sale_price =  0.99
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 15, 
                :supplier_id    => 1,
                :name           => "Heavy Duty Net Pot 95mm (3.75')", 
                :weight         => 20,
                :order_code     => "01-010-110",
                :packaging      => "empty",
                :description    => "Net pot for hydroponic cultivation.",
                :filename       => "empty"
        )
                @product.sale_price =  0.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 16, 
                :supplier_id    => 1,
                :name           => "Heavy Duty Net Pot 127mm (5')", 
                :weight         => 35,
                :order_code     => "01-010-120",
                :packaging      => "empty",
                :description    => "Net pot for hydroponic cultivation.",
                :filename       => "empty"
        )
                @product.sale_price =  0.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 17, 
                :supplier_id    => 1,
                :name           => "Heavy Duty Net Pot 152mm (6')", 
                :weight         => 45,
                :order_code     => "01-010-130",
                :packaging      => "empty",
                :description    => "Net pot for hydroponic cultivation.",
                :filename       => "empty"
        )
                @product.sale_price =  0.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 18, 
                :supplier_id    => 2,
                :name           => "PAIR OF STEEL SUPPORT HOOPS FOR TIMBER GROW BED", 
                :weight         => 0,
                :order_code     => "G121",
                :packaging      => "Mail Order Box",
                :description    => "These 19mm dia. galvanised steel support hoops provide a useful sturdy framework for frost protecting materials such as polythene of fleece or pest control netting. The leg of each hoop locates firmly into the open slots of the Timber Grow Bed’s internal",
                :filename       => "empty"
        )
                @product.sale_price =  9.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 19, 
                :supplier_id    => 2,
                :name           => "Metre Square Tray", 
                :weight         => 0,
                :order_code     => "G112B",
                :packaging      => "data entry required",
                :description    => "This huge tray is the largest in our range with a depth of 12 cm and a massive internal capacity of 100 Litres. The Metre Square Tray features a series of shallow horizontal ridges on the internal base of the tray which aid drainage from plant pots.  Equa",
                :filename       => "empty"
        )
                @product.sale_price =  24.46
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 20, 
                :supplier_id    => 2,
                :name           => "Medium Windowsill Tray", 
                :weight         => 0,
                :order_code     => "G30",
                :packaging      => "data entry required",
                :description    => "Dimensions - 61cm (l) x 15cm (w) x 2cm (h)",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 21, 
                :supplier_id    => 2,
                :name           => "Mini Windowsill Tray", 
                :weight         => 0,
                :order_code     => "G28",
                :packaging      => "data entry required",
                :description    => "Dimensions - 35cm (l) x 15cm (w) x 2cm (h)",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 22, 
                :supplier_id    => 2,
                :name           => "Mini Seed Tray", 
                :weight         => 0,
                :order_code     => "G35",
                :packaging      => "G35",
                :description    => "Dimensions - 15.5cm (l) x 10cm (w) x 4.5cm (h)",
                :filename       => "garland_images/cd623eda52bca06e9255fd6e177f3f0f.jpg"
        )
                @product.sale_price =  0.52
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 23, 
                :supplier_id    => 2,
                :name           => "Handy Tray", 
                :weight         => 0,
                :order_code     => "G34",
                :packaging      => "data entry required",
                :description    => "There are countless garden and kitchen applications for this tray. A extra thick outer rim makes it easy to carry.  Made from recycled polypropylene, this item is available in Green only.  Dimensions - 41 cm (l) x 30 cm (w) x 4.5cm (h)",
                :filename       => "garland_images/1261559b12a615f4bda64e48751b4d49.jpg"
        )
                @product.sale_price =  3.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 24, 
                :supplier_id    => 2,
                :name           => "Maxi Garden Tray", 
                :weight         => 0,
                :order_code     => "G74",
                :packaging      => "data entry required",
                :description    => "Another in our range of tough injection moulded garden trays. Comfortably holds 3 full size seed trays and is an ideal water reservoir tray for numerous pots. 12 Litre internal capacity.Made from recycled polypropylene.Dimensions - 79cm (l) x 40cm (w) x 4",
                :filename       => "garland_images/bd6a52acb69dc5029fb9e9e572cd3a15.jpg"
        )
                @product.sale_price =  6.33
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 25, 
                :supplier_id    => 1,
                :name           => "Spare Rainforest Motor Only", 
                :weight         => 1180,
                :order_code     => "01-005-040",
                :packaging      => "empty",
                :description    => "Boxed Electric Motor and Spinner for the Rainforest.  Supplied with lead and UK plug. ",
                :filename       => "http://www.hydrogarden.com/StockPics/01-005-040_GH_rainforest_motor.JPG"
        )
                @product.sale_price =  99.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 26, 
                :supplier_id    => 1,
                :name           => "Square Pot 10cm", 
                :weight         => 30,
                :order_code     => "01-010-025",
                :packaging      => "empty",
                :description    => "Square Pots are useful for propagation, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "http://www.hydrogarden.com/StockPics/Square_pot10cm.jpg"
        )
                @product.sale_price =  0.12
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 27, 
                :supplier_id    => 1,
                :name           => "Square Pot 13cm", 
                :weight         => 40,
                :order_code     => "01-010-030",
                :packaging      => "empty",
                :description    => "Square Pots are useful for propagation, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "http://www.hydrogarden.com/StockPics/Square_pot13cm.jpg"
        )
                @product.sale_price =  0.19
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 28, 
                :supplier_id    => 1,
                :name           => "Square Pot 15cm", 
                :weight         => 60,
                :order_code     => "01-010-035",
                :packaging      => "empty",
                :description    => "Square Pots are useful for propagation, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "http://www.hydrogarden.com/StockPics/Square_pot15cm.jpg"
        )
                @product.sale_price =  0.46
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 29, 
                :supplier_id    => 2,
                :name           => "Titan Garden Tray", 
                :weight         => 0,
                :order_code     => "G95",
                :packaging      => "data entry required",
                :description    => "Boasting an exceptional depth of 15cm and an internal capacity of 65 Litres, the Titan Tray is ideal for greenhouse users but has countless other applications. We have recently added a series of shallow horizontal ridges on the internal base of the tray w",
                :filename       => "garland_images/409022fb873ac888c74d0c2ad0bcbc3e.jpg"
        )
                @product.sale_price =  12.67
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 30, 
                :supplier_id    => 2,
                :name           => "Standard Garden Tray", 
                :weight         => 0,
                :order_code     => "G16",
                :packaging      => "data entry required",
                :description    => "The smallest in our range of tough injection moulded garden trays. An ideal water reservoir tray for pots and seed trays. 9 Litre internal capacity.Made from recycled polypropylene.Dimensions - 56cm (l) x 40cm (w) x 4cm (h)",
                :filename       => "garland_images/dd9eb55d634e706587252479ccb61b33.jpg"
        )
                @product.sale_price =  4.43
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 31, 
                :supplier_id    => 2,
                :name           => "Square Garden Tray", 
                :weight         => 0,
                :order_code     => "G45",
                :packaging      => "data entry required",
                :description    => "This tough, injection moulded tray has a number of valuable applications. With a depth of 7cm, this is deeper than our standard trays. It has a 25 Litre internal capacity and is ideally sized for standard greenhouse staging.Made from recycled polypropylen",
                :filename       => "garland_images/9fbf517ac0b8fc40dbeb067b2e75f728.jpg"
        )
                @product.sale_price =  6.33
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 32, 
                :supplier_id    => 2,
                :name           => "Small Windowsill Tray", 
                :weight         => 0,
                :order_code     => "G29",
                :packaging      => "data entry required",
                :description    => "Dimensions - 48cm (l) x 15cm (w) x 2cm (h)",
                :filename       => "garland_images/11a2693c4641b5939129ef49f5a6c871.jpg"
        )
                @product.sale_price =  1.79
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 33, 
                :supplier_id    => 1,
                :name           => "Black 3 litre Pot suits IGS", 
                :weight         => 100,
                :order_code     => "01-010-008",
                :packaging      => "empty",
                :description    => "Spare Pot for IGS 10 and 20 Plant Unit.  Great for Pot Culture and drip systems. Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  0.27
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 34, 
                :supplier_id    => 1,
                :name           => "Black 15 litre Pot (6715)", 
                :weight         => 400,
                :order_code     => "01-010-010",
                :packaging      => "empty",
                :description    => "Great for Pot Culture and drip systems, these affordable pots match the 30cm Saucer. Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-010-015_15L_pot.JPG"
        )
                @product.sale_price =  0.92
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 35, 
                :supplier_id    => 1,
                :name           => "Black 30cm Saucer for 15l Pot (7745)", 
                :weight         => 250,
                :order_code     => "01-010-015",
                :packaging      => "empty",
                :description    => "Great for Pot Culture and drip systems, these saucers match the 15l Pot.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-010-015_15L_Saucer.JPG"
        )
                @product.sale_price =  1.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 36, 
                :supplier_id    => 1,
                :name           => "Black 10L Pot", 
                :weight         => 300,
                :order_code     => "01-010-075",
                :packaging      => "empty",
                :description    => "Multi-purpose, durable black 10l round pot with drainage holes.\n\nUse with the growing medium or mix of your choice.",
                :filename       => "empty"
        )
                @product.sale_price =  0.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 37, 
                :supplier_id    => 1,
                :name           => "Black 20 litre Pot", 
                :weight         => 500,
                :order_code     => "01-010-080",
                :packaging      => "empty",
                :description    => "Multi-purpose, durable black 20l round pot with drainage holes.\n\nUse with the growing medium or mix of your choice.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-010-080_20L_Pot.JPG"
        )
                @product.sale_price =  1.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 38, 
                :supplier_id    => 1,
                :name           => "Black 30 litre Pot with handles", 
                :weight         => 725,
                :order_code     => "01-010-090",
                :packaging      => "empty",
                :description    => "Multi-purpose, durable black 30l round pot with drainage holes.\nFeatures handles to assist moving the pot.\n\nUse with the growing medium or mix of your choice.",
                :filename       => "http://www.hydrogarden.com/StockPics/01-010-090_30L_Pot.jpg"
        )
                @product.sale_price =  1.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 39, 
                :supplier_id    => 2,
                :name           => "Large Windowsill Tray", 
                :weight         => 0,
                :order_code     => "G12",
                :packaging      => "data entry required",
                :description    => "Dimensions - 76cm (l) x 175cm (w) x 3.5cm (h)",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 40, 
                :supplier_id    => 2,
                :name           => "Jumbo Garden Tray", 
                :weight         => 0,
                :order_code     => "G15B",
                :packaging      => "Supplied bulk packed - no individual packaging supplied",
                :description    => "This black tough, injection moulded tray has a number of valuable applications. It will easily accommodate a full sized grow bag and thereby considerably reduces the required frequency of watering. It is equally useful as a water reservoir tray for pots a",
                :filename       => "garland_images/0b82e8892cdb86c6257a52e6788b6c51.jpg"
        )
                @product.sale_price =  8.19
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 41, 
                :supplier_id    => 2,
                :name           => "Giant Garden Tray", 
                :weight         => 0,
                :order_code     => "G81",
                :packaging      => "data entry required",
                :description    => "The Giant Tray has proved popular when used by private and commercial gardeners alike as a large irrigation table for keeping a multitude of potted plants watered. The tray can be filled with grit or capillary matting if preferred. Its sheer size means th",
                :filename       => "garland_images/709fded1a1a11d5e515aede2c3f68efc.jpg"
        )
                @product.sale_price =  10.98
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 42, 
                :supplier_id    => 2,
                :name           => "COVER FOR MINI GROW BED & FRAME", 
                :weight         => 0,
                :order_code     => "G101",
                :packaging      => "Mail Order Box",
                :description    => "A UV stabilised cover tailored to fit over the Crop Support Frame for the Mini Grow Bed. The Cover features a zip up central access door plus two window vents and is supplied with ground anchor stakes. The Cover provides valuable frost protection for youn",
                :filename       => "empty"
        )
                @product.sale_price =  8.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 43, 
                :supplier_id    => 1,
                :name           => "Earthbox Kit - Green", 
                :weight         => 1500,
                :order_code     => "01-010-095",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  19.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 44, 
                :supplier_id    => 1,
                :name           => "Earthbox Staking Kit - Green", 
                :weight         => 725,
                :order_code     => "01-010-100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 45, 
                :supplier_id    => 1,
                :name           => "Earthbox Mulch Covers - Pack of 2", 
                :weight         => 725,
                :order_code     => "01-010-105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 46, 
                :supplier_id    => 1,
                :name           => "Earthbox Irrigation Starter Kit (irrigates 2 Eartboxes)", 
                :weight         => 725,
                :order_code     => "01-010-106",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  25.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 47, 
                :supplier_id    => 1,
                :name           => "FoodGarden Small (Green)", 
                :weight         => 725,
                :order_code     => "01-010-140",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  22.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 48, 
                :supplier_id    => 1,
                :name           => "FoodGarden Medium (Green)", 
                :weight         => 725,
                :order_code     => "01-010-145",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  37.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 49, 
                :supplier_id    => 1,
                :name           => "FoodGarden Large (Green)", 
                :weight         => 725,
                :order_code     => "01-010-150",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  61.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 50, 
                :supplier_id    => 1,
                :name           => "MiniPlot with Support Frame", 
                :weight         => 725,
                :order_code     => "01-010-160",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 51, 
                :supplier_id    => 1,
                :name           => "MiniPlot Additional Staking Frame", 
                :weight         => 725,
                :order_code     => "01-010-165",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 52, 
                :supplier_id    => 2,
                :name           => "GROW BED", 
                :weight         => 0,
                :order_code     => "G94",
                :packaging      => "Mail Order Box",
                :description    => "Our original grow bed offers just under one square metre of growing area. With a depth of 25cm, the internal capacity is 230 Litres. This unit is ideal for growing crops such as carrots, potatoes, and onions as well as brassicas such as cabbage and brocco",
                :filename       => "images/garland/Grow Bed Cabbages - Hi Res"
        )
                @product.sale_price =  10.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 53, 
                :supplier_id    => 2,
                :name           => "MINI GROW BED & FRAME", 
                :weight         => 0,
                :order_code     => "G96",
                :packaging      => "Mail Order Box",
                :description    => "Essentially this is our G108 Mini Grow Bed supplied with an aluminium crop support frame which anchors in each corner of the Mini Grow Bed to provide a rigid, wind resistant support for canes, netting or simple string. The Mini Grow Bed has a depth of 25c",
                :filename       => "empty"
        )
                @product.sale_price =  12.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 54, 
                :supplier_id    => 2,
                :name           => "LINER FOR MINI GROW BED", 
                :weight         => 0,
                :order_code     => "G102",
                :packaging      => "Mail Order Envelope",
                :description    => "A porous liner tailored to fit inside the Mini Grow Bed. Essential if the Mini Grow Bed is to be sited on decking and may be preferred by users using the Mini Grow Bed on hard surfaces such as patios. Features four strong corner loops for easy lifting at",
                :filename       => "images/garland/Metre Sq Tray - Hi Res"
        )
                @product.sale_price =  2.26
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 55, 
                :supplier_id    => 2,
                :name           => "MINI GROW BED", 
                :weight         => 0,
                :order_code     => "G108",
                :packaging      => "Mail Order Box",
                :description    => "At half the size of our original G94 - Grow Bed, the Mini Grow Bed still offers a more than useful half square metre of growing area. With a depth of 25cm, the internal capacity is 115 Litres. This unit is ideal for growing a whole host of crops such as c",
                :filename       => "empty"
        )
                @product.sale_price =  9.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 56, 
                :supplier_id    => 2,
                :name           => "EXTENSION KIT FOR GROW BED", 
                :weight         => 0,
                :order_code     => "G109",
                :packaging      => "Mail Order Box",
                :description    => "This kit will double the size of an existing Grow Bed, taking the total surface area to two square metres. The kit comprises two 97.5 cm panels, a steel ‘U’ brace, two link cover mouldings and 8 nuts and bolts. Assembly does require the use of an electric",
                :filename       => "empty"
        )
                @product.sale_price =  9.64
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 57, 
                :supplier_id    => 2,
                :name           => "EXTENSION KIT FOR MINI GROW BED", 
                :weight         => 0,
                :order_code     => "G110",
                :packaging      => "Mail Order Box",
                :description    => "This kit will double the size of an existing Mini Grow Bed, taking the total surface area to one square metre. The kit comprises two 97.5cm panels, a steel ‘U’ brace, two link cover mouldings and 8 nuts and bolts. Assembly does require the use of an elect",
                :filename       => "empty"
        )
                @product.sale_price =  7.71
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 58, 
                :supplier_id    => 2,
                :name           => "TIMBER GROW BED", 
                :weight         => 0,
                :order_code     => "G119",
                :packaging      => "Banded Timber with fixing accessories attached - black mail order bag available - see item G124",
                :description    => "Featuring 28mm thick timber panels, sourced from sustainable Scandinavian forests. Each panel is planed with rounded edges to give a highly attractive finished look. Pre-drilled pilot holes allow easy assembly. The timber has been pressure treated with a",
                :filename       => "images/garland/Timber Grow Bed 1 Tier - Hi Res"
        )
                @product.sale_price =  13.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 59, 
                :supplier_id    => 2,
                :name           => "EXTENSION KIT FOR TIMBER GROW BED", 
                :weight         => 0,
                :order_code     => "G120",
                :packaging      => "Banded Timber with fixing accessories attached - black mail order bag available - see item G124",
                :description    => "Doubles the length of a Timber Grow Bed. Featuring the same high quality timber panels, the kit includes reinforcing steel chevron plates to ensure a solid construction. Assembly is simple taking less than 30 minutes, requiring a screwdriver only.  Dimens",
                :filename       => "empty"
        )
                @product.sale_price =  10.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 60, 
                :supplier_id    => 2,
                :name           => "MAIL ORDER BAG FOR TIMBER GROW BED AND TIMBER GROW BED EXT. KIT", 
                :weight         => 0,
                :order_code     => "G124",
                :packaging      => "Supplied folded flat",
                :description    => "data entry required",
                :filename       => "empty"
        )
                @product.sale_price =  0.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 61, 
                :supplier_id    => 2,
                :name           => "MICRO MESH COVER FOR TIMBER GROW BED", 
                :weight         => 0,
                :order_code     => "G125",
                :packaging      => "Mail Order Box",
                :description    => "The cover is perfectly tailored to fit over an existing Timber Grow Bed with Pair of Steel Support Hoops. The micro mesh prevents access to all common garden pests large and small, including even the smallest insects. Crucially the material will allow wat",
                :filename       => "empty"
        )
                @product.sale_price =  11.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 62, 
                :supplier_id    => 2,
                :name           => "2 POT EXTENSION FOR EASY 2 GROW KIT", 
                :weight         => 0,
                :order_code     => "G111",
                :packaging      => "Mail Order Box",
                :description    => "It is possible to run up to three 2 pot modules from one single 47l tank. If you want to add more than three modules look at our range of larger reservoirs, or buy another Easy 2 Grow Kit with 47l reservoir. A 2 Pot Extension Module is supplied complete w",
                :filename       => "empty"
        )
                @product.sale_price =  8.36
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 63, 
                :supplier_id    => 1,
                :name           => "Dual Flow System Complete inc Kit*", 
                :weight         => 7640,
                :order_code     => "01-015-005",
                :packaging      => "empty",
                :description    => "A world first. Use as either a flood and drain or an NFT system! Complete system ready to use. In NFT mode it is expandable by adding up to a maximum of 5 trays around the tank to give 1.7sq m of growing area. Tanks can be joined for further flexibility.",
                :filename       => "http://www.hydrogarden.com/StockPics/Dualflow_system.JPG"
        )
                @product.sale_price =  35.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 64, 
                :supplier_id    => 1,
                :name           => "Dual Flow Tank 80 litre Only", 
                :weight         => 2500,
                :order_code     => "01-015-010",
                :packaging      => "empty",
                :description    => "This low level high quality tank can be used to make your own system or to replace an existing one.  Incorporates level markings to aid filling.",
                :filename       => "http://www.hydrogarden.com/StockPics/Dualflow_tank80L.JPG"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 65, 
                :supplier_id    => 1,
                :name           => "Dual Flow Tray Only", 
                :weight         => 2500,
                :order_code     => "01-015-015",
                :packaging      => "empty",
                :description    => "Expand your Dual Flow System in NFT mode with up to 5 Trays in total.  Supplied ready drilled and to use. You may need to upgrade your pump also! Use our Eazi-Stand Kit to set the tray at the correct angle for draining. Ask your dealer for details.",
                :filename       => "http://www.hydrogarden.com/StockPics/Dualflow_tray.JPG"
        )
                @product.sale_price =  12.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 66, 
                :supplier_id    => 1,
                :name           => "Correx Top Cover (Dual Flow)", 
                :weight         => 300,
                :order_code     => "01-015-020",
                :packaging      => "empty",
                :description    => "Ready cut to fit the Dual Flow tray, this cover will protect your plants roots from light and other unwanted materials.  Cut to sit inside the tray or place on top, the choice is yours.",
                :filename       => "http://www.hydrogarden.com/StockPics/Dualflow_Correxcover.JPG"
        )
                @product.sale_price =  1.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 67, 
                :supplier_id    => 1,
                :name           => "UK Dual Flow Kit", 
                :weight         => 2340,
                :order_code     => "01-015-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  14.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 68, 
                :supplier_id    => 1,
                :name           => "AutoPot 2 Pot Tray (Green)", 
                :weight         => 500,
                :order_code     => "01-025-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 69, 
                :supplier_id    => 1,
                :name           => "Autopot Lid for 2 Pot Tray", 
                :weight         => 100,
                :order_code     => "01-025-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 70, 
                :supplier_id    => 1,
                :name           => "AutoPot 8.5L Pot (Green)", 
                :weight         => 750,
                :order_code     => "01-025-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 71, 
                :supplier_id    => 1,
                :name           => "AutoPot AquaValve", 
                :weight         => 500,
                :order_code     => "01-025-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 72, 
                :supplier_id    => 1,
                :name           => "AutoPot AquaValve Cover", 
                :weight         => 100,
                :order_code     => "01-025-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 73, 
                :supplier_id    => 1,
                :name           => "AutoPot 4mm Filter - Membrane Not Included", 
                :weight         => 10,
                :order_code     => "01-025-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 74, 
                :supplier_id    => 1,
                :name           => "AutoPot Membrane for 4mm Filter", 
                :weight         => 10,
                :order_code     => "01-025-041",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 75, 
                :supplier_id    => 1,
                :name           => "AutoPot 4mm Top Hat Grommet", 
                :weight         => 30,
                :order_code     => "01-025-045",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 76, 
                :supplier_id    => 1,
                :name           => "AutoPot Root Control Copper Coated Disc (Square) - 189mm +/- 4mm", 
                :weight         => 10,
                :order_code     => "01-025-050",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 77, 
                :supplier_id    => 1,
                :name           => "AutoPot Marix Black Disc (square) - 189mm +/- 4mm", 
                :weight         => 10,
                :order_code     => "01-025-055",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 78, 
                :supplier_id    => 1,
                :name           => "AutoPot 15L Pot (Black)", 
                :weight         => 1000,
                :order_code     => "01-025-065",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 79, 
                :supplier_id    => 1,
                :name           => "AutoPot 1 Pot Tray and Lid (Black)", 
                :weight         => 300,
                :order_code     => "01-025-070",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 80, 
                :supplier_id    => 1,
                :name           => "AutoPot 1 Pot Kit Module", 
                :weight         => 1925,
                :order_code     => "01-025-110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 81, 
                :supplier_id    => 1,
                :name           => "AutoPot easy2grow 2 Pot Kit Module", 
                :weight         => 2725,
                :order_code     => "01-025-115",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 82, 
                :supplier_id    => 1,
                :name           => "47L Reservoir plus Connection Kit", 
                :weight         => 750,
                :order_code     => "01-025-155",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 83, 
                :supplier_id    => 1,
                :name           => "100L Reservoir plus Connection Kit", 
                :weight         => 70825,
                :order_code     => "01-025-160",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  35.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 84, 
                :supplier_id    => 1,
                :name           => "220L Reservoir plus Connection Kit", 
                :weight         => 10635,
                :order_code     => "01-025-165",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  45.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 85, 
                :supplier_id    => 1,
                :name           => "350L Reservoir plus Connection Kit", 
                :weight         => 17005,
                :order_code     => "01-025-170",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  66.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 86, 
                :supplier_id    => 1,
                :name           => "AutoPot aquaPot Container", 
                :weight         => 500,
                :order_code     => "01-025-205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 87, 
                :supplier_id    => 1,
                :name           => "AutoPot aquaPot Inground", 
                :weight         => 700,
                :order_code     => "01-025-210",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 88, 
                :supplier_id    => 1,
                :name           => "AUTOtray Square 4 Pot Kit", 
                :weight         => 3248,
                :order_code     => "01-025-300",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  25.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 89, 
                :supplier_id    => 1,
                :name           => "AUTOtray Giant 8 Pot Kit", 
                :weight         => 5648,
                :order_code     => "01-025-305",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  38.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 90, 
                :supplier_id    => 1,
                :name           => "AutoPot 4mm Reservoir Filter & Membrane", 
                :weight         => 20,
                :order_code     => "13-615-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 91, 
                :supplier_id    => 1,
                :name           => "AutoPot 13mm-4mm Cross Connector", 
                :weight         => 225,
                :order_code     => "13-615-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 92, 
                :supplier_id    => 1,
                :name           => "3 x 3 Flood and Drain Tray", 
                :weight         => 2000,
                :order_code     => "01-030-020",
                :packaging      => "empty",
                :description    => "Made from black ABS, this 3ft x 3ft tray features a central fill and drain area.  Ideally suited for use with our PPI Tub Fittings 13-600-005 to 13-600-030",
                :filename       => "http://www.hydrogarden.com/StockPics/Accent3x3_FloodDrain_Tray.JPG"
        )
                @product.sale_price =  31.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 93, 
                :supplier_id    => 1,
                :name           => "HydroGarden 3 x 3 Flood and Drain Kit Complete*", 
                :weight         => 12000,
                :order_code     => "01-050-100",
                :packaging      => "empty",
                :description    => "Use an additional Drip Feed Kit to convert from Flood & Drain to Drip Feed growing.  Simple, quick and affordable. Features a multi-ridge bottom to ensure even flow. Ideal for longer-term plants. Full instructions inlcuded. Dimensions 92 x 92 x 62cm.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hydrogarden_3x3FloodDrainKitJPG.JPG"
        )
                @product.sale_price =  84.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 94, 
                :supplier_id    => 1,
                :name           => "Drip Feed Kit for HydroGarden 3' x 3' Flood & Drain Kit", 
                :weight         => 585,
                :order_code     => "01-050-105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 95, 
                :supplier_id    => 1,
                :name           => "AeroGarden unit - Black, no seed kit", 
                :weight         => 6000,
                :order_code     => "01-035-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  70.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 96, 
                :supplier_id    => 1,
                :name           => "AeroGarden unit - White, no seed kit", 
                :weight         => 6000,
                :order_code     => "01-035-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  70.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 97, 
                :supplier_id    => 1,
                :name           => "AeroGarden unit - Black, Starter Herb Kit included", 
                :weight         => 6000,
                :order_code     => "01-035-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  74.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 98, 
                :supplier_id    => 1,
                :name           => "AeroGarden unit - White, Starter Herb Kit included", 
                :weight         => 6000,
                :order_code     => "01-035-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  74.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 99, 
                :supplier_id    => 1,
                :name           => "AeroGarden Seed Kit - Gourmet Herb", 
                :weight         => 250,
                :order_code     => "01-035-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 100, 
                :supplier_id    => 1,
                :name           => "AeroGarden Master Gardener Deluxe Kit (21 Pod / No Seeds)", 
                :weight         => 500,
                :order_code     => "01-035-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 101, 
                :supplier_id    => 1,
                :name           => "AeroGarden Seed Kit - Cherry Tomato", 
                :weight         => 260,
                :order_code     => "01-035-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 102, 
                :supplier_id    => 1,
                :name           => "AeroGarden Seed Kit - Salad Greens", 
                :weight         => 200,
                :order_code     => "01-035-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 103, 
                :supplier_id    => 1,
                :name           => "AeroGarden Seed Kit - Chilli Peppers", 
                :weight         => 200,
                :order_code     => "01-035-045",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 104, 
                :supplier_id    => 1,
                :name           => "AeroGarden Garden Starter Tray", 
                :weight         => 200,
                :order_code     => "01-035-050",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  14.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 105, 
                :supplier_id    => 1,
                :name           => "AeroGarden Garden Starter Tray Replacement Plugs", 
                :weight         => 200,
                :order_code     => "01-035-055",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 106, 
                :supplier_id    => 1,
                :name           => "AeroGarden Replacement Bulbs (2 pack)", 
                :weight         => 415,
                :order_code     => "01-035-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 107, 
                :supplier_id    => 1,
                :name           => "47L Reservoir and Lid - 4mm Grommet Fitted", 
                :weight         => 710,
                :order_code     => "01-045-055",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.72
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 108, 
                :supplier_id    => 1,
                :name           => "100L Space Saver Reservoir Including Tap and Lid", 
                :weight         => 4020,
                :order_code     => "01-045-060",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  16.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 109, 
                :supplier_id    => 1,
                :name           => "100L Reservoir Stand", 
                :weight         => 1410,
                :order_code     => "01-045-065",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 110, 
                :supplier_id    => 1,
                :name           => "220L Reservoir Including Tap and Lid", 
                :weight         => 6410,
                :order_code     => "01-045-070",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 111, 
                :supplier_id    => 1,
                :name           => "220L Reservoir Stand", 
                :weight         => 2460,
                :order_code     => "01-045-075",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  11.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 112, 
                :supplier_id    => 1,
                :name           => "350L Reservoir Including Tap and Lid", 
                :weight         => 13760,
                :order_code     => "01-045-080",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  45.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 113, 
                :supplier_id    => 1,
                :name           => "PPI 13mm Tub Outlet", 
                :weight         => 225,
                :order_code     => "13-600-005",
                :packaging      => "empty",
                :description    => "You can now adjust the height of both the flood and drain fittings to the modular design of these items.  Also used for tank fittings and drain fittings in NFT systems and much much more.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_TubOutlet.JPG"
        )
                @product.sale_price =  1.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 114, 
                :supplier_id    => 1,
                :name           => "PPI 19mm Tub Outlet 073914", 
                :weight         => 24,
                :order_code     => "13-600-010",
                :packaging      => "empty",
                :description    => "You can now adjust the height of both the flood and drain fittings to the modular design of these items.  Also used for tank fittings and drain fittings in NFT systems and much much more.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_TubOutlet.JPG"
        )
                @product.sale_price =  2.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 115, 
                :supplier_id    => 1,
                :name           => "PPI 25mm Tub Outlet 073921", 
                :weight         => 60,
                :order_code     => "13-600-015",
                :packaging      => "empty",
                :description    => "You can now adjust the height of both the flood and drain fittings to the modular design of these items.  Also used for tank fittings and drain fittings in NFT systems and much much more.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_25mm_TubOutlet.JPG"
        )
                @product.sale_price =  2.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 116, 
                :supplier_id    => 1,
                :name           => "PPI Tub Outlet Extension 35mm Long 073938", 
                :weight         => 86,
                :order_code     => "13-600-025",
                :packaging      => "empty",
                :description    => "You can now adjust the height of both the flood and drain fittings to the modular design of these items.  Also used for tank fittings and drain fittings in NFT systems and much much more.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_35mm_OutletExtension.JPG"
        )
                @product.sale_price =  0.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 117, 
                :supplier_id    => 1,
                :name           => "PPI Tub Outlet Screen 073945", 
                :weight         => 9,
                :order_code     => "13-600-030",
                :packaging      => "empty",
                :description    => "You can now adjust the height of both the flood and drain fittings to the modular design of these items.  Also used for tank fittings and drain fittings in NFT systems and much much more.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_TubOutletScreen.JPG"
        )
                @product.sale_price =  0.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 118, 
                :supplier_id    => 1,
                :name           => "Clear Tube 13mm x 1m", 
                :weight         => 3000,
                :order_code     => "13-620-005",
                :packaging      => "empty",
                :description    => "Superior Quality tubing for a multitude of purposes.  Retains its flexibility in all conditions.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_7mmFlexiTube.jpg"
        )
                @product.sale_price =  18.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 119, 
                :supplier_id    => 1,
                :name           => "4mm Barb Cross (Sold in Qty of 50)", 
                :weight         => 10,
                :order_code     => "13-620-010",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_BarbCross.JPG"
        )
                @product.sale_price =  0.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 120, 
                :supplier_id    => 1,
                :name           => "4mm Barb Elbow (Sold in Qty of 50)", 
                :weight         => 10,
                :order_code     => "13-620-015",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_BarbElbow.JPG"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 121, 
                :supplier_id    => 1,
                :name           => "4mm Barb Joiner (Sold in Qty of 100) 72719", 
                :weight         => 10,
                :order_code     => "13-620-020",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_BarbJoiner.JPG"
        )
                @product.sale_price =  0.07
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 122, 
                :supplier_id    => 1,
                :name           => "4mm Barb Tee (Sold in Qty of 100) 72726", 
                :weight         => 10,
                :order_code     => "13-620-025",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_BarbTee.JPG"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 123, 
                :supplier_id    => 1,
                :name           => "4mm Goof Repair Plug (Sold in Qty of 50)", 
                :weight         => 10,
                :order_code     => "13-620-030",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_GoofRepairPlug.JPG"
        )
                @product.sale_price =  0.04
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 124, 
                :supplier_id    => 1,
                :name           => "4mm In-Line Valve (Sold in Qty of 50) 72764", 
                :weight         => 10,
                :order_code     => "13-620-035",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_InlineValve.JPG"
        )
                @product.sale_price =  0.26
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 125, 
                :supplier_id    => 1,
                :name           => "4mm Saddle Clamp/Nail", 
                :weight         => 10,
                :order_code     => "13-620-036",
                :packaging      => "empty\n",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make the drip feed system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_SaddleClamp.JPG"
        )
                @product.sale_price =  0.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 126, 
                :supplier_id    => 1,
                :name           => "13mm Barb Elbow", 
                :weight         => 10,
                :order_code     => "13-620-050",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_BarbElbow.jpg"
        )
                @product.sale_price =  0.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 127, 
                :supplier_id    => 1,
                :name           => "13mm Barb End Plug", 
                :weight         => 10,
                :order_code     => "13-620-055",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_BarbEndPlug.JPG"
        )
                @product.sale_price =  0.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 128, 
                :supplier_id    => 1,
                :name           => "13mm Barb Inline Joiner", 
                :weight         => 10,
                :order_code     => "13-620-060",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_BarbInlineJoiner.JPG"
        )
                @product.sale_price =  0.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 129, 
                :supplier_id    => 1,
                :name           => "13mm Barb x 13mm Take Off", 
                :weight         => 10,
                :order_code     => "13-620-065",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mmBarb_13mmTakeOff.jpg"
        )
                @product.sale_price =  0.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 130, 
                :supplier_id    => 1,
                :name           => "13mm Barb Tee", 
                :weight         => 10,
                :order_code     => "13-620-070",
                :packaging      => "(Sold in Qty of 20)\n",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.\n",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_BarbTee.JPG"
        )
                @product.sale_price =  0.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 131, 
                :supplier_id    => 1,
                :name           => "13mm ID Top Hat Grommet", 
                :weight         => 10,
                :order_code     => "13-620-075",
                :packaging      => "(Sold in Qty of 50)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_TopHatGrommet.JPG"
        )
                @product.sale_price =  0.19
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 132, 
                :supplier_id    => 1,
                :name           => "13mm In-Line Filter Black", 
                :weight         => 80,
                :order_code     => "13-620-080",
                :packaging      => "(Sold in Qty of 10)\n",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_InlineFilterBlack.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 133, 
                :supplier_id    => 1,
                :name           => "13mm In-Line Valve", 
                :weight         => 50,
                :order_code     => "13-620-085",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_InlineValve.JPG"
        )
                @product.sale_price =  0.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 134, 
                :supplier_id    => 1,
                :name           => "13mm Nut & Tail with 3/4 BSP", 
                :weight         => 30,
                :order_code     => "13-620-090",
                :packaging      => "(Sold in Qty of 20)\n",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_NutandTail.jpg"
        )
                @product.sale_price =  0.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 135, 
                :supplier_id    => 1,
                :name           => "13mm Pipe Clamp Saddle", 
                :weight         => 10,
                :order_code     => "13-620-095",
                :packaging      => "(Sold in Qty of 50)\n",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_PipeClampSaddle.JPG"
        )
                @product.sale_price =  0.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 136, 
                :supplier_id    => 1,
                :name           => "13mm Pipe/Ratchet Clip", 
                :weight         => 10,
                :order_code     => "13-620-105",
                :packaging      => "(Sold in Qty of 50)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_PipeRatchetClip.jpg"
        )
                @product.sale_price =  0.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 137, 
                :supplier_id    => 1,
                :name           => "13mm Poly to Hose Connector", 
                :weight         => 100,
                :order_code     => "13-620-107",
                :packaging      => "(Sold in Pk of 10)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_13mm_PolyToHoseConnector.jpg"
        )
                @product.sale_price =  1.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 138, 
                :supplier_id    => 1,
                :name           => "19mm Barb Elbow", 
                :weight         => 20,
                :order_code     => "13-620-110",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_BarbElbow.jpg"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 139, 
                :supplier_id    => 1,
                :name           => "19mm Barb End Plug", 
                :weight         => 10,
                :order_code     => "13-620-115",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_BarbEndPlug.jpg"
        )
                @product.sale_price =  0.12
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 140, 
                :supplier_id    => 1,
                :name           => "19mm Barb Joiner", 
                :weight         => 20,
                :order_code     => "13-620-120",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_BarbJoiner.JPG"
        )
                @product.sale_price =  0.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 141, 
                :supplier_id    => 1,
                :name           => "19mm Barb Tee", 
                :weight         => 1140,
                :order_code     => "13-620-125",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_BarbTee.JPG"
        )
                @product.sale_price =  0.22
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 142, 
                :supplier_id    => 1,
                :name           => "19mm ID Curved Grommet", 
                :weight         => 10,
                :order_code     => "13-620-130",
                :packaging      => "(Sold in Qty of 50)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_CurvedGrommet.JPG"
        )
                @product.sale_price =  0.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 143, 
                :supplier_id    => 1,
                :name           => "19mm ID Top Hat Grommet", 
                :weight         => 10,
                :order_code     => "13-620-135",
                :packaging      => "(Sold in Qty of 50)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  0.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 144, 
                :supplier_id    => 1,
                :name           => "19mm In-Line Filter Black", 
                :weight         => 100,
                :order_code     => "13-620-140",
                :packaging      => "(Sold in Qty of 10)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 145, 
                :supplier_id    => 1,
                :name           => "19mm In-Line Valve", 
                :weight         => 140,
                :order_code     => "13-620-145",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_InlineValve.JPG"
        )
                @product.sale_price =  1.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 146, 
                :supplier_id    => 1,
                :name           => "19mm Low Density Pipe x 100m 421449", 
                :weight         => 8000,
                :order_code     => "13-620-150",
                :packaging      => "empty",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_LDPE_LowDensityPipe.JPG"
        )
                @product.sale_price =  24.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 147, 
                :supplier_id    => 1,
                :name           => "19mm Nut & Tail with 3/4 BSP", 
                :weight         => 20,
                :order_code     => "13-620-155",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_NutandTail.jpg"
        )
                @product.sale_price =  0.34
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 148, 
                :supplier_id    => 1,
                :name           => "19mm Pipe Saddle Clamp", 
                :weight         => 10,
                :order_code     => "13-620-160",
                :packaging      => "(Sold in Qty of 50)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_PipeClampSaddle.JPG"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 149, 
                :supplier_id    => 1,
                :name           => "19mm x 10m Flexi-tube", 
                :weight         => 1700,
                :order_code     => "13-620-165",
                :packaging      => "empty",
                :description    => "Superior Quality tubing for a multitude of purposes.  Retains its flexibility in all conditions.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_FlexiblePipe.JPG"
        )
                @product.sale_price =  9.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 150, 
                :supplier_id    => 1,
                :name           => "19mm Pipe/Ratchet Clip", 
                :weight         => 10,
                :order_code     => "13-620-170",
                :packaging      => "(Sold in Qty of 50)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_PipeRatchetClip.jpg"
        )
                @product.sale_price =  0.07
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 151, 
                :supplier_id    => 1,
                :name           => "19mm x 13mm Reducer Joiner", 
                :weight         => 20,
                :order_code     => "13-620-175",
                :packaging      => "(Sold in Qty of 20)\n",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_13mmReducerJoiner.JPG"
        )
                @product.sale_price =  0.13
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 152, 
                :supplier_id    => 1,
                :name           => "19mm x 13mm Reducer Tee", 
                :weight         => 20,
                :order_code     => "13-620-180",
                :packaging      => "(Sold in Qty of 20)",
                :description    => "Comprehensive range of high quality irrigation fittings that simply plug together to give you the irrigation system to meet your needs.\n",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_19mm_13mmReducerTee.jpg"
        )
                @product.sale_price =  0.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 153, 
                :supplier_id    => 1,
                :name           => "Punch / Spanner (Sold in Qty of 20) 72771", 
                :weight         => 10,
                :order_code     => "13-620-190",
                :packaging      => "empty",
                :description    => "You will get virtually no leeks when making holes in our Poly Pipe using this useful little tool.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_PunchSpanner.JPG"
        )
                @product.sale_price =  0.28
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 154, 
                :supplier_id    => 1,
                :name           => "PPI 4mm Adjustable Dripper on Stake-076694 (Sold in Qty of 20)", 
                :weight         => 10,
                :order_code     => "13-620-200",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_AdjustableDripper_OnStake.JPG"
        )
                @product.sale_price =  0.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 155, 
                :supplier_id    => 1,
                :name           => "PPI 4mm Adjustable Dripper-076717 (Sold in Qty of 50)", 
                :weight         => 10,
                :order_code     => "13-620-202",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_4mm_AdjustableDripper.JPG"
        )
                @product.sale_price =  0.22
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 156, 
                :supplier_id    => 1,
                :name           => "Agri Dripper 2 Lph (Sold in Qty of 50)", 
                :weight         => 10,
                :order_code     => "13-620-205",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_AgriDripper_2lph.JPG"
        )
                @product.sale_price =  0.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 157, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Red Base 180 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-210",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_RedBase180.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 158, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Red Base 360 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-215",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_RedBase360.jpg"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 159, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Red Base 2x20 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-220",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_RedBase2x20.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 160, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Red Base 90 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-225",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_RedBase90.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 161, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Blue Base 180 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-230",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_BlueBase180.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 162, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Blue Base 360 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-235",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_BlueBase360.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 163, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Blue Base 2x20 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-240",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_BlueBase2x20.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 164, 
                :supplier_id    => 1,
                :name           => "PPI MicroSpray Blue Spray 90 (Sold in Qty of 100)", 
                :weight         => 10,
                :order_code     => "13-620-245",
                :packaging      => "empty",
                :description    => "All of our High Quality fittings are made to suit Australian conditions.  Simply plug together to make a drip feed or nutrient delivery system to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/PPI_MicroSpray_BlueBase90.jpg"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 165, 
                :supplier_id    => 1,
                :name           => "PPI Midi Drip Emitter on Stake - 076816", 
                :weight         => 10,
                :order_code     => "13-620-250",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 166, 
                :supplier_id    => 1,
                :name           => "PPI Mister (28L/h) - 075598", 
                :weight         => 10,
                :order_code     => "13-620-255",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 167, 
                :supplier_id    => 1,
                :name           => "PPI 1.3mm Micro Sprinkler 72L/h - 076434", 
                :weight         => 10,
                :order_code     => "13-620-260",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.33
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 168, 
                :supplier_id    => 1,
                :name           => "PPI P4 Snap Dripper 4L/h", 
                :weight         => 10,
                :order_code     => "13-620-265",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 169, 
                :supplier_id    => 1,
                :name           => "PPI 200mm Rigid Riser with Adaptor", 
                :weight         => 10,
                :order_code     => "13-620-270",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 170, 
                :supplier_id    => 1,
                :name           => "PPI Riser Jet Stake - 073006", 
                :weight         => 10,
                :order_code     => "13-620-275",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 171, 
                :supplier_id    => 1,
                :name           => "PPI 4mm x 10m Flexible PPVC - 420718", 
                :weight         => 680,
                :order_code     => "13-620-285",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.76
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 172, 
                :supplier_id    => 2,
                :name           => "BIG DRIPPA WATERING KIT", 
                :weight         => 0,
                :order_code     => "G77",
                :packaging      => "Mail Order Envelope",
                :description    => "A gravity fed watering system offering the benefits of drip watering at a low price. As the Big Drippa is a self contained system, it is ideal for use in areas where there is no mains water supply. Often likened to a hospital I.V. Kit, the system features",
                :filename       => "images/garland/big drippa photo - hi res"
        )
                @product.sale_price =  4.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 173, 
                :supplier_id    => 4,
                :name           => "OCTA-MITTER ON STAKE", 
                :weight         => 10,
                :order_code     => "DR100",
                :packaging      => "empty",
                :description    => "The Octa-mitter is an adjustable dripper giving 0-40L per hour. It comes with a pot stake for optimal placement in your medium.",
                :filename       => "empty"
        )
                @product.sale_price =  0.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 174, 
                :supplier_id    => 4,
                :name           => "OCTA-MITTER", 
                :weight         => 10,
                :order_code     => "DR101",
                :packaging      => "empty",
                :description    => "The Octa-mitter is an adjustable dripper giving 0-40L per hour.",
                :filename       => "empty"
        )
                @product.sale_price =  0.44
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 175, 
                :supplier_id    => 4,
                :name           => "1L/H WOODPECKER            C", 
                :weight         => 15,
                :order_code     => "DR102",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 176, 
                :supplier_id    => 4,
                :name           => "2L/HR WOODPECKER           C", 
                :weight         => 15,
                :order_code     => "DR103",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 177, 
                :supplier_id    => 4,
                :name           => "4L/HR WOODPECKER           C", 
                :weight         => 15,
                :order_code     => "DR104",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 178, 
                :supplier_id    => 4,
                :name           => "2L/HR ARROW DRIPPER", 
                :weight         => 25,
                :order_code     => "DR105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 179, 
                :supplier_id    => 4,
                :name           => "2L/HR INLINE DRIPPER", 
                :weight         => 10,
                :order_code     => "DR106",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 180, 
                :supplier_id    => 4,
                :name           => "4L/HR INLINE DRIPPER       C", 
                :weight         => 10,
                :order_code     => "DR107",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 181, 
                :supplier_id    => 4,
                :name           => "20L/HR SPRAY STAKE", 
                :weight         => 10,
                :order_code     => "DR108",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 182, 
                :supplier_id    => 4,
                :name           => "25L/HR SPRAY STAKE", 
                :weight         => 10,
                :order_code     => "DR109",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 183, 
                :supplier_id    => 4,
                :name           => "1L/HR PLANT-POT DRIPPER", 
                :weight         => 10,
                :order_code     => "DR110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 184, 
                :supplier_id    => 4,
                :name           => "2L/HR PLANT-POT DRIPPER", 
                :weight         => 10,
                :order_code     => "DR111",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 185, 
                :supplier_id    => 4,
                :name           => "4L/HR PLANT POT DRIPPER", 
                :weight         => 10,
                :order_code     => "DR112",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 186, 
                :supplier_id    => 4,
                :name           => "8L/HR PLANT POT DRIPPER", 
                :weight         => 10,
                :order_code     => "DR113",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 187, 
                :supplier_id    => 4,
                :name           => "2L/HR ON-LINE BUTTON DRIPPER", 
                :weight         => 10,
                :order_code     => "DR114",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 188, 
                :supplier_id    => 4,
                :name           => "4L/HR ON-LINE BUTTON DRIPPER", 
                :weight         => 10,
                :order_code     => "DR115",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 189, 
                :supplier_id    => 4,
                :name           => "8L/HR ON-LINE BUTTON DRIPPER", 
                :weight         => 10,
                :order_code     => "DR116",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 190, 
                :supplier_id    => 4,
                :name           => "5mm INSERT NIPPLE", 
                :weight         => 1,
                :order_code     => "DR126",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.07
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 191, 
                :supplier_id    => 4,
                :name           => "5mm INSERT NIPPLE TEE      C", 
                :weight         => 5,
                :order_code     => "DR127",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 192, 
                :supplier_id    => 4,
                :name           => "5mm POT DRIPPER STAKE      C", 
                :weight         => 12,
                :order_code     => "DR128",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 193, 
                :supplier_id    => 4,
                :name           => "ORANGE HOLE PUNCH          C", 
                :weight         => 65,
                :order_code     => "DR129",
                :packaging      => "empty",
                :description    => "Used to punch a hole in your flexhose before screwing in your nipple or T piece.",
                :filename       => "empty"
        )
                @product.sale_price =  0.66
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 194, 
                :supplier_id    => 4,
                :name           => "3mm GREEN HOLE PUNCH", 
                :weight         => 10,
                :order_code     => "DR130",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 195, 
                :supplier_id    => 4,
                :name           => "4 OUTLET MANIFOLD & NIPPLE", 
                :weight         => 1,
                :order_code     => "DR131",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.13
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 196, 
                :supplier_id    => 4,
                :name           => "8 OUTLET MANIFOLD", 
                :weight         => 7,
                :order_code     => "DR132",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.17
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 197, 
                :supplier_id    => 4,
                :name           => "3/4'-1/2' BARBED REDUCER", 
                :weight         => 10,
                :order_code     => "FT122",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 198, 
                :supplier_id    => 4,
                :name           => "1/2'-3/8' BARBED REDUCER", 
                :weight         => 4,
                :order_code     => "FT123",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 199, 
                :supplier_id    => 4,
                :name           => "1'(25mm) NON RETURN VALVE", 
                :weight         => 60,
                :order_code     => "FT140",
                :packaging      => "empty",
                :description    => "Handy little safety insurance device to prevent water & nutrient solutions back draining. In some situations where you are worried about flooding this gadget is real peace of mind.",
                :filename       => "empty"
        )
                @product.sale_price =  3.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 200, 
                :supplier_id    => 4,
                :name           => "70L TANK (WILMA 8 & 10)", 
                :weight         => 2900,
                :order_code     => "AW101",
                :packaging      => "empty",
                :description    => "1160x590x210mm, 46'x23.25'x8.25'\n\nTough and durable multi-purpose nutrient tank. Designed and molded for the Atami Wilma Drip 8 & 10 Pot System.\n\n",
                :filename       => "empty"
        )
                @product.sale_price =  16.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 201, 
                :supplier_id    => 4,
                :name           => "140L TANK (Wilma 16 & 20)", 
                :weight         => 6900,
                :order_code     => "AW123",
                :packaging      => "empty",
                :description    => "1200x1060x215mm, 47.5'x42'x8.5'\n\nTough and durable multi-purpose nutrient tank. Designed and molded for the Atami Wilma Drip 16 & 20 Pot System.\n\n",
                :filename       => "empty"
        )
                @product.sale_price =  32.94
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 202, 
                :supplier_id    => 4,
                :name           => "20L TANK (X-Stream Propagator 36)", 
                :weight         => 1608,
                :order_code     => "0",
                :packaging      => "PT304",
                :description    => "770x405x270mm. 30'x16'x10.5'. Capacity: 20litres. Tank used in X-Stream 36 plant site aeroponic propagator.",
                :filename       => "images/nutriculture/48 Propagator Tank"
        )
                @product.sale_price =  9.84
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 203, 
                :supplier_id    => 4,
                :name           => "70L TANK (X-Stream Propagator 105)", 
                :weight         => 3400,
                :order_code     => "PT404",
                :packaging      => "empty",
                :description    => "1155x630x270mm. 45.5'x25'x10.5'. Capacity: 70litres. Tank used in X-Stream 105 plant site aeroponic propagator.",
                :filename       => "empty"
        )
                @product.sale_price =  16.39
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 204, 
                :supplier_id    => 4,
                :name           => "100L TANK (NFT GT100)", 
                :weight         => 6900,
                :order_code     => "TA100",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "empty"
        )
                @product.sale_price =  32.94
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 205, 
                :supplier_id    => 4,
                :name           => "50L TANK (NFT Multi-Duct)", 
                :weight         => 4000,
                :order_code     => "TA108",
                :packaging      => "empty",
                :description    => "101x490x20cm. 50l capacity. Tank used in the basic MD100 3 Channel Multi-Duct NFT System. Imperial size:43.25'x19'x8'",
                :filename       => "empty"
        )
                @product.sale_price =  15.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 206, 
                :supplier_id    => 4,
                :name           => "123L TANK (NFT Multi-Duct)", 
                :weight         => 4500,
                :order_code     => "TA191",
                :packaging      => "empty",
                :description    => "120x70x24cm. 123L capacity. Tank used in MD200/300 3 Channel Multi-Duct NFT System and MD601/602/801/802  Large Multi-Duct Channel NFT Systems. Imperial size:  47'x27.5'x9.5'",
                :filename       => "empty"
        )
                @product.sale_price =  25.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 207, 
                :supplier_id    => 4,
                :name           => "190L TANK (NFT Multi-Duct)", 
                :weight         => 7500,
                :order_code     => "TA192",
                :packaging      => "empty",
                :description    => "197x57x22cm. 190l capacity. Tank used in MD603/604/803/804 Large Multi-Duct NFT System. Imperial size: 84.5'x24.5'x9.5'. 42 Gallon capacity.\nLong, low and narrow dimensions, useful in many scenarios.",
                :filename       => "empty"
        )
                @product.sale_price =  36.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 208, 
                :supplier_id    => 4,
                :name           => "20L TANK (NFT GT205)", 
                :weight         => 2000,
                :order_code     => "TA205",
                :packaging      => "empty",
                :description    => "Precision, quality black plastic moulding. 695x385x185mm. 27.5'x15.25'x7.25'. Capacity: 20litres. Tank used in GT205 NFT system.",
                :filename       => "images/nutriculture/6 GroTank Tanks B"
        )
                @product.sale_price =  7.81
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 209, 
                :supplier_id    => 4,
                :name           => "45L TANK (NFT GT424)     ", 
                :weight         => 3600,
                :order_code     => "TA424",
                :packaging      => "empty",
                :description    => "Precision, quality black plastic moulding. 1010x485x205mm. 43.25'x19'x8'. Capacity: 45litres. Tank used in GT424 NFT system.",
                :filename       => "empty"
        )
                @product.sale_price =  15.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 210, 
                :supplier_id    => 4,
                :name           => "60L TANK (NFT GT604)", 
                :weight         => 4100,
                :order_code     => "TA604",
                :packaging      => "empty",
                :description    => "Precision, quality black plastic moulding. 1525x485x190mm. 60'x19'x7.5'. Capacity: 60litres. Tank used in GT604 NFT system.",
                :filename       => "empty"
        )
                @product.sale_price =  19.89
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 211, 
                :supplier_id    => 4,
                :name           => "80L TANK (NFT GT901)", 
                :weight         => 5000,
                :order_code     => "TA901",
                :packaging      => "empty",
                :description    => "Precision, quality black plastic moulding. 2110x530x215mm. 83'x21'x7.8.5'. Capacity: 80litres. Tank used in GT901 NFT system.",
                :filename       => "empty"
        )
                @product.sale_price =  27.37
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 212, 
                :supplier_id    => 4,
                :name           => "30L TANK (WILMA 4)", 
                :weight         => 0,
                :order_code     => "AW143",
                :packaging      => "empty",
                :description    => "670x570x190mm, 26.25'x22.25'x7.5'\n\nTough and durable multi-purpose nutrient tank. Designed and molded for the Atami Wilma Drip 4 Pot System.\n\n",
                :filename       => "images/nutriculture/61 Wilma Tanks"
        )
                @product.sale_price =  10.98
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 213, 
                :supplier_id    => 4,
                :name           => "13mm x 30m Flexi-tube (16mm ext. dia)", 
                :weight         => 0,
                :order_code     => "FT166",
                :packaging      => "empty",
                :description    => "Superior quality multipurpose tubing. Retains its flexibility in all conditions, reducing the need for tees & elbows.",
                :filename       => "empty"
        )
                @product.sale_price =  17.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 214, 
                :supplier_id    => 1,
                :name           => "HydroGarden 1m Polar Gully Kit Complete*", 
                :weight         => 14200,
                :order_code     => "01-050-010",
                :packaging      => "empty",
                :description    => "Has all the high quality professional grower features you come to expect from our gully range. Built at an appropriate height level for easy potting of clones & cuttings. Features a multi-ridge bottom to ensure even flow.  Dimensions 109 x 90 x 66cm.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hydrogarden_1mPolarGullyKit.JPG"
        )
                @product.sale_price =  62.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 215, 
                :supplier_id    => 1,
                :name           => "HydroGarden 1m Hydro Gully Kit Complete*", 
                :weight         => 22000,
                :order_code     => "01-050-050",
                :packaging      => "empty",
                :description    => "Use as NFT system or simply add an additional Drip Feed Kit and convert to Rockwool or Coco Slab culture.  Features unique collection trough to ensure total draining and leak free operation. Ideal for long term plants.  Dimensions 109 x 90 x 66cm.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hydrogarden_1mHydroGullyKit.JPG"
        )
                @product.sale_price =  80.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 216, 
                :supplier_id    => 1,
                :name           => "Hailea Air Compressor 16W (2100Litres/Hour) with 4 way Brass Air Divider", 
                :weight         => 1100,
                :order_code     => "10-455-210",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 217, 
                :supplier_id    => 1,
                :name           => "Hailea Air Compressor 20W (2700Litres/hour) with 6 Way Brass Air Divider", 
                :weight         => 1400,
                :order_code     => "10-455-215",
                :packaging      => "empty",
                :description    => "Range of aluminium cased high pressure, high output air compressors for larger garden systems or to aerate numerous smaller systems via air stones & diffusers. Includes durable metal air divider with taps so you can individually open and close lines. Idea",
                :filename       => "empty"
        )
                @product.sale_price =  14.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 218, 
                :supplier_id    => 1,
                :name           => "Hailea Air Compressor 60W (4200Litres/hour) with 8 Way Brass Air Divider Taps", 
                :weight         => 2600,
                :order_code     => "10-455-220",
                :packaging      => "empty",
                :description    => "Range of aluminium cased high pressure, high output air compressors for larger garden systems or to aerate numerous smaller systems via air stones & diffusers. Includes durable metal air divider with taps so you can individually open and close lines. Idea",
                :filename       => "empty"
        )
                @product.sale_price =  18.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 219, 
                :supplier_id    => 1,
                :name           => "Hailea Air Compressor 112W (6600Litres/hour) with 12 Way Brass Air Divider Taps", 
                :weight         => 2100,
                :order_code     => "10-455-225",
                :packaging      => "empty",
                :description    => "Range of aluminium cased high pressure, high output air compressors for larger garden systems or to aerate numerous smaller systems via air stones & diffusers. Includes durable metal air divider with taps so you can individually open and close lines. Idea",
                :filename       => "empty"
        )
                @product.sale_price =  33.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 220, 
                :supplier_id    => 1,
                :name           => "Ceramic Straight Airstone 40cm (16')", 
                :weight         => 90,
                :order_code     => "10-460-020",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Ceramic_airstone40cm.JPG"
        )
                @product.sale_price =  1.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 221, 
                :supplier_id    => 1,
                :name           => "Ceramic Straight Airstone 60cm (24')", 
                :weight         => 120,
                :order_code     => "10-460-030",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Ceramic_airstone60cm.JPG"
        )
                @product.sale_price =  1.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 222, 
                :supplier_id    => 1,
                :name           => "Ceramic Straight Airstone 75cm (30')", 
                :weight         => 120,
                :order_code     => "10-460-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 223, 
                :supplier_id    => 1,
                :name           => "Ceramic Round Airstone 75mm (3')", 
                :weight         => 40,
                :order_code     => "10-460-050",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Ceramic_AirstoneRound.JPG"
        )
                @product.sale_price =  0.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 224, 
                :supplier_id    => 1,
                :name           => "Ceramic Round Airstone 100mm (4')", 
                :weight         => 80,
                :order_code     => "10-460-060",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Ceramic_AirstoneRound.JPG"
        )
                @product.sale_price =  1.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 225, 
                :supplier_id    => 1,
                :name           => "Ceramic Round Airstone 125mm (5') 80403", 
                :weight         => 140,
                :order_code     => "10-460-070",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Ceramic_AirstoneRound.JPG"
        )
                @product.sale_price =  1.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 226, 
                :supplier_id    => 1,
                :name           => "Flexible Rubber Air Diffuser 300mm (12')", 
                :weight         => 60,
                :order_code     => "10-460-080",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Flexible_rubber_airstone.jpg"
        )
                @product.sale_price =  1.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 227, 
                :supplier_id    => 1,
                :name           => "Flexible Rubber Air Diffuser 600mm (24')", 
                :weight         => 90,
                :order_code     => "10-460-090",
                :packaging      => "empty",
                :description    => "High Quality Air Diffuser to increase the Oxygen content of all nutrient solutions.  Simply attach to an Air Pump with Silicon Air Line.  Recommended for all systems !",
                :filename       => "http://www.hydrogarden.com/StockPics/Flexible_rubber_airstone.jpg"
        )
                @product.sale_price =  1.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 228, 
                :supplier_id    => 1,
                :name           => "Flexible Rubber AirCurtain 900mm (36')", 
                :weight         => 100,
                :order_code     => "10-460-095",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 229, 
                :supplier_id    => 1,
                :name           => "Air Line Silcon 100m", 
                :weight         => 2000,
                :order_code     => "10-460-120",
                :packaging      => "empty",
                :description    => "Quality Silicon Airline to attach pumps to airstones as needed.  Silicon is flexible and long lasting.",
                :filename       => "http://www.hydrogarden.com/StockPics/10-460-120_AirlineSilicon.jpg"
        )
                @product.sale_price =  8.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 230, 
                :supplier_id    => 1,
                :name           => "Air Pump Divider - 6 Outlet lines", 
                :weight         => 40,
                :order_code     => "10-460-150",
                :packaging      => "empty",
                :description    => "Use this air divider to aerate 6 units from 1 supply.  Can be used with any high output air pump or air compressor.",
                :filename       => "http://www.hydrogarden.com/StockPics/Aquarline_6outlet_Divider.jpg"
        )
                @product.sale_price =  0.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 231, 
                :supplier_id    => 1,
                :name           => "Air Pump Divider - 10 outlet lines", 
                :weight         => 50,
                :order_code     => "10-460-160",
                :packaging      => "empty",
                :description    => "Use this air divider to aerate 10 units from 1 supply.  Can be used with any high output air pump or air compressor.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  0.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 232, 
                :supplier_id    => 1,
                :name           => "Air/Nutrient Manifold - 26 outlet", 
                :weight         => 70,
                :order_code     => "10-460-170",
                :packaging      => "empty",
                :description    => "Plastic outlet divider for splitting air lines",
                :filename       => "empty"
        )
                @product.sale_price =  1.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 233, 
                :supplier_id    => 1,
                :name           => "4 Way Brass Air Divider with Taps (4mm in/output)", 
                :weight         => 70,
                :order_code     => "10-460-175",
                :packaging      => "empty",
                :description    => "Durable 4 way metal air divider with taps so you can individually open and close lines.",
                :filename       => "empty"
        )
                @product.sale_price =  1.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 234, 
                :supplier_id    => 1,
                :name           => "Air/Nutrient Manifold - 6 outlet", 
                :weight         => 70,
                :order_code     => "10-460-150",
                :packaging      => "empty",
                :description    => "Plastic outlet divider for splitting air lines",
                :filename       => "empty"
        )
                @product.sale_price =  0.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 235, 
                :supplier_id    => 1,
                :name           => "Air/Nutrient Manifold - 10 outlet", 
                :weight         => 70,
                :order_code     => "10-460-160",
                :packaging      => "empty",
                :description    => "Plastic outlet divider for splitting air lines",
                :filename       => "empty"
        )
                @product.sale_price =  0.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 236, 
                :supplier_id    => 1,
                :name           => "Air/Nutrient Manifold - 16 outlet", 
                :weight         => 70,
                :order_code     => "10-460-155",
                :packaging      => "empty",
                :description    => "Plastic outlet divider for splitting air lines",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 237, 
                :supplier_id    => 1,
                :name           => "Stewart Growbag Tray (100x39x5cm)", 
                :weight         => 1500,
                :order_code     => "12-555-020",
                :packaging      => "empty",
                :description    => "Garden tray 100cm (l) x 39 cm (w) x 5cm (h) offering ample room for pots or propagation trays or the ever reliable growbag. For indoor or outdoor use.",
                :filename       => "empty"
        )
                @product.sale_price =  3.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 238, 
                :supplier_id    => 2,
                :name           => "SELF WATERING PLANT TRAY", 
                :weight         => 0,
                :order_code     => "G70",
                :packaging      => "Mail Order Box",
                :description    => "In essence, this is a mini capillary table which will keep potted plants watered for up to 14 days. The unit features a base reservoir tray which contains a stilted inner support platform which is covered in capillary matting.",
                :filename       => "images/garland/Self Watering Plant Tray G70 - Hi Res"
        )
                @product.sale_price =  4.22
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 239, 
                :supplier_id    => 2,
                :name           => "SELF WATERING WINDOWSILL PLANT TRAY", 
                :weight         => 0,
                :order_code     => "G71",
                :packaging      => "Mail Order Box",
                :description    => "Windowsills can offer ideal light conditions for house plants, so this windowsill sized self watering tray will be of value to all home owners as well as being particularly useful as a holiday watering system. Once filled with water, it will keep potted p",
                :filename       => "images/garland/Self Watering Windowsill Tray  - Hi Res"
        )
                @product.sale_price =  3.63
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 240, 
                :supplier_id    => 2,
                :name           => "Pouring Tray", 
                :weight         => 0,
                :order_code     => "G46",
                :packaging      => "data entry required",
                :description    => "Another multi purpose tray with uses inside and outside the home. The added depth of 9.5cm gives a large internal capacity of 16 Litres. The Pouring Tray features a corner spout, making it ideal for use with liquids.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 241, 
                :supplier_id    => 2,
                :name           => "Deep Tray", 
                :weight         => 0,
                :order_code     => "G47",
                :packaging      => "data entry required",
                :description    => "Another multi purpose tray with uses inside and outside the home. The added depth of 9.5cm gives a large internal capacity of 16 Litres.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 242, 
                :supplier_id    => 2,
                :name           => "Aqua Lock Self Watering Hanging Basket 31 cm (small)", 
                :weight         => 0,
                :order_code     => "G65",
                :packaging      => "data entry required",
                :description    => "Our Aqua Lock Hanging Baskets save plants, save water and save effort for the user. The unique design of the Aqua Lock features a twist lock detachable water reservoir which is connected to the hanging basket via a capillary wick. This ensures self wateri",
                :filename       => "images/garland/Aqua Lock - Hi Res"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 243, 
                :supplier_id    => 2,
                :name           => "Standard Seed Tray", 
                :weight         => 0,
                :order_code     => "G17",
                :packaging      => "G17",
                :description    => "Dimensions - 36.5cm (l) x 22cm (w) x 5.5cm (h)",
                :filename       => "garland_images/f651698e2b615837bbb7b84f870f2de6.jpg"
        )
                @product.sale_price =  0.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 244, 
                :supplier_id    => 2,
                :name           => "Chieftain Garden Tray", 
                :weight         => 0,
                :order_code     => "G100",
                :packaging      => "data entry required",
                :description    => "Another multi purpose tray with uses inside and outside the home. An extra wide outer rim makes it very easy to carry and the added depth of 12cm gives a large internal capacity of 28 Litres.Made from recycled polypropylene.Dimensions - 64.5cm (l) x 49.5c",
                :filename       => "garland_images/4a8917674df8b69950028a97fc48338d.jpg"
        )
                @product.sale_price =  7.39
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 245, 
                :supplier_id    => 4,
                :name           => "Nutriculture NET POT 80mm", 
                :weight         => 5,
                :order_code     => "AR105",
                :packaging      => "empty",
                :description    => "Round Net Pots are useful for propagation, aeroponics, flood and drain, drip feed systems or for your own home made system.  Use with Hydroton Clay or Canna Coco Coir or a mixture of the two.",
                :filename       => "empty"
        )
                @product.sale_price =  0.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 246, 
                :supplier_id    => 4,
                :name           => "Box of Nutriculture NET POT 80mm", 
                :weight         => 7000,
                :order_code     => "AR107",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  102.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 247, 
                :supplier_id    => 4,
                :name           => "ATAMI SQUARE POT 6.5L", 
                :weight         => 300,
                :order_code     => "BI150",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.82
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 248, 
                :supplier_id    => 4,
                :name           => "ATAMI SQUARE POT 11L", 
                :weight         => 350,
                :order_code     => "BI151",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.91
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 249, 
                :supplier_id    => 2,
                :name           => "Large Propagator - with drainage holes", 
                :weight         => 0,
                :order_code     => "G19",
                :packaging      => "Supplied bulk packed trays & covers nested separately - no individual box included",
                :description    => "Two sizes of injection moulded propagator units featuring crystal clear covers with adjustable ‘butterfly’ ventilators to control humidity levels. The covers are manufactured in a flexible, shatter resistant polymer for longer product life. Beware - many",
                :filename       => "images/garland/Jumbo Tidy Pan In Use - Hi Res"
        )
                @product.sale_price =  2.42
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 250, 
                :supplier_id    => 2,
                :name           => "Small Propagator - with drainage holes", 
                :weight         => 0,
                :order_code     => "G20",
                :packaging      => "Supplied bulk packed trays & covers nested separately - no individual box included",
                :description    => "Two sizes of injection moulded propagator units featuring crystal clear covers with adjustable ‘butterfly’ ventilators to control humidity levels. The covers are manufactured in a flexible, shatter resistant polymer for longer product life. Beware - many",
                :filename       => "images/garland/Small Propagator - Hi Res"
        )
                @product.sale_price =  1.38
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 251, 
                :supplier_id    => 2,
                :name           => "MINI PROPAGATOR", 
                :weight         => 0,
                :order_code     => "G85",
                :packaging      => "Packed in box of 21 units - no individual packaging supplied",
                :description    => "data entry required",
                :filename       => "empty"
        )
                @product.sale_price =  0.63
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 252, 
                :supplier_id    => 2,
                :name           => "TRIO TOP ELECTRIC WINDOWSILL PROPAGATOR", 
                :weight         => 0,
                :order_code     => "G50",
                :packaging      => "Mail Order Box",
                :description    => "While windowsills can often provide ideal light conditions for successful propagation, they can also be cool and draughty. This compact electric propagator is supplied with 3 high dome propagators - each 22.5cm long by 16.5cm wide.",
                :filename       => "images/garland/Trio Top Propagator - Hi Res"
        )
                @product.sale_price =  13.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 253, 
                :supplier_id    => 2,
                :name           => "SUPER 7 ELECTRIC WINDOWSILL PROPAGATOR", 
                :weight         => 0,
                :order_code     => "G51",
                :packaging      => "Mail Order Box",
                :description    => "While windowsills can often provide ideal light conditions for successful propagation, they can also be cool and draughty. This compact electric propagator is a complete nursery for the windowsill.",
                :filename       => "images/garland/Super 7 - Hi Res"
        )
                @product.sale_price =  13.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 254, 
                :supplier_id    => 2,
                :name           => "TOP 10  ELECTRIC PROPAGATOR", 
                :weight         => 0,
                :order_code     => "G52",
                :packaging      => "Mail Order Box",
                :description    => "Designed for the keen gardener looking to grow a range of seed varieties. The size of the electric heated base lends itself to use in a greenhouse or on a spare room table top. Featuring 10 mini vented propagators the Top 10 allows the user to grow a larg",
                :filename       => "images/garland/Top 10 Prop - Hi Res"
        )
                @product.sale_price =  20.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 255, 
                :supplier_id    => 2,
                :name           => "BIG 3  ELECTRIC PROPAGATOR", 
                :weight         => 0,
                :order_code     => "G78",
                :packaging      => "Mail Order Box",
                :description    => "Designed for the keen gardener looking to grow seeds in volume, this unit is also ideal for rooting cuttings. This is our largest electric and is supplied with 3 large high dome propagators - each 36.5cm long by 22cm wide. The propagator units are ideal f",
                :filename       => "images/garland/Big 3 Prop - Hi Res"
        )
                @product.sale_price =  30.29
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 256, 
                :supplier_id    => 2,
                :name           => "EASY 2 GROW KIT", 
                :weight         => 0,
                :order_code     => "G107",
                :packaging      => "Mail Order Box",
                :description    => "The standard Easy2Grow Kit is supplied with a 47 Litre water tank complete with an ‘in line’ water filter which blocks impurities that could clog the operation of the AQUAvalve. A 1.5 metre length of irrigation tube connects the tank to the 2 pot module w",
                :filename       => "empty"
        )
                @product.sale_price =  12.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 257, 
                :supplier_id    => 2,
                :name           => "CANOPY SUPPORT FOR GROW BED", 
                :weight         => 0,
                :order_code     => "G117",
                :packaging      => "Mail Order Box",
                :description    => "This 12.7mm dia. aluminium frame anchors firmly into the G94 - Grow Bed to provide a rigid support for netting or polythene sheet. Thanks to Garland’s unique tube connectors, no tools are required and assembly takes minutes.  Dimensions - 96 x 96 x 100 cm",
                :filename       => "images/garland/Grow Bed Canopy - With Plants"
        )
                @product.sale_price =  5.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 258, 
                :supplier_id    => 2,
                :name           => "Giant Plus Garden Tray", 
                :weight         => 0,
                :order_code     => "G82",
                :packaging      => "data entry required",
                :description    => "At 10cm longer than our G81 - Giant Tray, this tray has proved popular when used by private and commercial gardeners alike as a large irrigation table for keeping a multitude of potted plants watered. The tray can be filled with grit or capillary matting",
                :filename       => "garland_images/5208637e478b773786d865250e477cfe.jpg"
        )
                @product.sale_price =  12.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 259, 
                :supplier_id    => 4,
                :name           => "WILMA THREADED NIPPLE", 
                :weight         => 1,
                :order_code     => "DR135",
                :packaging      => "empty",
                :description    => "Threaded joiner to screw into the Wilma delivery tube and onto Wilma dripper line to access your pots.",
                :filename       => "empty"
        )
                @product.sale_price =  0.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 260, 
                :supplier_id    => 4,
                :name           => "WILMA DRIPPERLINE 200M", 
                :weight         => 2350,
                :order_code     => "FT138",
                :packaging      => "empty",
                :description    => "Large roll of dripper line to customise your drip irrigation systems.",
                :filename       => "empty"
        )
                @product.sale_price =  19.26
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 261, 
                :supplier_id    => 4,
                :name           => "3mm DRIPPER LINE 20M", 
                :weight         => 230,
                :order_code     => "FT190",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 262, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA 8 POT Dripper System (without timer)", 
                :weight         => 9100,
                :order_code     => "AW108",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/AW108 Wilma 8"
        )
                @product.sale_price =  57.43
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 263, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA 10 POT Dripper System (without timer)", 
                :weight         => 9600,
                :order_code     => "AW110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  57.43
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 264, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA 16 POT Dripper System (without timer)", 
                :weight         => 16000,
                :order_code     => "AW116",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/AW116 Wilma 16"
        )
                @product.sale_price =  96.86
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 265, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA 20 POT Dripper System (without timer)", 
                :weight         => 16000,
                :order_code     => "AW120",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/AW120 Wilma 20"
        )
                @product.sale_price =  96.86
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 266, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA 4 Dripper System (without timer)", 
                :weight         => 4300,
                :order_code     => "AW140",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/AW140 Wilma 4"
        )
                @product.sale_price =  35.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 267, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA Deluxe 8 POT Dripper System", 
                :weight         => 8700,
                :order_code     => "AW208",
                :packaging      => "empty",
                :description    => "The professional option, for the discerning grower who wants good control plant nutrition. \n\nDeluxe kit benefits from time saving precision equipment for accurate feeing and a secondary pump for constant nutrient agitation.\n\nIncludes 8x 11litre Square Pot",
                :filename       => "empty"
        )
                @product.sale_price =  92.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 268, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA Deluxe 10 POT Dripper System", 
                :weight         => 16500,
                :order_code     => "AW210",
                :packaging      => "empty",
                :description    => "The professional option, for the discerning grower who wants good control plant nutrition. \n\nDeluxe kit benefits from time saving precision equipment for accurate feeing and a secondary pump for constant nutrient agitation.\n\nIncludes 10x 6.5litre Square P",
                :filename       => "empty"
        )
                @product.sale_price =  92.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 269, 
                :supplier_id    => 4,
                :name           => "WILMA 10 POT TRAY", 
                :weight         => 1500,
                :order_code     => "AW102",
                :packaging      => "empty",
                :description    => "Wilma 10 pot tray. Molded to fit securely above the Nutrient Tank and accomodate 10 x Wilma 6.5 litre square pots. Includes drainage holes to allow excess nutrient to drain back to the nutrient tank in this re-circulating 'drip' system.",
                :filename       => "empty"
        )
                @product.sale_price =  16.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 270, 
                :supplier_id    => 4,
                :name           => "WILMA 8 POT TRAY", 
                :weight         => 1500,
                :order_code     => "AW103",
                :packaging      => "empty",
                :description    => "Wilma 8 pot tray. Molded to fit securely above the Nutrient Tank and accomodate 8x Wilma 11litre square pots. Includes drainage holes to allow excess nutrient to drain back to the nutrient tank in this re-circulating 'drip' system.",
                :filename       => "empty"
        )
                @product.sale_price =  16.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 271, 
                :supplier_id    => 4,
                :name           => "WILMA 10 DELIVERY SYSTEM", 
                :weight         => 200,
                :order_code     => "AW104",
                :packaging      => "empty",
                :description    => "10 dripper irrigation delivery system. \n\nDesigned for the Wilma 10 Pot System the system includes Delivery tube (to fit directly onto MaxiJet pumps), 2 dripper sets, nipples & irrigation tube, \n\nDrippers\n10x Arrow Dripper 2l/hr (the black ones)\n10x Flood",
                :filename       => "images/nutriculture/AW110 Wilma 10"
        )
                @product.sale_price =  4.54
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 272, 
                :supplier_id    => 4,
                :name           => "WILMA 8 DELIVERY SYSTEM", 
                :weight         => 200,
                :order_code     => "AW105",
                :packaging      => "empty",
                :description    => "8 dripper irrigation delivery system. \n\nDesigned for the Wilma 8 Pot System the system includes Delivery tube (to fit directly onto MaxiJet pumps), 2 dripper sets, nipples & irrigation tube, \n\nDrippers\n8x Arrow Dripper 2l/hr (the black ones)\n8x Flood Drip",
                :filename       => "images/nutriculture/AW108 Wilma 8"
        )
                @product.sale_price =  3.93
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 273, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA FLAT TRAY", 
                :weight         => 1500,
                :order_code     => "AW106",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  16.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 274, 
                :supplier_id    => 4,
                :name           => "WILMA 16 POT TRAYS", 
                :weight         => 3000,
                :order_code     => "AW121",
                :packaging      => "empty",
                :description    => "Wilma 16 pot tray. Molded to fit securely above the Nutrient Tank and accomodate 16 x Wilma 11 litre square pots. Includes drainage holes to allow excess nutrient to drain back to the nutrient tank in this re-circulating 'drip' system.",
                :filename       => "empty"
        )
                @product.sale_price =  33.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 275, 
                :supplier_id    => 4,
                :name           => "WILMA 20 POT TRAYS", 
                :weight         => 3000,
                :order_code     => "AW122",
                :packaging      => "empty",
                :description    => "Wilma 20 pot tray. Molded to fit securely above the Nutrient Tank and accomodate 20 x Wilma 6.5 litre square pots. Includes drainage holes to allow excess nutrient to drain back to the nutrient tank in this re-circulating 'drip' system.",
                :filename       => "empty"
        )
                @product.sale_price =  33.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 276, 
                :supplier_id    => 4,
                :name           => "WILMA DELIVERY SYSTEM 16 POT", 
                :weight         => 300,
                :order_code     => "AW124",
                :packaging      => "empty",
                :description    => "16 dripper irrigation delivery system. \n\nDesigned for the Wilma 16 Pot System the system includes Delivery tube (to fit directly onto MaxiJet pumps), 2 dripper sets, nipples & irrigation tube, \n\nDrippers\n16 x Arrow Dripper 2l/hr (the black ones)\n16 x Floo",
                :filename       => "empty"
        )
                @product.sale_price =  9.29
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 277, 
                :supplier_id    => 4,
                :name           => "WILMA DELIVERY SYSTEM 20 POT", 
                :weight         => 300,
                :order_code     => "AW125",
                :packaging      => "empty",
                :description    => "20 dripper irrigation delivery system. \n\nDesigned for the Wilma 20 Pot System the system includes Delivery tube (to fit directly onto MaxiJet pumps), 2 dripper sets, nipples & irrigation tube, \n\nDrippers\n20x Arrow Dripper 2L/hr (the black ones)\n20x Flood",
                :filename       => "empty"
        )
                @product.sale_price =  9.29
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 278, 
                :supplier_id    => 4,
                :name           => "ATAMI WILMA 4 POT TRAY", 
                :weight         => 840,
                :order_code     => "AW141",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.98
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 279, 
                :supplier_id    => 4,
                :name           => "WILMA 4 DEL SYSTEM", 
                :weight         => 15,
                :order_code     => "AW142",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 280, 
                :supplier_id    => 4,
                :name           => "5L BLACK BUCKET inc LID", 
                :weight         => 350,
                :order_code     => "NI998",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "empty"
        )
                @product.sale_price =  0.88
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 281, 
                :supplier_id    => 4,
                :name           => "10L BLACK BUCKETS inc LID", 
                :weight         => 650,
                :order_code     => "NI999",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 282, 
                :supplier_id    => 4,
                :name           => "20L BLACK BUCKET + LID", 
                :weight         => 750,
                :order_code     => "AI300",
                :packaging      => "empty",
                :description    => "Multipurpose high quality food grade black plastic bucket, with handle and strong securing lid. Perfect for simple DIY home hydroponics using a net pot inset into the lid and a ceramic bubbler airstone in the bottom of the bucket.",
                :filename       => "empty"
        )
                @product.sale_price =  2.42
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 283, 
                :supplier_id    => 4,
                :name           => "3/8' NON RETURN VALVE", 
                :weight         => 10,
                :order_code     => "FT163",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 284, 
                :supplier_id    => 4,
                :name           => "1/2' NON RETURN VALVE", 
                :weight         => 10,
                :order_code     => "FT164",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 285, 
                :supplier_id    => 4,
                :name           => "3/4' NON RETURN VALVE", 
                :weight         => 60,
                :order_code     => "FT165",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 286, 
                :supplier_id    => 4,
                :name           => "GT100 NFT System", 
                :weight         => 12900,
                :order_code     => "GN100",
                :packaging      => "empty",
                :description    => "Designed to give 1 square metre of growing area!\n\nTank TA100: 100 litres 1200x1060x 215mm (47.5'x42'x8.5')\nTray GS100: 1060x1060x80mm (42'x42'x3')\n",
                :filename       => "images/nutriculture/2 GroTank Basic Kits B"
        )
                @product.sale_price =  80.42
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 287, 
                :supplier_id    => 4,
                :name           => "GT205 NFT System", 
                :weight         => 3000,
                :order_code     => "GN205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  21.03
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 288, 
                :supplier_id    => 4,
                :name           => "GT424 NFT System", 
                :weight         => 6500,
                :order_code     => "GN424",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  38.48
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 289, 
                :supplier_id    => 4,
                :name           => "GT604 NFT System", 
                :weight         => 8200,
                :order_code     => "GN604",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  49.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 290, 
                :supplier_id    => 4,
                :name           => "GT901 NFT System", 
                :weight         => 11000,
                :order_code     => "GN901",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  66.12
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 291, 
                :supplier_id    => 4,
                :name           => "GT100 NFT System - with pH Kit", 
                :weight         => 15500,
                :order_code     => "GT100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/GT100 - 1m2"
        )
                @product.sale_price =  84.33
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 292, 
                :supplier_id    => 4,
                :name           => "GT205 NFT System - with pH Test Kit", 
                :weight         => 3500,
                :order_code     => "GT205",
                :packaging      => "empty",
                :description    => "Imperial size: 28'x15'",
                :filename       => "images/nutriculture/GT205"
        )
                @product.sale_price =  24.94
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 293, 
                :supplier_id    => 4,
                :name           => "GT205 NFT DRIPPER System - with pH Test Kit", 
                :weight         => 6000,
                :order_code     => "GT305",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/3 GroTank Dripper Kits B"
        )
                @product.sale_price =  28.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 294, 
                :supplier_id    => 4,
                :name           => "GT424 NFT System - with pH Test Kit", 
                :weight         => 5650,
                :order_code     => "GT424",
                :packaging      => "empty",
                :description    => "Imperial size: 44'x20'",
                :filename       => "images/nutriculture/GT424 2006"
        )
                @product.sale_price =  41.66
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 295, 
                :supplier_id    => 4,
                :name           => "GT424 NFT DRIPPER System - with pH Test Kit", 
                :weight         => 8000,
                :order_code     => "GT524",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  45.92
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 296, 
                :supplier_id    => 4,
                :name           => "GT604 NFT System - with pH Test Kit", 
                :weight         => 7650,
                :order_code     => "GT604",
                :packaging      => "empty",
                :description    => "Imperial size: 60'x20'",
                :filename       => "images/nutriculture/GT604"
        )
                @product.sale_price =  52.96
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 297, 
                :supplier_id    => 4,
                :name           => "GT604 NFT DRIPPER System - with pH Test Kit", 
                :weight         => 10000,
                :order_code     => "GT704",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  58.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 298, 
                :supplier_id    => 4,
                :name           => "GT901 NFT System - with pH Test Kit", 
                :weight         => 11050,
                :order_code     => "GT901",
                :packaging      => "empty",
                :description    => "Imperial size: 90'x14'",
                :filename       => "images/nutriculture/GT901 2006"
        )
                @product.sale_price =  68.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 299, 
                :supplier_id    => 4,
                :name           => "GT901 NFT DRIPPER System - with pH Test Kit", 
                :weight         => 12000,
                :order_code     => "GT999",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  75.66
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 300, 
                :supplier_id    => 4,
                :name           => "3 Channel Multi-Duct NFT System", 
                :weight         => 19000,
                :order_code     => "MD100",
                :packaging      => "empty",
                :description    => "3 Channel NFT system complete with all you need to grow.  \nThe perfect system for growing in rockwool cubes or expanded clay pebbles (used in net pots).\n\nIncludes NFT tray, cover plates, stand, 50litre reservoir, pump, irrigation kit, spreader mat, pH Dow",
                :filename       => "images/nutriculture/MD100"
        )
                @product.sale_price =  82.59
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 301, 
                :supplier_id    => 4,
                :name           => "3 Channel Multi-Duct NFT Dripper System", 
                :weight         => 17000,
                :order_code     => "MD101",
                :packaging      => "empty",
                :description    => "System Footprint: 1700x1010mm (68'x43.25)\nTank TA108: 50litres 1010x485x 205mm (43.25'x19'x8')\nStand MD914 (two prong) Height: 238mm (9.5')\nChannel Size: 1600x860x50mm (64'x34'x2')\n\n3 Channel NFT system including DRIPPERS - so each plant is feed from the",
                :filename       => "empty"
        )
                @product.sale_price =  102.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 302, 
                :supplier_id    => 4,
                :name           => "3 Channel Multi-Duct Plus NFT System", 
                :weight         => 19000,
                :order_code     => "MD200",
                :packaging      => "empty",
                :description    => "The same system as the 3 Channel MULTIDUCT NFT System but instead of the TA108 50litre capacity tank comes with the larger TA191 123litre capacity tank.\n\nAs this reservoir is bigger, or more importantly slightly higher, this kit is supplied with a slightl",
                :filename       => "images/nutriculture/MD200"
        )
                @product.sale_price =  93.62
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 303, 
                :supplier_id    => 4,
                :name           => "3 Channel Multi-Duct Plus NFT Dripper System", 
                :weight         => 19000,
                :order_code     => "MD201",
                :packaging      => "empty",
                :description    => "System Footprint: 1700x1200mm\nTank TA191: 123litres 1200x700x 240mm (47'x27.5'x9.5')\nStand MD915 (two prong) Height: 280mm (11')\nChannel Size: 1600x860x50mm (64'x34'x2')\n\nThe same system as the 3 Channel MULTIDUCT NFT System but with Dripper set - so each",
                :filename       => "empty"
        )
                @product.sale_price =  108.29
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 304, 
                :supplier_id    => 4,
                :name           => "PLUS TO GIANT CONVERSION KIT", 
                :weight         => 6000,
                :order_code     => "MD250",
                :packaging      => "empty",
                :description    => "Conversion kit to add a second 3Channel MULTIDUCT NFT to your MULTIDUCT NFT PLUS System. This conversion kit doubles the garden size - value for your money. The 123litre capacity reservoir is sufficient in volume to irrigate two trays.\n\nIncludes 3Channel",
                :filename       => "empty"
        )
                @product.sale_price =  46.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 305, 
                :supplier_id    => 4,
                :name           => "PLUS DRIPPER TO GIANT DRIPPER CONVERSION PACK. (MD201-MD301)", 
                :weight         => 0,
                :order_code     => "MD251",
                :packaging      => "empty",
                :description    => "Conversion kit to add a second 3Channel MULTIDUCT NFT to your MULTIDUCT NFT PLUS DRIPPER System. This conversion kit doubles the garden size - value for your money. The 123litre capacity reservoir is sufficient in volume to irrigate two trays.\n\nIncludes 3",
                :filename       => "empty"
        )
                @product.sale_price =  52.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 306, 
                :supplier_id    => 4,
                :name           => "3 Channel Multi-Duct Giant NFT System", 
                :weight         => 25000,
                :order_code     => "MD300",
                :packaging      => "empty",
                :description    => "The Giant of the 3Channel MULTIDUCT family. With two 3 Channel trays & a single 123litre reservoir this system has a GIANT 'footprint' of 3500x860mm.\n\nComplete with NFT trays, cover plates, stands, reservoir, pump,  irrigation system, spreader mat, pH Tes",
                :filename       => "images/nutriculture/MD300"
        )
                @product.sale_price =  137.68
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 307, 
                :supplier_id    => 4,
                :name           => "3 Channel Multi-Duct Giant NFT Dripper System", 
                :weight         => 25000,
                :order_code     => "MD301",
                :packaging      => "empty",
                :description    => "System Footprint: 3400x1200mm\n\nThe same as the MULTIDUCT GIANT NFT but complimented with dripper irrigation system. Ensure every plant gets the same.",
                :filename       => "empty"
        )
                @product.sale_price =  159.46
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 308, 
                :supplier_id    => 4,
                :name           => "6 FT Multi-Duct Channel (6' x 3')", 
                :weight         => 10000,
                :order_code     => "MD600",
                :packaging      => "empty",
                :description    => "Large plastic channel for larger indoor or greenhouse gardens. Features moulded grooves to provide even distribution of nutrients - especially important in the first stages of growth with young small root systems.\n\nSize: 1830x940x65mm, 72'x37'x2.5'\n\nSpeci",
                :filename       => "empty"
        )
                @product.sale_price =  39.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 309, 
                :supplier_id    => 4,
                :name           => "Multi kit dia 1 6ft", 
                :weight         => 25000,
                :order_code     => "MD601",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD601"
        )
                @product.sale_price =  102.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 310, 
                :supplier_id    => 4,
                :name           => "6ft Multi-Duct Complete Kit 2", 
                :weight         => 35000,
                :order_code     => "MD602",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "eimages/nutriculture/MD602"
        )
                @product.sale_price =  157.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 311, 
                :supplier_id    => 4,
                :name           => "6ft Multi-Duct Complete Kit 3", 
                :weight         => 37000,
                :order_code     => "MD603",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD603"
        )
                @product.sale_price =  171.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 312, 
                :supplier_id    => 4,
                :name           => "6ft Multi-Duct Complete Kit 4", 
                :weight         => 68000,
                :order_code     => "MD604",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD604"
        )
                @product.sale_price =  280.57
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 313, 
                :supplier_id    => 4,
                :name           => "6'Channel 6'X 20'          p", 
                :weight         => 0,
                :order_code     => "MD605",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 314, 
                :supplier_id    => 4,
                :name           => "8 FT Muti-Duct Channel (8' x 3')", 
                :weight         => 13500,
                :order_code     => "MD800",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  52.73
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 315, 
                :supplier_id    => 4,
                :name           => "8ft Multi-Duct Complete Kit 1", 
                :weight         => 25000,
                :order_code     => "MD801",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD801"
        )
                @product.sale_price =  124.79
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 316, 
                :supplier_id    => 4,
                :name           => "8ft Multi-Duct Complete Kit 2", 
                :weight         => 37000,
                :order_code     => "MD802",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD802"
        )
                @product.sale_price =  204.47
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 317, 
                :supplier_id    => 4,
                :name           => "8ft Multi-Duct Complete Kit 3", 
                :weight         => 30000,
                :order_code     => "MD803",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD803"
        )
                @product.sale_price =  215.31
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 318, 
                :supplier_id    => 4,
                :name           => "8ft Multi-Duct Complete Kit 4", 
                :weight         => 70000,
                :order_code     => "MD804",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/MD804"
        )
                @product.sale_price =  367.49
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 319, 
                :supplier_id    => 4,
                :name           => "6ft Multi-Duct Complete Kit 1", 
                :weight         => 0,
                :order_code     => "MD601",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 320, 
                :supplier_id    => 4,
                :name           => "12 PLANT PROPAGATOR", 
                :weight         => 4000,
                :order_code     => "PT134",
                :packaging      => "empty",
                :description    => "X-Stream Aeroponic Propagator for up to 12 seedlings or cuttings.\n\nKit completes complete with tank, cover plate, vented humidity done, pump, sprinker delivery system, set of 12 net pots & neoprene clone collars. \n\nTank size: 590x490x300mm, 23'x19'12'\nTan",
                :filename       => "images/nutriculture/PT134 12 Propagator"
        )
                @product.sale_price =  26.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 321, 
                :supplier_id    => 4,
                :name           => "20 PLANT PROPAGATOR", 
                :weight         => 2500,
                :order_code     => "PT200",
                :packaging      => "empty",
                :description    => "X-Stream Aeroponic Propagator for up to 20 seedlings or cuttings.\n\nKit completes complete with tank, cover plate, vented humidity done, pump, sprinker delivery system, set of 20 net pots & neoprene clone collars. \n\nTank size: 590x490x300mm, 23'x19'12'\nTan",
                :filename       => "images/nutriculture/PT200 20 Propagator"
        )
                @product.sale_price =  34.04
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 322, 
                :supplier_id    => 4,
                :name           => "36 PLANT PROPAGATOR", 
                :weight         => 3000,
                :order_code     => "PT300",
                :packaging      => "empty",
                :description    => "X-Stream Aeroponic Propagator for up to 36 seedlings or cuttings.\n\nKit completes complete with tank, cover plate, vented humidity done, pump, sprinker delivery system, set of 36 net pots & neoprene clone collars. \n\nTank size: 770x405x270mm, 30'x16'x10.5'\n",
                :filename       => "images/nutriculture/PT300 36 propagator"
        )
                @product.sale_price =  44.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 323, 
                :supplier_id    => 4,
                :name           => "105 PLANT PROPAGATOR", 
                :weight         => 6000,
                :order_code     => "PT400",
                :packaging      => "empty",
                :description    => "X-Stream Aeroponic Propagator for up to 105 seedlings or cuttings.\n\nKit completes complete with tank, cover plate, vented humidity done, pump, sprinker delivery system, set of105 net pots & neoprene clone collars. \n\nTank size: 1155x630x270mm, 45.5'x25'x10",
                :filename       => "images/nutriculture/PT400 Xstream 105"
        )
                @product.sale_price =  83.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 324, 
                :supplier_id    => 4,
                :name           => "VITOPOD 1 UNHEATED 1 LAYER", 
                :weight         => 3251,
                :order_code     => "ZI100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/Vitopod Single Layer Single Length"
        )
                @product.sale_price =  29.51
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 325, 
                :supplier_id    => 4,
                :name           => "VITOPOD 1 HEATED 1 LAYER", 
                :weight         => 4771,
                :order_code     => "ZI101",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "0"
        )
                @product.sale_price =  74.31
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 326, 
                :supplier_id    => 4,
                :name           => "VITOPOD 1 UNHEATED 2 LAYERS", 
                :weight         => 4461,
                :order_code     => "ZI102",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/Vitopod Double Layer Single Length"
        )
                @product.sale_price =  43.72
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 327, 
                :supplier_id    => 4,
                :name           => "VITOPOD 1 HEATED 2 LAYERS", 
                :weight         => 5981,
                :order_code     => "ZI103",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "0"
        )
                @product.sale_price =  88.52
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 328, 
                :supplier_id    => 4,
                :name           => "VITOPOD 2 UNHEATED 1 LAYER", 
                :weight         => 5940,
                :order_code     => "ZI104",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/Vitopod Single Layer Double Length"
        )
                @product.sale_price =  43.71
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 329, 
                :supplier_id    => 4,
                :name           => "VITOPOD 2 HEATED 1 LAYER", 
                :weight         => 8810,
                :order_code     => "ZI105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  88.52
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 330, 
                :supplier_id    => 4,
                :name           => "VITOPOD 2 UNHEATED 2 LAYERS", 
                :weight         => 7798,
                :order_code     => "ZI106",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  62.28
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 331, 
                :supplier_id    => 4,
                :name           => "VITOPOD 2 HEATED 2 LAYERS", 
                :weight         => 10668,
                :order_code     => "ZI107",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  107.09
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 332, 
                :supplier_id    => 4,
                :name           => "VITOPOD 1 LID/LAYER COMPLETE", 
                :weight         => 2201,
                :order_code     => "ZI108",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  22.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 333, 
                :supplier_id    => 4,
                :name           => "VITOPOD 1 SINGLE LAYER ONLY", 
                :weight         => 1210,
                :order_code     => "ZI109",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  14.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 334, 
                :supplier_id    => 4,
                :name           => "VITOPOD 2 LID/LAYER COMPLETE", 
                :weight         => 3840,
                :order_code     => "ZI110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  36.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 335, 
                :supplier_id    => 4,
                :name           => "VITOPOD 2 SINGLE LAYER ONLY", 
                :weight         => 1858,
                :order_code     => "ZI111",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  18.58
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 336, 
                :supplier_id    => 4,
                :name           => "VITOPOD LID ONLY", 
                :weight         => 991,
                :order_code     => "ZI112",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  7.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 337, 
                :supplier_id    => 4,
                :name           => "PROPAGATOR LID - X-STREAM 105", 
                :weight         => 1700,
                :order_code     => "ZA100",
                :packaging      => "empty",
                :description    => "Large multi-purpose propagation lid that allows growers to create and maintain the optimum growing environment for young plants.\n\nIncludes three adjustable vents.\nSize:1070x570x220mm, 42'x22.5'x8.5'\nThis is the lid used in the X-Stream 105 propagator.",
                :filename       => "empty"
        )
                @product.sale_price =  20.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 338, 
                :supplier_id    => 4,
                :name           => "PROAGATOR LID - X-STREAM 36", 
                :weight         => 694,
                :order_code     => "ZA102",
                :packaging      => "empty",
                :description    => "Multi-purpose propagation lid that allows growers to create and maintain the optimum growing environment for young plants.\n\nIncludes two adjustable vents.\nSize:705x340x185mm, 28'x13.25'x7.25'\nThis is the lid used in the X-Stream 36 propagator.",
                :filename       => "empty"
        )
                @product.sale_price =  8.63
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 339, 
                :supplier_id    => 4,
                :name           => "PROPAGATOR LID - X-STREAM 12 & 20", 
                :weight         => 1000,
                :order_code     => "ZA103",
                :packaging      => "empty",
                :description    => "Multi-purpose propagation lid that allows growers to create and maintain the optimum growing environment for young plants.\n\nIncludes adjustable vent.\nSize:495x395x195mm, 19.5'x15.5'x7.5'\nThis is the lid used in the X-Stream 12 & 20 propagators.",
                :filename       => "empty"
        )
                @product.sale_price =  6.69
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 340, 
                :supplier_id    => 4,
                :name           => "MESH POTS FOR PROPAGATOR", 
                :weight         => 1,
                :order_code     => "PT135",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.04
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 341, 
                :supplier_id    => 4,
                :name           => "15L TANK (X-Stream Propagator 12 & 20)", 
                :weight         => 2000,
                :order_code     => "PT137",
                :packaging      => "empty",
                :description    => "590x490x300mm. 23'x19'x12'. Capacity: 15litres. Tank used in X-Stream 12 & 20 plant site aeroponic propagator.",
                :filename       => "images/nutriculture/48 Propagator Tank"
        )
                @product.sale_price =  7.81
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 342, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover (X-Stream 12 prop)", 
                :weight         => 350,
                :order_code     => "PT139",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 343, 
                :supplier_id    => 4,
                :name           => "12 PLANT DELIVERY SYSTEM", 
                :weight         => 100,
                :order_code     => "PT140",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 344, 
                :supplier_id    => 4,
                :name           => "NEOPRENE CLONE COLLAR", 
                :weight         => 4,
                :order_code     => "PT141",
                :packaging      => "empty",
                :description    => "Neoprene collars for bare rooting of cuttings in X-treme propagators",
                :filename       => "empty"
        )
                @product.sale_price =  0.23
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 345, 
                :supplier_id    => 4,
                :name           => "20 PLANT DELIVERY SYSTEM", 
                :weight         => 130,
                :order_code     => "PT202",
                :packaging      => "empty",
                :description    => "Replacement nutrient delivery system for the X-Stream 20 plant propagator. Delivery system comes complete with 'H' pipe, nossles and lift pipe that fits simply to the irrigation pump.",
                :filename       => "empty"
        )
                @product.sale_price =  2.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 346, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover (X-Stream 20 prop)", 
                :weight         => 120,
                :order_code     => "PT203",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 347, 
                :supplier_id    => 4,
                :name           => "PROPAGATOR SPRAY HEAD (BROWN)", 
                :weight         => 5,
                :order_code     => "e",
                :packaging      => "PT204",
                :description    => "Replacement propagator spray head for your X-treme propagator if they get lost or broken. A valuable replacement to have around.",
                :filename       => "empty"
        )
                @product.sale_price =  0.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 348, 
                :supplier_id    => 4,
                :name           => "36 PLANT DELIVERY SYSTEM", 
                :weight         => 62,
                :order_code     => "e",
                :packaging      => "PT302",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 349, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover (X-Stream 36 prop)", 
                :weight         => 124,
                :order_code     => "PT303",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.01
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 350, 
                :supplier_id    => 4,
                :name           => "105 PLANT DELIVERY SYSTEM", 
                :weight         => 234,
                :order_code     => "e",
                :packaging      => "PT402",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.12
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 351, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover (X-Stream 105 Prop)", 
                :weight         => 750,
                :order_code     => "PT403",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.18
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 352, 
                :supplier_id    => 4,
                :name           => "12 & 20 PLANT PROPAGATOR LID", 
                :weight         => 1000,
                :order_code     => "e",
                :packaging      => "PI138",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 353, 
                :supplier_id    => 4,
                :name           => "MJ1000 WITH STAND FOR X-Stream 20 Plant Propagator", 
                :weight         => 430,
                :order_code     => "PP111",
                :packaging      => "empty",
                :description    => "MJ1000 Pump configuration with sturdy triple sucker stand ready for easy attachment to Delivery System for X-Stream 20 plant propagator.",
                :filename       => "empty"
        )
                @product.sale_price =  18.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 354, 
                :supplier_id    => 4,
                :name           => "GT901 BLACK TOP-PLATE", 
                :weight         => 700,
                :order_code     => "GS001",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.62
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 355, 
                :supplier_id    => 4,
                :name           => "GT901 WHITE TOP-PLATE", 
                :weight         => 700,
                :order_code     => "GS002",
                :packaging      => "empty",
                :description    => "White top plate to fit GT901. \n\nApprox size: 1960x530x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and pos",
                :filename       => "empty"
        )
                @product.sale_price =  3.91
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 356, 
                :supplier_id    => 4,
                :name           => "GT100 TRAY", 
                :weight         => 5150,
                :order_code     => "GS100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  27.81
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 357, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover - Black (NFT GT205)", 
                :weight         => 350,
                :order_code     => "GS101",
                :packaging      => "empty",
                :description    => "Black top plate to fit GT205. \n\nApprox size: 560x345x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and posi",
                :filename       => "images/nutriculture/7 GroTank TopPlates B"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 358, 
                :supplier_id    => 4,
                :name           => "GT424 BLACK TOP-PLATE", 
                :weight         => 400,
                :order_code     => "GS102",
                :packaging      => "empty",
                :description    => "Black top plate to fit GT424. \n\nApprox size: 940x440x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and posi",
                :filename       => "empty"
        )
                @product.sale_price =  1.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 359, 
                :supplier_id    => 4,
                :name           => "GT604 BLACK TOP-PLATE", 
                :weight         => 500,
                :order_code     => "GS103",
                :packaging      => "empty",
                :description    => "Black top plate to fit GT604. \n\nApprox size: 1360x440x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and pos",
                :filename       => "empty"
        )
                @product.sale_price =  2.46
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 360, 
                :supplier_id    => 4,
                :name           => "GT205 WHITE TOP-PLATE", 
                :weight         => 300,
                :order_code     => "GS105",
                :packaging      => "empty",
                :description    => "White top plate to fit GT205. \n\nApprox size: 560x345x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and posi",
                :filename       => "empty"
        )
                @product.sale_price =  0.79
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 361, 
                :supplier_id    => 4,
                :name           => "GT424 WHITE TOP-PLATE", 
                :weight         => 400,
                :order_code     => "GS106",
                :packaging      => "empty",
                :description    => "White top plate to fit GT424. \n\nApprox size: 940x440x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and posi",
                :filename       => "empty"
        )
                @product.sale_price =  1.79
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 362, 
                :supplier_id    => 4,
                :name           => "GT604 WHITE TOP-PLATE", 
                :weight         => 500,
                :order_code     => "GS107",
                :packaging      => "empty",
                :description    => "Black top plate to fit GT604. \n\nApprox size: 1360x440x5mm.\n\nMade from 'correx' - like cardboard, but plastic. Washable, durable and easy to cut holes in. Simply cut square holes (for rockwool cubes) or round holes (for net pots) into the top plate and pos",
                :filename       => "empty"
        )
                @product.sale_price =  2.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 363, 
                :supplier_id    => 4,
                :name           => "GT205 DRIPPER CONVERSION PACK", 
                :weight         => 0,
                :order_code     => "GS109",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/4 GroTank Dripper Con"
        )
                @product.sale_price =  4.13
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 364, 
                :supplier_id    => 4,
                :name           => "GT205i SILVER TOP-PLATE", 
                :weight         => 0,
                :order_code     => "GS110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.87
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 365, 
                :supplier_id    => 4,
                :name           => "GT424 DRIPPER CONVERSION PACK", 
                :weight         => 0,
                :order_code     => "GS111",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 366, 
                :supplier_id    => 4,
                :name           => "GT604 DRIPPER CONVERSION PACK", 
                :weight         => 0,
                :order_code     => "GS112",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 367, 
                :supplier_id    => 4,
                :name           => "GT901 DRIPPER CONVERSION PACK", 
                :weight         => 0,
                :order_code     => "GS113",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.43
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 368, 
                :supplier_id    => 4,
                :name           => "DELIVERY TUBE FOR ALL NFT GTseries (except GT100)", 
                :weight         => 10,
                :order_code     => "GS119",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/8 GroTank Accessories B"
        )
                @product.sale_price =  0.77
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 369, 
                :supplier_id    => 4,
                :name           => "NFT EMPTYING TUBE", 
                :weight         => 50,
                :order_code     => "GS120",
                :packaging      => "empty",
                :description    => "Emptying tube - make emptying a nutrient tank easy. Simply connect a delivery tube to a water pump and 'pump' the tank until it is empty (or at desired level). \n\nEither use the pump in the grow tank, or easier still, get a pump to use specifically for emp",
                :filename       => "empty"
        )
                @product.sale_price =  0.91
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 370, 
                :supplier_id    => 4,
                :name           => "DELIVERY TUBE FOR NFT GT100", 
                :weight         => 100,
                :order_code     => "GS121",
                :packaging      => "empty",
                :description    => "The GT100 Delivery Tube features an additional irrigation pipe to ensure even watering and plant feeding across the extra wide channel - the widest single channel within the NFT systems.",
                :filename       => "empty"
        )
                @product.sale_price =  1.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 371, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover - Silver (NFT GT100)", 
                :weight         => 850,
                :order_code     => "GS125",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 372, 
                :supplier_id    => 4,
                :name           => "TRAY FOR GT205", 
                :weight         => 2000,
                :order_code     => "GS205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/6 GroTank Tanks B"
        )
                @product.sale_price =  6.66
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 373, 
                :supplier_id    => 4,
                :name           => "TRAY FOR GT424", 
                :weight         => 3000,
                :order_code     => "GS424",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  15.24
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 374, 
                :supplier_id    => 4,
                :name           => "TRAY FOR GT604", 
                :weight         => 2800,
                :order_code     => "GS604",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  19.89
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 375, 
                :supplier_id    => 4,
                :name           => "TRAY FOR GT901", 
                :weight         => 4000,
                :order_code     => "GS901",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  27.37
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 376, 
                :supplier_id    => 4,
                :name           => "Large Multi-Duct Stand", 
                :weight         => 1530,
                :order_code     => "MD912",
                :packaging      => "empty",
                :description    => "Used in conjunction with the Large Stand to give perfect support to the long length NFT Channels of the MD600 (6') & MD800 (8') Large Multi-Duct with twin channels.",
                :filename       => "empty"
        )
                @product.sale_price =  6.78
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 377, 
                :supplier_id    => 4,
                :name           => "LARGE STAND FOR LARGE MUILTIDUCT (one prong)", 
                :weight         => 1530,
                :order_code     => "MD913",
                :packaging      => "empty",
                :description    => "Used in conjunction with the Small Stand to give perfect support to the long length NFT Channels of the MD600 (6') & MD800 (8') Large Multi-Duct with twin channels.",
                :filename       => "empty"
        )
                @product.sale_price =  6.78
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 378, 
                :supplier_id    => 4,
                :name           => "SMALL STAND FOR MD100 (two prong)", 
                :weight         => 1530,
                :order_code     => "MD914",
                :packaging      => "empty",
                :description    => "Small stand (238mm) for MD100 3 Channel Multi-Duct NFT System. The lower end of the NFT tray rests on the 50litre reservoir (205mm high) and this stand supports the higher end of the NFT tray at the ideal gradient.",
                :filename       => "empty"
        )
                @product.sale_price =  6.78
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 379, 
                :supplier_id    => 4,
                :name           => "LARGE STAND FOR MD 200&300 (two prong)", 
                :weight         => 1530,
                :order_code     => "MD915",
                :packaging      => "empty",
                :description    => "Large stand (280mm) for MD200 & MD300 3 Channel Multi-Duct NFT System. The lower end of the NFT tray rests on the 123litre reservoir (240mm high) and this stand supports the higher end of the NFT tray at the ideal gradient.",
                :filename       => "empty"
        )
                @product.sale_price =  6.78
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 380, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover - White (NFT MD600 6'x3')", 
                :weight         => 900,
                :order_code     => "MD991",
                :packaging      => "empty",
                :description    => "Handy sheet material, often used as a cover plate in 'NFT' hydroponics. Fits 6ft NFT Large Multi-Duct Channels MD600 - as used in our systems MD601, MD602, MD603, MD604",
                :filename       => "empty"
        )
                @product.sale_price =  6.22
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 381, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover - Black (NFT MD600 6'X3')", 
                :weight         => 900,
                :order_code     => "MD992",
                :packaging      => "empty",
                :description    => "Handy sheet material, often used as a cover plate in 'NFT' hydroponics. Fits 6ft NFT Large Multi-Duct Channels MD600 - as used in our systems MD601, MD602, MD603, MD604",
                :filename       => "empty"
        )
                @product.sale_price =  5.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 382, 
                :supplier_id    => 4,
                :name           => "WHITE CORRIBOARD approx 8'x3' (fits MD800)", 
                :weight         => 1200,
                :order_code     => "MD993",
                :packaging      => "empty",
                :description    => "Handy sheet material, often used as a cover plate in 'NFT' hydroponics. Fits 6ft NFT Large Multi-Duct Channels MD800 - as used in our systems MD801, MD802, MD803, MD804",
                :filename       => "empty"
        )
                @product.sale_price =  8.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 383, 
                :supplier_id    => 4,
                :name           => "Correx Top Plate - Black (NFT MD800 8'x3')", 
                :weight         => 1200,
                :order_code     => "MD994",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  7.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 384, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover - White (NFT MD999 5'x3')", 
                :weight         => 800,
                :order_code     => "MD997",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 385, 
                :supplier_id    => 4,
                :name           => "Correx Top Cover - Black (NFT MD 5'x3')", 
                :weight         => 500,
                :order_code     => "MD998",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.31
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 386, 
                :supplier_id    => 4,
                :name           => "3-channel Multi-Duct NFT Plastic Tray - 1600x860x50mm (5'x3')", 
                :weight         => 6250,
                :order_code     => "MD999",
                :packaging      => "empty",
                :description    => "High quality, large moulded channel. Can be used in the standard Nutriculture Multi-Ducts or in DIY set-ups to suit your individual needs.",
                :filename       => "empty"
        )
                @product.sale_price =  24.27
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 387, 
                :supplier_id    => 4,
                :name           => "Spreader mat - 25ft roll", 
                :weight         => 250,
                :order_code     => "SM101",
                :packaging      => "empty",
                :description    => "Spreader mat breaks the surface tension of water to  distribute the nutrient solution evenly across the surface of a system. Very useful in NFT systems to ensure the ENTIRE sloping surface is watered and each plant fed (particularly important in early sta",
                :filename       => "http://www.hydrogarden.com/StockPics/spreader_matt.jpg"
        )
                @product.sale_price =  1.03
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 388, 
                :supplier_id    => 4,
                :name           => "Spreader mat - 50ft roll", 
                :weight         => 175,
                :order_code     => "SM102",
                :packaging      => "empty",
                :description    => "Spreader mat breaks the surface tension of water to  distribute the nutrient solution evenly across the surface of a system. Very useful in NFT systems to ensure the ENTIRE sloping surface is watered and each plant fed (particularly important in early sta",
                :filename       => "use generic spreader image"
        )
                @product.sale_price =  1.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 389, 
                :supplier_id    => 4,
                :name           => "Spreader mat - 100ft roll", 
                :weight         => 350,
                :order_code     => "SM103\n",
                :packaging      => "empty",
                :description    => "Spreader mat breaks the surface tension of water to  distribute the nutrient solution evenly across the surface of a system. Very useful in NFT systems to ensure the ENTIRE sloping surface is watered and each plant fed (particularly important in early sta",
                :filename       => "empty"
        )
                @product.sale_price =  3.39
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 390, 
                :supplier_id    => 4,
                :name           => "Spreader mat - 1000ft roll", 
                :weight         => 1200,
                :order_code     => "SM104",
                :packaging      => "empty",
                :description    => "Spreader mat breaks the surface tension of water to  distribute the nutrient solution evenly across the surface of a system. Very useful in NFT systems to ensure the ENTIRE sloping surface is watered and each plant fed (particularly important in early sta",
                :filename       => "empty\n"
        )
                @product.sale_price =  31.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 391, 
                :supplier_id    => 1,
                :name           => "Casters x 4", 
                :weight         => 725,
                :order_code     => "01-010-155",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 392, 
                :supplier_id    => 1,
                :name           => "SureGrow 3 Kit SG225 Complete", 
                :weight         => 20000,
                :order_code     => "01-050-110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  79.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 393, 
                :supplier_id    => 1,
                :name           => "HydroGarden Collection Trough", 
                :weight         => 500,
                :order_code     => "01-050-175",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  7.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 394, 
                :supplier_id    => 1,
                :name           => "Vermiculite 100l Sack V3 Medium Grade", 
                :weight         => 9000,
                :order_code     => "02-070-005",
                :packaging      => "empty",
                :description    => "Use on own or mix with Perlite to aid Aeration. This lightweight media is great for propagating and is used in pot culture where it is added to Coir or Soil Mixes to aid nutrient retention.  A standard product for many Hydroponic growers.",
                :filename       => "http://www.hydrogarden.com/StockPics/Vermiculite_100L.jpg"
        )
                @product.sale_price =  7.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 395, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lumatek 250w Electronic Ballast", 
                :weight         => 2700,
                :order_code     => "03-105-070",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  56.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 396, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lumatek 400w Electronic Ballast", 
                :weight         => 2800,
                :order_code     => "03-105-075",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  72.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 397, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lumatek 600w Electronic Ballast", 
                :weight         => 3750,
                :order_code     => "03-105-080",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  89.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 398, 
                :supplier_id    => 1,
                :name           => "PowerPlant SuperWing Reflector (No Cord)", 
                :weight         => 4085,
                :order_code     => "03-110-085",
                :packaging      => "empty",
                :description    => "Designed to offer the larger grower a reflector that offers optimum performance with its fixed dual parabolic reflector. Please order with IEC cord set when using with HID ballasts.",
                :filename       => "empty"
        )
                @product.sale_price =  28.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 399, 
                :supplier_id    => 1,
                :name           => "Small Heat Shield*", 
                :weight         => 140,
                :order_code     => "03-120-005",
                :packaging      => "empty",
                :description    => "Unique Patented product.  Originally designed for the Adjust-A-Wings but now fitted to many Reflectors.  Enables Reflector to be located closer to the plants maximising light but protecting them from the heat ! Amazing.",
                :filename       => "http://www.hydrogarden.com/StockPics/Heatshield.JPG"
        )
                @product.sale_price =  7.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 400, 
                :supplier_id    => 1,
                :name           => "Jack Chain 2mm Single x 10m Box - JSPG20000BP", 
                :weight         => 1000,
                :order_code     => "03-130-010",
                :packaging      => "empty",
                :description    => "A 10m box of Jack Chain to hang reflectors or Carbon Filters as required.",
                :filename       => "http://www.hydrogarden.com/StockPics/JackChain.JPG"
        )
                @product.sale_price =  4.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 401, 
                :supplier_id    => 1,
                :name           => "PowerPlant Sun Mate Grow CFL Reflector with 150w Cool Lamp", 
                :weight         => 4500,
                :order_code     => "03-140-300",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  37.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 402, 
                :supplier_id    => 1,
                :name           => "PowerPlant Sun Mate Grow CFL Reflector with 250w Cool Lamp", 
                :weight         => 4500,
                :order_code     => "03-140-305",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  41.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 403, 
                :supplier_id    => 1,
                :name           => "PowerPlant Sun Mate Grow CFL Reflector", 
                :weight         => 3500,
                :order_code     => "03-140-310",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  23.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 404, 
                :supplier_id    => 1,
                :name           => "PowerPlant Sun Mate Grow CFL Reflector with 150w Warm Lamp", 
                :weight         => 4500,
                :order_code     => "03-140-315",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  37.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 405, 
                :supplier_id    => 1,
                :name           => "PowerPlant Sun Mate Grow CFL Reflector with 250w Warm Lamp", 
                :weight         => 4500,
                :order_code     => "03-140-320",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  41.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 406, 
                :supplier_id    => 1,
                :name           => "PowerPlant LiteCheck Meter", 
                :weight         => 100,
                :order_code     => "03-145-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  33.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 407, 
                :supplier_id    => 1,
                :name           => "Vitalink Grow(Soft Water) 1 litre Set A + B", 
                :weight         => 273307,
                :order_code     => "05-200-005",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkGrow_SW1L.jpg"
        )
                @product.sale_price =  4.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 408, 
                :supplier_id    => 1,
                :name           => "Vitalink Grow(Soft Water) 5 litre Set A + B", 
                :weight         => 1249905,
                :order_code     => "05-200-010",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkGrow_SW5L.jpg"
        )
                @product.sale_price =  15.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 409, 
                :supplier_id    => 1,
                :name           => "VitaLink Max Grow Soft Water 10L Set (A + B)Available Sept 09 - PRICES TBC", 
                :weight         => 238857,
                :order_code     => "05-200-011",
                :packaging      => "empty",
                :description    => "Vitalink Max Grow is a two-part nutrient (A & B) containing all the essential nutrients for aggressive vegetative growth. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 410, 
                :supplier_id    => 1,
                :name           => "Vitalink Grow (Soft Water) 20 litre Set A + B", 
                :weight         => 477302,
                :order_code     => "05-200-012",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkGrow_SW20L.jpg"
        )
                @product.sale_price =  50.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 411, 
                :supplier_id    => 1,
                :name           => "Vitalink Bloom (Soft Water) 1 litre Set A + B", 
                :weight         => 277427,
                :order_code     => "05-200-015",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkBloom_SW1L.jpg"
        )
                @product.sale_price =  4.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 412, 
                :supplier_id    => 1,
                :name           => "Vitalink Bloom (Soft Water) 5 litre Set A + B", 
                :weight         => 1270505,
                :order_code     => "05-200-020",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkBloom_SW5L.jpg"
        )
                @product.sale_price =  15.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 413, 
                :supplier_id    => 1,
                :name           => "VitaLink Max Bloom Soft Water 10L Set (A + B)Available Sept 09 PRICES TBC", 
                :weight         => 242977,
                :order_code     => "05-200-021",
                :packaging      => "empty",
                :description    => "Vitalink Max Bloom is a two-part nutrient (A & B) containing all the essential nutrients for abundant flowering or fruiting. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 414, 
                :supplier_id    => 1,
                :name           => "Vitalink Bloom (Soft Water) 20 litre Set A + B", 
                :weight         => 485542,
                :order_code     => "05-200-022",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  50.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 415, 
                :supplier_id    => 1,
                :name           => "Vitalink Grow (Hard Water)1 litre Set A + B", 
                :weight         => 275367,
                :order_code     => "05-200-025",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkGrow_HW1L.jpg"
        )
                @product.sale_price =  4.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 416, 
                :supplier_id    => 1,
                :name           => "Vitalink Grow (Hard Water) 5 litre Set A + B", 
                :weight         => 1260205,
                :order_code     => "05-200-030",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkGrow_HW5L.jpg"
        )
                @product.sale_price =  15.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 417, 
                :supplier_id    => 1,
                :name           => "VitaLink Max Grow Hard Water 10L Set (A + B)Available Sept 09 - PRICES TBC", 
                :weight         => 240917,
                :order_code     => "05-200-031",
                :packaging      => "empty",
                :description    => "Vitalink Max Grow is a two-part nutrient (A & B) containing all the essential nutrients for aggressive vegetative growth. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 418, 
                :supplier_id    => 1,
                :name           => "Vitalink Grow (Hard Water) 20 litre Set A + B", 
                :weight         => 481422,
                :order_code     => "05-200-032",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  50.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 419, 
                :supplier_id    => 1,
                :name           => "Vitalink Bloom (Hard Water) 1 litre Set A + B", 
                :weight         => 275367,
                :order_code     => "05-200-035",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkBloom_HW1L.jpg"
        )
                @product.sale_price =  4.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 420, 
                :supplier_id    => 1,
                :name           => "Vitalink Bloom (Hard Water) 5 litre Set A + B", 
                :weight         => 1260205,
                :order_code     => "05-200-040",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitalinkBloom_HW5L.jpg"
        )
                @product.sale_price =  15.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 421, 
                :supplier_id    => 1,
                :name           => "VitaLink Max Bloom Hard Water 10L Set (A + B)Available Sept 09 - PRICES TBC", 
                :weight         => 240917,
                :order_code     => "05-200-041",
                :packaging      => "empty",
                :description    => "Vitalink Max Bloom is a two-part nutrient (A & B) containing all the essential nutrients for abundant flowering or fruiting. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 422, 
                :supplier_id    => 1,
                :name           => "Vitalink Bloom (Hard Water) 20 litre Set A + B", 
                :weight         => 481422,
                :order_code     => "05-200-042",
                :packaging      => "empty",
                :description    => "A clean nutrient less likely to block drippers as well as promoting exceptional growth.  Vitalink promotes improved plant health, increased yields and more.  Use Vitalink in all system types as well as soil.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  50.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 423, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Grow Soft Water 1L", 
                :weight         => 136314,
                :order_code     => "05-200-100",
                :packaging      => "empty",
                :description    => "Vitalink Easygrow is a one-part nutrient containing all the essential nutrients for aggressive vegetative growth. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 424, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Grow Soft Water 5L", 
                :weight         => 623701,
                :order_code     => "05-200-105",
                :packaging      => "empty",
                :description    => "Vitalink Easygrow is a one-part nutrient containing all the essential nutrients for aggressive vegetative growth. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 425, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Bloom Soft Water 1L", 
                :weight         => 144039,
                :order_code     => "05-200-115",
                :packaging      => "empty",
                :description    => "Vitalink Easybloom is a one-part nutrient containing all the essential nutrients for abundant flowering or fruiting. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 426, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Bloom Soft Water 5L", 
                :weight         => 662326,
                :order_code     => "05-200-120",
                :packaging      => "empty",
                :description    => "Vitalink Easybloom is a one-part nutrient containing all the essential nutrients for abundant flowering or fruiting. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 427, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Grow Hard Water 1L", 
                :weight         => 138889,
                :order_code     => "05-200-130",
                :packaging      => "empty",
                :description    => "Vitalink Easygrow is a one-part nutrient containing all the essential nutrients for aggressive vegetative growth. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 428, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Grow Hard Water 5L", 
                :weight         => 636576,
                :order_code     => "05-200-135",
                :packaging      => "empty",
                :description    => "Vitalink Easygrow is a one-part nutrient containing all the essential nutrients for aggressive vegetative growth. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 429, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Bloom Hard Water 1L", 
                :weight         => 134769,
                :order_code     => "05-200-145",
                :packaging      => "empty",
                :description    => "Vitalink Easybloom is a one-part nutrient containing all the essential nutrients for abundant flowering or fruiting. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 430, 
                :supplier_id    => 1,
                :name           => "VitaLink Easy Bloom Hard Water 5L", 
                :weight         => 615976,
                :order_code     => "05-200-150",
                :packaging      => "empty",
                :description    => "Vitalink Easybloom is a one-part nutrient containing all the essential nutrients for abundant flowering or fruiting. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 431, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Grow Soft Water 1L", 
                :weight         => 134254,
                :order_code     => "05-200-200",
                :packaging      => "empty",
                :description    => "Vitalink Coir Grow is an easy to use one-part nutrient specifically tailored to growing in Coco. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 432, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Grow Soft Water 5L", 
                :weight         => 613401,
                :order_code     => "05-200-205",
                :packaging      => "empty",
                :description    => "Vitalink Coir Grow is an easy to use one-part nutrient specifically tailored to growing in Coco. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 433, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Bloom Soft Water 1L", 
                :weight         => 134254,
                :order_code     => "05-200-215",
                :packaging      => "empty",
                :description    => "Vitalink Coir Bloom is an easy to use one-part nutrient specifically tailored to growing in Coco. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 434, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Bloom Soft Water 5L", 
                :weight         => 613401,
                :order_code     => "05-200-220",
                :packaging      => "empty",
                :description    => "Vitalink Coir Bloom is an easy to use one-part nutrient specifically tailored to growing in Coco. Soft water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 435, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Grow Hard Water 1L", 
                :weight         => 131679,
                :order_code     => "05-200-230",
                :packaging      => "empty",
                :description    => "Vitalink Coir Grow is an easy to use one-part nutrient specifically tailored to growing in Coco. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 436, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Grow Hard Water 5L", 
                :weight         => 600526,
                :order_code     => "05-200-235",
                :packaging      => "empty",
                :description    => "Vitalink Coir Grow is an easy to use one-part nutrient specifically tailored to growing in Coco. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 437, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Bloom Hard Water 1L", 
                :weight         => 137344,
                :order_code     => "05-200-245",
                :packaging      => "empty",
                :description    => "Vitalink Coir Bloom is an easy to use one-part nutrient specifically tailored to growing in Coco. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 438, 
                :supplier_id    => 1,
                :name           => "VitaLink Coir Bloom Hard Water 5L", 
                :weight         => 628851,
                :order_code     => "05-200-250",
                :packaging      => "empty",
                :description    => "Vitalink Coir Bloom is an easy to use one-part nutrient specifically tailored to growing in Coco. Hard water formula.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 439, 
                :supplier_id    => 1,
                :name           => "VitaLink Earth Grow 1L", 
                :weight         => 137344,
                :order_code     => "05-200-300",
                :packaging      => "empty",
                :description    => "Vitalink Earth Grow is a one-part complete nutrient formulated specifically for aggressive vegetative growth. This water soluble nutrient is incredibly easy to use and is ideally suited to growing plants in soil.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 440, 
                :supplier_id    => 1,
                :name           => "VitaLink Earth Grow 5L", 
                :weight         => 628851,
                :order_code     => "05-200-305",
                :packaging      => "empty",
                :description    => "Vitalink Earth Grow is a one-part complete nutrient formulated specifically for aggressive vegetative growth. This water soluble nutrient is incredibly easy to use and is ideally suited to growing plants in soil.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 441, 
                :supplier_id    => 1,
                :name           => "VitaLink Earth Bloom 1L", 
                :weight         => 134769,
                :order_code     => "05-200-315",
                :packaging      => "empty",
                :description    => "Vitalink Earth Bloom is a one-part complete nutrient formulated specifically for abundant flowering and fruiting. This water soluble nutrient is incredibly easy to use and is ideally suited for growing plants in soil.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 442, 
                :supplier_id    => 1,
                :name           => "VitaLink Earth Bloom 5L", 
                :weight         => 615976,
                :order_code     => "05-200-320",
                :packaging      => "empty",
                :description    => "Vitalink Earth Bloom is a one-part complete nutrient formulated specifically for abundant flowering and fruiting. This water soluble nutrient is incredibly easy to use and is ideally suited for growing plants in soil.",
                :filename       => "empty"
        )
                @product.sale_price =  10.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 443, 
                :supplier_id    => 1,
                :name           => "VitaLink Plantstart 250ml", 
                :weight         => 46428,
                :order_code     => "05-200-405",
                :packaging      => "empty",
                :description    => "Formulated as a starter nutrient for seeds and cuttings. A one-part nutrient which reduces stress, significantly increasing transplant success during this crucial stage.",
                :filename       => "empty"
        )
                @product.sale_price =  1.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 444, 
                :supplier_id    => 1,
                :name           => "VitaLink Plantstart 1L", 
                :weight         => 137344,
                :order_code     => "05-200-410",
                :packaging      => "empty",
                :description    => "Formulated as a starter nutrient for seeds and cuttings. A one-part nutrient which reduces stress, significantly increasing transplant success during this crucial stage.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 445, 
                :supplier_id    => 1,
                :name           => "Vitalink Bioplus 250ml", 
                :weight         => 4359,
                :order_code     => "06-250-005",
                :packaging      => "empty",
                :description    => "Containing a range of growth promoting components including bacteria, vitamins and more.  Recommended for use with Vitalink Nutrients but works great with all brands.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitaLink_BioPlus_250ml.jpg"
        )
                @product.sale_price =  8.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 446, 
                :supplier_id    => 1,
                :name           => "VitaLink BioPlus 1L", 
                :weight         => 126014,
                :order_code     => "06-250-012",
                :packaging      => "empty",
                :description    => "Vitalink Bioplus contains a mixture of natural plant hormones, vitamins, beneficial bacteria and fungi that will help you get the best from your plants.",
                :filename       => "empty"
        )
                @product.sale_price =  20.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 447, 
                :supplier_id    => 1,
                :name           => "VitaLink BioPac Liquid 250ml", 
                :weight         => 4488,
                :order_code     => "06-250-020",
                :packaging      => "empty",
                :description    => "Vitalink Biopac enriches the water or growing media with beneficial microbes to establish a population of bacteria that help fertility by providing long-term and continuous cycling of carbon-based and mineral nutrients.",
                :filename       => "empty"
        )
                @product.sale_price =  6.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 448, 
                :supplier_id    => 1,
                :name           => "VitaLink BioPac Liquid 1L", 
                :weight         => 131164,
                :order_code     => "06-250-025",
                :packaging      => "empty",
                :description    => "Vitalink Biopac enriches the water or growing media with beneficial microbes to establish a population of bacteria that help fertility by providing long-term and continuous cycling of carbon-based and mineral nutrients.",
                :filename       => "empty"
        )
                @product.sale_price =  15.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 449, 
                :supplier_id    => 1,
                :name           => "VitaLink Buddy 250ml", 
                :weight         => 46686,
                :order_code     => "06-250-045",
                :packaging      => "empty",
                :description    => "Vitalink Buddy is a specific flowering booster which stimulates bud and fruit growth, through its richness in potassium and phosphorus.",
                :filename       => "empty"
        )
                @product.sale_price =  2.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 450, 
                :supplier_id    => 1,
                :name           => "Vitalink Buddy 1 litre", 
                :weight         => 138374,
                :order_code     => "06-250-055",
                :packaging      => "empty",
                :description    => "A powerful flower and bloom stimulant containing high concentrations of phosphites and phosphates in the form of a concentrated liquid.  You want bigger flowers ?  Then call on your best Buddy !  Works great with all nutrient brands.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitaLink_buddy1L.jpg"
        )
                @product.sale_price =  4.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 451, 
                :supplier_id    => 1,
                :name           => "Vitalink Buddy 5 litre", 
                :weight         => 634001,
                :order_code     => "06-250-060",
                :packaging      => "empty",
                :description    => "A powerful flower and bloom stimulant containing high concentrations of phosphites and phosphates in the form of a concentrated liquid.  You want bigger flowers ?  Then call on your best Buddy !  Works great with all nutrient brands.",
                :filename       => "http://www.hydrogarden.com/StockPics/VitaLink_buddy5L.jpg"
        )
                @product.sale_price =  17.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 452, 
                :supplier_id    => 1,
                :name           => "VitaLink Foliar Feed 250ml", 
                :weight         => 44106,
                :order_code     => "06-250-070",
                :packaging      => "empty",
                :description    => "Contains a unique range of micro and macro nutrients which are easily absorbed through the leaves of the plant.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 453, 
                :supplier_id    => 1,
                :name           => "Vitalink Foliar Feed 1 litre", 
                :weight         => 128074,
                :order_code     => "06-250-080",
                :packaging      => "empty",
                :description    => "Concentrated Foliar Feed is a great way to get additional nutrition to your plants quickly. Foliar sprays have long been used by commercial growers to boost production. Now you can to! Simply dilute with water and spray. Works great with all nutrient",
                :filename       => "http://www.hydrogarden.com/StockPics/Vitalink_FoliarFeed.JPG"
        )
                @product.sale_price =  10.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 454, 
                :supplier_id    => 1,
                :name           => "VitaLink Fulvic 250ml", 
                :weight         => 4359,
                :order_code     => "06-250-120",
                :packaging      => "empty",
                :description    => "A versatile plant stimulant which can be used on all plants from the seedling stage through to maturity. Increasing the plants nutrient uptake efficiency and reducing stress.",
                :filename       => "empty"
        )
                @product.sale_price =  3.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 455, 
                :supplier_id    => 1,
                :name           => "VitaLink Fulvic 1L", 
                :weight         => 126014,
                :order_code     => "06-250-125",
                :packaging      => "empty",
                :description    => "A versatile plant stimulant which can be used on all plants from the seedling stage through to maturity. Increasing the plants nutrient uptake efficiency and reducing stress.",
                :filename       => "empty"
        )
                @product.sale_price =  10.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 456, 
                :supplier_id    => 1,
                :name           => "VitaLink Flush 250ml", 
                :weight         => 4359,
                :order_code     => "06-250-150",
                :packaging      => "empty",
                :description    => "Use Vitalink flush in the final week of plant growth to ensure that all nutrients and residue are 'flushed' from the plant. Vitalink Flush can be used in soil or hydroponic gardens.",
                :filename       => "empty"
        )
                @product.sale_price =  1.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 457, 
                :supplier_id    => 1,
                :name           => "VitaLink Flush 1L", 
                :weight         => 126014,
                :order_code     => "06-250-155",
                :packaging      => "empty",
                :description    => "Use Vitalink flush in the final week of plant growth to ensure that all nutrients and residue are 'flushed' from the plant. Vitalink Flush can be used in soil or hydroponic gardens.",
                :filename       => "empty"
        )
                @product.sale_price =  4.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 458, 
                :supplier_id    => 1,
                :name           => "Superthrive 0.5 (half) oz (15 ml)", 
                :weight         => 30,
                :order_code     => "06-260-005",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/superthrive0.5oz.jpg"
        )
                @product.sale_price =  2.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 459, 
                :supplier_id    => 1,
                :name           => "Superthrive 1oz (30 ml)", 
                :weight         => 50,
                :order_code     => "06-260-010",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/superthrive1oz.jpg"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 460, 
                :supplier_id    => 1,
                :name           => "Superthrive 2oz (60ml)", 
                :weight         => 90,
                :order_code     => "06-260-015",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/superthrive2oz.jpg"
        )
                @product.sale_price =  4.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 461, 
                :supplier_id    => 1,
                :name           => "Superthrive 4oz (120ml)", 
                :weight         => 160,
                :order_code     => "06-260-020",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/superthrive4oz.jpg"
        )
                @product.sale_price =  6.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 462, 
                :supplier_id    => 1,
                :name           => "Superthrive 1 Pint (480ml)", 
                :weight         => 590,
                :order_code     => "06-260-025",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/superthrive1pint.jpg"
        )
                @product.sale_price =  21.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 463, 
                :supplier_id    => 1,
                :name           => "Superthrive Quart (960ml)", 
                :weight         => 1100,
                :order_code     => "06-260-030",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  40.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 464, 
                :supplier_id    => 1,
                :name           => "Superthrive Gallon", 
                :weight         => 4420,
                :order_code     => "06-260-035",
                :packaging      => "empty",
                :description    => "For super healthy growth and as a plant pick me up and stress reliever, Superthrive is the product.  The top selling vitamin and hormone liquid concentrate.  Ideal for use on house plants, vegetables, trees and flowers.  A little goes a long way !",
                :filename       => "http://www.hydrogarden.com/StockPics/superthrive_Gallon.jpg"
        )
                @product.sale_price =  113.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 465, 
                :supplier_id    => 1,
                :name           => "DO NOT USE", 
                :weight         => 3000,
                :order_code     => "08-350-005",
                :packaging      => "empty",
                :description    => "Our high quality carbon filters are the best available.  Activated carbon absorb unwanted smells as the air is passed through them.  Attach to a Ruck Fan for best results.  We can refill them when the Filter needs it, usually after 9 to 12 months.",
                :filename       => "http://www.hydrogarden.com/StockPics/Carbonfilter_160.JPG"
        )
                @product.sale_price =  20.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 466, 
                :supplier_id    => 1,
                :name           => "pH Down 250ml 81%", 
                :weight         => 60564,
                :order_code     => "09-420-055",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-420-055_pHDown_250ml.JPG"
        )
                @product.sale_price =  1.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 467, 
                :supplier_id    => 1,
                :name           => "pH Down 1 litre 81%", 
                :weight         => 191414,
                :order_code     => "09-420-060",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-420-060_pHDown_1L.JPG"
        )
                @product.sale_price =  3.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 468, 
                :supplier_id    => 1,
                :name           => "pH Down 5 litre 81%", 
                :weight         => 890747,
                :order_code     => "09-420-065",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-420-065_pHDown_5L.JPG"
        )
                @product.sale_price =  14.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 469, 
                :supplier_id    => 1,
                :name           => "pH Up 250ml 50%", 
                :weight         => 56364,
                :order_code     => "09-420-070",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-420-070_pHUp_250ml.JPG"
        )
                @product.sale_price =  0.99
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 470, 
                :supplier_id    => 1,
                :name           => "RO Unit 4 Stage Professional - 190L per day", 
                :weight         => 7300,
                :order_code     => "09-455-010",
                :packaging      => "empty",
                :description    => "Reverse osmosis is a highly efficient way of purifying water.\nIf you want to remove the wide range of problem contaminants from your drinking water - like pesticides, bacteria, heavy metals, fluoride and other pollutants - reverse osmosis is your easiest",
                :filename       => "empty"
        )
                @product.sale_price =  75.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 471, 
                :supplier_id    => 1,
                :name           => "Clay pebbles 8-16mm 5L", 
                :weight         => 2200,
                :order_code     => "02-050-005",
                :packaging      => "empty",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "http://www.hydrogarden.com/StockPics/clay.jpg"
        )
                @product.sale_price =  1.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 472, 
                :supplier_id    => 1,
                :name           => "Clay pebbles 8-16mm 10L", 
                :weight         => 4250,
                :order_code     => "02-050-010",
                :packaging      => "empty",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "http://www.hydrogarden.com/StockPics/clay_pebbles10L.JPG"
        )
                @product.sale_price =  2.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 473, 
                :supplier_id    => 1,
                :name           => "Clay Pebbles 8-16mm 50L", 
                :weight         => 21500,
                :order_code     => "02-050-015",
                :packaging      => "empty",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "http://www.hydrogarden.com/StockPics/clay_pebbles50L.JPG"
        )
                @product.sale_price =  6.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 474, 
                :supplier_id    => 1,
                :name           => "Clay Pebbles 4-8mm 50l", 
                :weight         => 25400,
                :order_code     => "02-050-030",
                :packaging      => "empty",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "http://www.hydrogarden.com/StockPics/clay_pebbles50L.JPG"
        )
                @product.sale_price =  6.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 475, 
                :supplier_id    => 1,
                :name           => "Canna AquaClay 45L bag", 
                :weight         => 16000,
                :order_code     => "02-050-035",
                :packaging      => "empty",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 476, 
                :supplier_id    => 4,
                :name           => "Atami Clay Pebbles 45L bag", 
                :weight         => 16000,
                :order_code     => "BI220",
                :packaging      => "empty",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "empty"
        )
                @product.sale_price =  6.96
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 477, 
                :supplier_id    => 4,
                :name           => "Atami Clay Pebbles 45L bag (x50)", 
                :weight         => 800000,
                :order_code     => "BI222",
                :packaging      => "free delivery",
                :description    => "This inert, reusable media is lightweight and pH neutral.  Use in flood and drain or drip feed systems or for topping off soil borne plants in pots.  Can also mix with soil to improve aeration and drainage.  Sold all over the world !",
                :filename       => "empty"
        )
                @product.sale_price =  336.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 478, 
                :supplier_id    => 1,
                :name           => "Canna Coco Coir NATURAL - 50L bag", 
                :weight         => 11000,
                :order_code     => "02-055-002",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 479, 
                :supplier_id    => 1,
                :name           => "Canna Coco Peat 50 litre in Sack", 
                :weight         => 16000,
                :order_code     => "02-055-005",
                :packaging      => "empty",
                :description    => "High quality, cleaned and pre-treated Coco Coir for the Hydroponic market and beyond.  Ideal for pot culture or to mix with Hydroton Clay in drip feed systems.",
                :filename       => "http://www.hydrogarden.com/StockPics/Cannacoco_peat50L.JPG"
        )
                @product.sale_price =  6.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 480, 
                :supplier_id    => 1,
                :name           => "BioBizz Coco Mix 50 L", 
                :weight         => 17400,
                :order_code     => "02-055-025",
                :packaging      => "empty",
                :description    => "Coco-Mix is an organic substrate that can be used in combination with specialist coco nutrients such as Canna Coco.",
                :filename       => "http://www.hydrogarden.com/StockPics/02-055-025_BioBizz_CocoMix50L.jpg"
        )
                @product.sale_price =  5.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 481, 
                :supplier_id    => 1,
                :name           => "Jiffy 7.5cm (3') x 6.5cm Coco-Block (Box of 144)", 
                :weight         => 6100,
                :order_code     => "02-055-100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 482, 
                :supplier_id    => 1,
                :name           => "Jiffy 10cm (4') x 8.5cm Coco-Block (Box of 70)", 
                :weight         => 6100,
                :order_code     => "02-055-105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 483, 
                :supplier_id    => 1,
                :name           => "Jiffy-7C 30mm CoCo Coir Plug (Box of 1155)", 
                :weight         => 6100,
                :order_code     => "12-580-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  39.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 484, 
                :supplier_id    => 1,
                :name           => "Grodan 1m Expert Slab (each)", 
                :weight         => 600,
                :order_code     => "02-060-220",
                :packaging      => "empty",
                :description    => "Quality rockwool slab, 1metre long. Used exclusively with drip irrigation systems - typically used by placing a rooted plant in a 3' or 4' rockwool cube on a hole cut in the top of the slabs plastic cover... then staked with a dripper! \n\nExpert slabs are",
                :filename       => "http://www.hydrogarden.com/StockPics/Grodan_ExpertSlab.JPG"
        )
                @product.sale_price =  1.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 485, 
                :supplier_id    => 1,
                :name           => "Cultilene 1m MaXXima Slab (each)", 
                :weight         => 1300,
                :order_code     => "02-060-307",
                :packaging      => "empty",
                :description    => "Ideal for use in vertical growing systems, for example the Eco System.",
                :filename       => "empty"
        )
                @product.sale_price =  1.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 486, 
                :supplier_id    => 1,
                :name           => "Cultilene Round (36mm) Propagator Plugs in a Tray", 
                :weight         => 7000,
                :order_code     => "02-060-340",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  65.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 487, 
                :supplier_id    => 1,
                :name           => "Cultilene 10mm Mini Cubes 100L Bag", 
                :weight         => 10000,
                :order_code     => "02-060-345",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  14.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 488, 
                :supplier_id    => 1,
                :name           => "Cultilene Mapito 80L Bag", 
                :weight         => 10000,
                :order_code     => "02-060-350",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 489, 
                :supplier_id    => 4,
                :name           => "GRODAN GROWCUBES 90L BAG", 
                :weight         => 4500,
                :order_code     => "GI103",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  15.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 490, 
                :supplier_id    => 4,
                :name           => "Grodan 1.2m Master Slab (pack of 12)", 
                :weight         => 7000,
                :order_code     => "GI122",
                :packaging      => "empty",
                :description    => "The premier growing slab, 1.2m long, used with drip irrigation systems. Unique twin layer structure slab with a firmer top layer for even distribution of moisture across the depth of the slab.",
                :filename       => "images/nutriculture/86 Master Slabs"
        )
                @product.sale_price =  23.86
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 491, 
                :supplier_id    => 4,
                :name           => "GRODAN GROWCUBES 20L BAG", 
                :weight         => 1700,
                :order_code     => "GI200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.43
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 492, 
                :supplier_id    => 4,
                :name           => "GRODAN SBS150 Small Cube 25/150 Box 6/15 18 Trays", 
                :weight         => 7500,
                :order_code     => "GI253",
                :packaging      => "empty",
                :description    => "Used for propagating, these 25mm square cubes are Grodan's smallest starter cube.\n\nSupplied as 150 cubes per tray, 18 trays in a box (2700 cubes).",
                :filename       => "http://www.hydrogarden.com/StockPics/Grodan_SBScube.JPG"
        )
                @product.sale_price =  54.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 493, 
                :supplier_id    => 4,
                :name           => "GRODAN SBS77 Large Cube 36/77 Box 6/15 18 Trays", 
                :weight         => 7650,
                :order_code     => "GI363",
                :packaging      => "empty",
                :description    => "Used for propagating, these 36mm square cubes are the most popular size rockwool starter cube.\n\nSupplied as 77 cubes per tray, 18 trays per box. (1386 cubes).",
                :filename       => "http://www.hydrogarden.com/StockPics/Grodan_SBScube.JPG"
        )
                @product.sale_price =  54.08
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 494, 
                :supplier_id    => 4,
                :name           => "GRODAN 75mm (3') SMALL HOLE 27/35   ", 
                :weight         => 11500,
                :order_code     => "GI428",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/78 3 inch small hole"
        )
                @product.sale_price =  43.13
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 495, 
                :supplier_id    => 4,
                :name           => "GRODAN 100mm (4') LARGE HOLE 40/35", 
                :weight         => 10500,
                :order_code     => "GI655",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  39.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 496, 
                :supplier_id    => 4,
                :name           => "GRODAN 100mm (4') SMALL HOLE 27/35", 
                :weight         => 11000,
                :order_code     => "GI657",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/81 4 inch Delta Small Hole"
        )
                @product.sale_price =  39.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 497, 
                :supplier_id    => 4,
                :name           => "Grodan Hugo DM32G 150mm 40/40 6' Cube with Lge Hole (Box)", 
                :weight         => 17000,
                :order_code     => "GI666",
                :packaging      => "empty",
                :description    => "Used for drip feed, NFT, and even Flood and Drain.  Will take SBS and AO cubes once suitably rooted.  Can be place on top of rockwool slabs for larger drip feed systems.",
                :filename       => "http://www.hydrogarden.com/StockPics/Grodan_Hugo.JPG"
        )
                @product.sale_price =  44.81
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 498, 
                :supplier_id    => 1,
                :name           => "Perlite 100l Sack P45 S/Coarse Grade", 
                :weight         => 9000,
                :order_code     => "02-065-005",
                :packaging      => "empty",
                :description    => "Use on own or mix with Vermiculite to retain more nutrient.  This lightweight media is great for pot culture and can be added to Coir or Soil Mixes to aid Aeration.  A standard product for many Hydroponic growers.",
                :filename       => "http://www.hydrogarden.com/StockPics/Perlite_100L.jpg"
        )
                @product.sale_price =  7.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 499, 
                :supplier_id    => 1,
                :name           => "Canna BioTerra Plus Soil Mix - 50L bag", 
                :weight         => 11500,
                :order_code     => "02-075-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 500, 
                :supplier_id    => 1,
                :name           => "Canna Terra Seed Mix 25L", 
                :weight         => 8400,
                :order_code     => "02-075-040",
                :packaging      => "empty",
                :description    => "This seed and cutting media is ideal for a base to grow from seed or as a cutting media once rooting has been established.  Sow seeds straight into this seed mix and watch them grow !",
                :filename       => "http://www.hydrogarden.com/StockPics/02-075-040_Canna_TerraSeedMix.jpg"
        )
                @product.sale_price =  4.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 501, 
                :supplier_id    => 1,
                :name           => "Canna Professional Soil Mix 50L", 
                :weight         => 17250,
                :order_code     => "02-075-050",
                :packaging      => "empty",
                :description    => "Contains a range of peats and perlite.  Is pH neutral and made to the high Dutch RHP quality mark.  Made using first class organic raw material and is free from viruses and soil diseases.",
                :filename       => "http://www.hydrogarden.com/StockPics/CannaProfessional_SoilMix.jpg"
        )
                @product.sale_price =  4.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 502, 
                :supplier_id    => 1,
                :name           => "Canna Professional Plus Soil Mix 50L", 
                :weight         => 12700,
                :order_code     => "02-075-075",
                :packaging      => "empty",
                :description    => "Contains a range of peats and perlite as well as trace elements and various chelates.  This pH neutral media contains sufficient feed for the first growing week.  Made using first class organic raw material and is free from viruses and soil diseases.",
                :filename       => "http://www.hydrogarden.com/StockPics/02-075-075_Canna_ProfessionalSoil.jpg"
        )
                @product.sale_price =  7.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 503, 
                :supplier_id    => 1,
                :name           => "BioBizz Light-Mix Potting Soil 50 L", 
                :weight         => 15100,
                :order_code     => "02-075-100",
                :packaging      => "empty",
                :description    => "Light-Mix is the ideal potting soil for the oganic gardener. Slightly fertilised it ensures a fast development of roots and vigorous new growth.",
                :filename       => "http://www.hydrogarden.com/StockPics/02-075-100_BioBizz_LightMix_Soil50L.jpg"
        )
                @product.sale_price =  5.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 504, 
                :supplier_id    => 1,
                :name           => "BioBizz All-Mix Potting Soil 50 L", 
                :weight         => 14700,
                :order_code     => "02-075-110",
                :packaging      => "empty",
                :description    => "This best selling growing media was developed to be the best potting soil for organic cultivation.",
                :filename       => "http://www.hydrogarden.com/StockPics/02-075-110_BioBizz_AllMixSoil50L.jpg"
        )
                @product.sale_price =  7.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 505, 
                :supplier_id    => 1,
                :name           => "BioBizz All-Mix Potting Soil 20 L", 
                :weight         => 6250,
                :order_code     => "02-075-115",
                :packaging      => "empty",
                :description    => "This best selling growing media was developed especially to be the best potting soil for organic cultivation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  3.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 506, 
                :supplier_id    => 1,
                :name           => "BioBizz Pre-Mix 5 L", 
                :weight         => 2600,
                :order_code     => "05-225-005",
                :packaging      => "empty",
                :description    => "Worm Castings are an ideal product for the organic and concerned grower.  Sold throughout the world for use mainly in soil based growing.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  5.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 507, 
                :supplier_id    => 1,
                :name           => "BioBizz Pre-Mix 25 L", 
                :weight         => 13200,
                :order_code     => "05-225-010",
                :packaging      => "empty",
                :description    => "Worm Castings are an ideal product for the organic and concerned grower.  Sold throughout the world for use mainly in soil based growing.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  17.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 508, 
                :supplier_id    => 1,
                :name           => "Box of 38mm Jiffy 7 Plugs (Loose)", 
                :weight         => 6000,
                :order_code     => "12-580-005",
                :packaging      => "empty",
                :description    => "Use in propagation, soil, in NFT gullys, in net pots or Vacroc rockwool. Super Product. These small compact plugs expand when water is added providing the perfect germination media.  Work great on cuttings too.",
                :filename       => "http://www.hydrogarden.com/StockPics/Jiffy7_LoosePlugs.jpg"
        )
                @product.sale_price =  35.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 509, 
                :supplier_id    => 1,
                :name           => "Box of 1400 Fleximix Plugs 72B Square Universal Dibble", 
                :weight         => 24000,
                :order_code     => "02-090-200",
                :packaging      => "empty",
                :description    => "Use to propagate seeds and cuttings.  Offers maximum aeration to promote root density and root branching.  This environmentally friendly media is made from composted materials and a unique polymer that enables the product to bio-degrade.",
                :filename       => "http://www.hydrogarden.com/StockPics/FlexiMix_72BPlugs.jpg"
        )
                @product.sale_price =  92.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 510, 
                :supplier_id    => 1,
                :name           => "Fleximix Plug-Bag 50 (box of 10)", 
                :weight         => 8750,
                :order_code     => "02-090-210",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  41.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 511, 
                :supplier_id    => 1,
                :name           => "Fleximix Courier 5 - Box of 16*", 
                :weight         => 2060,
                :order_code     => "12-550-090",
                :packaging      => "empty",
                :description    => "Post your plants with this unique postal propagator.  A compact and robust item for sending and recieving in the post which offers the latest and fastest rooting system. Complete with 5 x 72B size plugs.  Ready to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/12-550-090_Fleximix_Courier5.jpg"
        )
                @product.sale_price =  30.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 512, 
                :supplier_id    => 1,
                :name           => "BioBizz Worm Humus 40L", 
                :weight         => 20100,
                :order_code     => "05-225-015",
                :packaging      => "empty",
                :description    => "Worm-Humus is 1005 organic worm manure of a very high quality. To be used in the rejuvination of All-Mix or for use in potting mixtures, garden beds etc.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-225-015_BioBizz_WormHumus40L.jpg"
        )
                @product.sale_price =  9.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 513, 
                :supplier_id    => 4,
                :name           => "PLAGRON BAT GUANO 1L BAG", 
                :weight         => 1108,
                :order_code     => "QI117",
                :packaging      => "empty",
                :description    => "Plagron Bat Guano is an organic fertilser produced by bats. Its high natural phosphorus content makes it extremely suitable for plants in the flowering stage. \nAdding flavour to weight to crops Bat Guano can be added into a soil mix, mixed with water to m",
                :filename       => "empty"
        )
                @product.sale_price =  3.72
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 514, 
                :supplier_id    => 4,
                :name           => "PLAGRON BAT GUANO 5L TUB", 
                :weight         => 5140,
                :order_code     => "QI118",
                :packaging      => "empty",
                :description    => "Plagron Bat Guano is an organic fertilser produced by bats. Its high natural phosphorus content makes it extremely suitable for plants in the flowering stage. \nAdding flavour to weight to crops Bat Guano can be added into a soil mix, mixed with water to m",
                :filename       => "empty"
        )
                @product.sale_price =  9.23
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 515, 
                :supplier_id    => 4,
                :name           => "PLAGRON WORM CASTINGS 1L BAG", 
                :weight         => 564,
                :order_code     => "QI119",
                :packaging      => "empty",
                :description    => "Worm Humus has a high organic content and a wealth of trace elements, enzymes, minerals, live moulds and healthy bacteria.\n\nUsing worm humus has many advantages. It ensures faster & better germination of seed, stronger root development and higher nutrient",
                :filename       => "empty"
        )
                @product.sale_price =  1.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 516, 
                :supplier_id    => 4,
                :name           => "PLAGRON WORM CASTINGS 5L BAG", 
                :weight         => 3090,
                :order_code     => "QI120",
                :packaging      => "empty",
                :description    => "Worm Humus has a high organic content and a wealth of trace elements, enzymes, minerals, live moulds and healthy bacteria.\n\nUsing worm humus has many advantages. It ensures faster & better germination of seed, stronger root development and higher nutrient",
                :filename       => "empty"
        )
                @product.sale_price =  2.34
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 517, 
                :supplier_id    => 4,
                :name           => "PLAGRON WORM CASTINGS 25L", 
                :weight         => 12600,
                :order_code     => "QI121",
                :packaging      => "empty",
                :description    => "Worm Humus has a high organic content and a wealth of trace elements, enzymes, minerals, live moulds and healthy bacteria.\n\nUsing worm humus has many advantages. It ensures faster & better germination of seed, stronger root development and higher nutrient",
                :filename       => "empty"
        )
                @product.sale_price =  3.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 518, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 600w 666 Value Bundle With PP HPS Lamps", 
                :weight         => 61720,
                :order_code     => "03-100-555",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  357.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 519, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 400w 666 Value Bundle With Grolux Lamps", 
                :weight         => 54250,
                :order_code     => "03-100-560",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  349.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 520, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 600w 666 Value Bundle With Grolux Lamps", 
                :weight         => 61570,
                :order_code     => "03-100-565",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  378.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 521, 
                :supplier_id    => 1,
                :name           => "Lumatek Electronic 250w 666 Value Bundle With PP HPS Lamps", 
                :weight         => 29890,
                :order_code     => "03-100-570",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  405.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 522, 
                :supplier_id    => 1,
                :name           => "Lumatek Electronic 400w 666 Value Bundle With PP HPS Lamps", 
                :weight         => 30580,
                :order_code     => "03-100-575",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  514.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 523, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 250w 666 Value Bundle With PP MH Lamps", 
                :weight         => 44140,
                :order_code     => "03-100-580",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  303.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 524, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 400w 666 Value Bundle With PP MH Lamps", 
                :weight         => 54550,
                :order_code     => "03-100-585",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  322.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 525, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 600w 666 Value Bundle With PP MH Lamps", 
                :weight         => 63430,
                :order_code     => "03-100-590",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  357.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 526, 
                :supplier_id    => 1,
                :name           => "Lumatek Electronic 600w 666 Value Bundle With PP HPS Lamps", 
                :weight         => 36340,
                :order_code     => "03-100-595",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  615.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 527, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 250w Adjust-A-Wing M System With Lamp", 
                :weight         => 6815,
                :order_code     => "03-100-620",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 528, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 400w Adjust-A-Wing M System With Lamp", 
                :weight         => 8530,
                :order_code     => "03-100-625",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 529, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 600w Adjust-A-Wing M System With Lamp", 
                :weight         => 9760,
                :order_code     => "03-100-630",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 530, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 250w 5' Cool Shade System With Lamp", 
                :weight         => 7520,
                :order_code     => "03-100-640",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  60.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 531, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 400w 5' Cool Shade System With Lamp", 
                :weight         => 9235,
                :order_code     => "03-100-645",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  65.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 532, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 600w 5' Cool Shade System With Lamp", 
                :weight         => 10465,
                :order_code     => "03-100-650",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  75.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 533, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 400w Diamond System With Lamp", 
                :weight         => 8850,
                :order_code     => "03-100-660",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  65.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 534, 
                :supplier_id    => 1,
                :name           => "PowerPlant DayLite 600w Diamond System With Lamp", 
                :weight         => 10260,
                :order_code     => "03-100-665",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  78.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 535, 
                :supplier_id    => 1,
                :name           => "Power Plant 250W Remote Ballast Only*^", 
                :weight         => 5060,
                :order_code     => "03-105-005",
                :packaging      => "empty",
                :description    => "Power Plant Ballasts will run both Metal Halide and High Pressure Lamps.  All feature timed ignitors are CE approved and are supplied boxed with a 2m mains lead and are Ready to Use.  Tens of Thousands have been Sold !",
                :filename       => "http://www.hydrogarden.com/StockPics/PowerPlant_Ballast.jpg"
        )
                @product.sale_price =  37.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 536, 
                :supplier_id    => 1,
                :name           => "Power Plant 400w Remote Ballast Only*^", 
                :weight         => 6760,
                :order_code     => "03-105-010",
                :packaging      => "empty",
                :description    => "Power Plant Ballasts will run both Metal Halide and High Pressure Lamps.  All feature timed ignitors are CE approved and are supplied boxed with a 2m mains lead and are Ready to Use.  Tens of Thousands have been Sold !",
                :filename       => "http://www.hydrogarden.com/StockPics/PowerPlant_Ballast.jpg"
        )
                @product.sale_price =  40.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 537, 
                :supplier_id    => 1,
                :name           => "Power Plant 600W Remote Ballast Only*^", 
                :weight         => 7980,
                :order_code     => "03-105-015",
                :packaging      => "empty",
                :description    => "Power Plant Ballasts will run both Metal Halide and High Pressure Lamps.  All feature timed ignitors are CE approved and are supplied boxed with a 2m mains lead and are Ready to Use.  Tens of Thousands have been Sold !",
                :filename       => "http://www.hydrogarden.com/StockPics/PowerPlant_Ballast.jpg"
        )
                @product.sale_price =  46.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 538, 
                :supplier_id    => 1,
                :name           => "125mm (5') Coolshade IEC Lead Reflector", 
                :weight         => 2265,
                :order_code     => "03-110-040",
                :packaging      => "empty",
                :description    => "Designed to take all lamps from 250w to 1000w. The Coolshade uses a 125mm diameter outlet to draw air passed the lamp, reducing the heat in the grow room.  Integral adjustable flaps increase air flow as needed.  Boxed with 4m of cable and hanging hooks.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  21.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 539, 
                :supplier_id    => 1,
                :name           => "LARGE ADJUST-A-WING WITH BRACKET & LEAD^", 
                :weight         => 3040,
                :order_code     => "03-110-070",
                :packaging      => "empty",
                :description    => "Unique Parabolic Reflector that retains its profile throughout adjustable range. Easy to Assemble. Open ended design and adjustability enables it to be placed close to plants yet give an even light distribution. Boxed with 4m of cable.",
                :filename       => "http://www.hydrogarden.com/StockPics/AvengerAdjustawing_ReflectorLarge.JPG"
        )
                @product.sale_price =  64.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 540, 
                :supplier_id    => 1,
                :name           => "250W Philips Son-T Plus High Pressure Sodium Lamp", 
                :weight         => 180,
                :order_code     => "03-115-025",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/250w_Philips_sonT.jpg"
        )
                @product.sale_price =  7.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 541, 
                :supplier_id    => 1,
                :name           => "250w Powerplant Super HPS Lamp", 
                :weight         => 195,
                :order_code     => "03-115-027",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  6.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 542, 
                :supplier_id    => 1,
                :name           => "250w Powerplant Metal Halide Retro Fit Lamp", 
                :weight         => 210,
                :order_code     => "03-115-036",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  6.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 543, 
                :supplier_id    => 1,
                :name           => "400w Sylvania Grolux HPS Lamp", 
                :weight         => 195,
                :order_code     => "03-115-038",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 544, 
                :supplier_id    => 1,
                :name           => "400w Osram Nav T Super High Pressure Sodium Lamp", 
                :weight         => 200,
                :order_code     => "03-115-040",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/600w_osramNavT.jpg"
        )
                @product.sale_price =  11.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 545, 
                :supplier_id    => 1,
                :name           => "400W Osram Nav-T Plantastar High Pressure Sodium Lamp", 
                :weight         => 200,
                :order_code     => "03-115-041",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp developed for Horticulture to suit E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/400w_osram_plantastar.jpg"
        )
                @product.sale_price =  8.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 546, 
                :supplier_id    => 1,
                :name           => "400W Philips Son T Plus High Pressure Sodium Lamp", 
                :weight         => 200,
                :order_code     => "03-115-045",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/Philips_sonT.jpg"
        )
                @product.sale_price =  11.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 547, 
                :supplier_id    => 1,
                :name           => "400W Philips Son T Agro High Pressure Sodium Lamp", 
                :weight         => 200,
                :order_code     => "03-115-050",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp developed for Horticulture to suit E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/Philips_sonT_agro.jpg"
        )
                @product.sale_price =  15.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 548, 
                :supplier_id    => 1,
                :name           => "400W Philips HPI-T Metal Halide Lamp", 
                :weight         => 220,
                :order_code     => "03-115-055",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Metal Halide Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/PhilipsHPIT_lamp.jpg"
        )
                @product.sale_price =  15.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 549, 
                :supplier_id    => 1,
                :name           => "400w Powerplant Metal Halide Retro Fit Lamp", 
                :weight         => 245,
                :order_code     => "03-115-056",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  8.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 550, 
                :supplier_id    => 1,
                :name           => "400W PowerPlant Super HPS Lamp", 
                :weight         => 210,
                :order_code     => "03-115-062",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  8.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 551, 
                :supplier_id    => 1,
                :name           => "600w Sylvania Grolux HPS Lamp", 
                :weight         => 195,
                :order_code     => "03-115-064",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 552, 
                :supplier_id    => 1,
                :name           => "600W Osram Nav-T-Super High Pressure Sodium Lamp", 
                :weight         => 210,
                :order_code     => "03-115-065",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/600w_osramNavT.jpg"
        )
                @product.sale_price =  16.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 553, 
                :supplier_id    => 1,
                :name           => "600W Osram Nav-T Plantastar High Pressure Sodium Lamp", 
                :weight         => 220,
                :order_code     => "03-115-070",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp developed for Horticulture to suit E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/600w_osram_plantastar.jpg"
        )
                @product.sale_price =  16.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 554, 
                :supplier_id    => 1,
                :name           => "600W Philips Son-T Plus High Pressure Sodium Lamp", 
                :weight         => 200,
                :order_code     => "03-115-075",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/Philips_sonT.jpg"
        )
                @product.sale_price =  19.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 555, 
                :supplier_id    => 1,
                :name           => "600W PowerPlant Super HPS Lamp", 
                :weight         => 220,
                :order_code     => "03-115-082",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  12.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 556, 
                :supplier_id    => 1,
                :name           => "600w PowerPlant Metal Halide Retro Fit Lamp", 
                :weight         => 505,
                :order_code     => "03-115-083",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  15.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 557, 
                :supplier_id    => 1,
                :name           => "1000W Osram Nav T High Pressure Sodium Lamp", 
                :weight         => 320,
                :order_code     => "03-115-085",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/600w_osramNavT.jpg"
        )
                @product.sale_price =  29.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 558, 
                :supplier_id    => 1,
                :name           => "1000W Philips Son-T High Pressure Sodium Lamp", 
                :weight         => 450,
                :order_code     => "03-115-090",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Sodium Lamp for E40 Lampholder.",
                :filename       => "http://www.hydrogarden.com/StockPics/1000w_sonT.jpg"
        )
                @product.sale_price =  32.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 559, 
                :supplier_id    => 1,
                :name           => "1000W PowerPlant Super HPS Lamp", 
                :weight         => 470,
                :order_code     => "03-115-092",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  27.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 560, 
                :supplier_id    => 1,
                :name           => "1000W Philips HPI-T Metal Halide Lamp", 
                :weight         => 500,
                :order_code     => "03-115-095",
                :packaging      => "empty",
                :description    => "Screw into any of our Reflectors and use with a Power Plant Ballast.  High Pressure Metal Halide Lamp for E40 Lampholder",
                :filename       => "http://www.hydrogarden.com/StockPics/1000w_PhilipsHPIT.jpg"
        )
                @product.sale_price =  44.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 561, 
                :supplier_id    => 1,
                :name           => "1000w PowerPlant Metal Halide Retro Fit Lamp", 
                :weight         => 430,
                :order_code     => "03-115-096",
                :packaging      => "empty",
                :description    => "Features special arc tube dosing technology to acheive more usable light energy without sacrificing intensity or lamp life. For best results, use with our PowerPlant range of Reflector and Ballast. Technical data sheet available.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  27.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 562, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lightsafe 2 Gang Contactor/Relay Unit", 
                :weight         => 800,
                :order_code     => "03-125-050",
                :packaging      => "empty",
                :description    => "Eliminates timer failure by protecting it from the inductive load from a Ballast.  Can use any wattage lights up to 13 amps. Hard wired for maximum safety.  Wall mountable and splash proof design. Comes complete with instructions.",
                :filename       => "http://www.hydrogarden.com/StockPics/03-125-050_PPLightsafe_ContactorRelay_2gang.jpg"
        )
                @product.sale_price =  14.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 563, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lightsafe 4 Gang Contactor/Relay Unit", 
                :weight         => 900,
                :order_code     => "03-125-055",
                :packaging      => "empty",
                :description    => "Eliminates timer failure by protecting it from the inductive load from a Ballast.  Can use any wattage lights up to 13 amps. Hard wired for maximum safety.  Wall mountable and splash proof design. Comes complete with instructions.",
                :filename       => "http://www.hydrogarden.com/StockPics/03-125-055_PPLightsafe_ContactorRelay_4gang.jpg"
        )
                @product.sale_price =  19.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 564, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lightsafe 26 Amp 4 Gang Contactor Unit with Timer", 
                :weight         => 2100,
                :order_code     => "03-125-150",
                :packaging      => "empty",
                :description    => "Eliminates timer failure by protecting it from the inductive load from a Ballast.  Allows you to use heavy duty light wattage up to 26 amps. Hard wired for maximum safety.  Wall mountable and splash proof design. Comes complete with instructions.",
                :filename       => "http://www.hydrogarden.com/StockPics/03-125-150_PPLightsafe_ContactorTimer_4gang.jpg"
        )
                @product.sale_price =  41.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 565, 
                :supplier_id    => 1,
                :name           => "PowerPlant Lightsafe 26 Amp 6 Gang Contactor Unit with Timer", 
                :weight         => 2200,
                :order_code     => "03-125-155",
                :packaging      => "empty",
                :description    => "Eliminates timer failure by protecting it from the inductive load from a Ballast.  Allows you to use heavy duty light wattage up to 26 amps. Hard wired for maximum safety.  Wall mountable and splash proof design. Comes complete with instructions.",
                :filename       => "http://www.hydrogarden.com/StockPics/03-125-155_PPLightsafe_ContactorTimer_6gang.jpg"
        )
                @product.sale_price =  55.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 566, 
                :supplier_id    => 1,
                :name           => "Ecotechnics Powerstar Contactor/Timer 8 Way (6kW)", 
                :weight         => 2200,
                :order_code     => "03-125-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  50.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 567, 
                :supplier_id    => 1,
                :name           => "Ecotechnics Powerstar Contactor/Timer 16 Way  (12kW)", 
                :weight         => 3500,
                :order_code     => "03-125-205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  75.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 568, 
                :supplier_id    => 1,
                :name           => "Lightrail 3.5 Complete Kit", 
                :weight         => 3000,
                :order_code     => "04-155-005",
                :packaging      => "empty",
                :description    => "The LightRail moves any reflector back and forth over a maximum 1.8m span. Enables the grower to use less lights in a given area but also improves light penetration!  Easy to install and cheap to run. Supplied complete with fittings and instructions.",
                :filename       => "http://www.hydrogarden.com/StockPics/Lightrail3.5_smartdrive.JPG"
        )
                @product.sale_price =  99.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 569, 
                :supplier_id    => 1,
                :name           => "LightRail 3.5 Trolley Wheel Repair Kit(4 Wheels)", 
                :weight         => 40,
                :order_code     => "04-155-035",
                :packaging      => "empty",
                :description    => "Spare wheels to replace lost or damaged motor or trolley wheels.  Set of 4 white plastic.",
                :filename       => "http://www.hydrogarden.com/StockPics/lightrail3.5_TrolleyWheel.JPG"
        )
                @product.sale_price =  2.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 570, 
                :supplier_id    => 1,
                :name           => "LightRail 3.5 Drive Wheel Combo", 
                :weight         => 40,
                :order_code     => "04-155-040",
                :packaging      => "empty",
                :description    => "Spare large Drive Wheel for LightRail Motor Only.  All you need to replace a worn drive wheel.",
                :filename       => "http://www.hydrogarden.com/StockPics/lightrail3.5_DriveWheel.JPG"
        )
                @product.sale_price =  3.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 571, 
                :supplier_id    => 1,
                :name           => "Philips 55W Cool White Lamp 55PLL840 - LightWing", 
                :weight         => 500,
                :order_code     => "03-115-010",
                :packaging      => "empty",
                :description    => "Longlife, affordable replacement lamps for our LightWing Unit.  Cool White lamps promote a vegetative response from plants.",
                :filename       => "http://www.hydrogarden.com/StockPics/55w_philips_cool.jpg"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 572, 
                :supplier_id    => 1,
                :name           => "150w 8U Cool White (6400k) CFL Lamp", 
                :weight         => 1000,
                :order_code     => "03-115-015",
                :packaging      => "empty",
                :description    => "Self-ballasted, ultra high output compact flourescent lamps. Ideal for supplementary lighting, over wintering plants, side lighting, mother plants or propagation.",
                :filename       => "http://www.hydrogarden.com/StockPics/03_115_015_150w_cfl_cool_lamp.jpg"
        )
                @product.sale_price =  16.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 573, 
                :supplier_id    => 1,
                :name           => "150w 8U Warm White (2700k) CFL Lamp", 
                :weight         => 1000,
                :order_code     => "03-115-017",
                :packaging      => "empty",
                :description    => "Self-ballasted, ultra high output compact flourescent lamps. Ideal for supplementary lighting, over wintering plants, side lighting, mother plants or propagation.",
                :filename       => "http://www.hydrogarden.com/StockPics/03_115_017_150w_cfl_warm_lamp.jpg"
        )
                @product.sale_price =  16.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 574, 
                :supplier_id    => 1,
                :name           => "250w 8U Cool White (6400k) CFL Lamp", 
                :weight         => 1000,
                :order_code     => "03-115-020",
                :packaging      => "empty",
                :description    => "Self-ballasted, ultra high output compact flourescent lamps. Ideal for supplementary lighting, over wintering plants, side lighting, mother plants or propagation.",
                :filename       => "http://www.hydrogarden.com/StockPics/03_115_020_250w_cfl_cool_lamp.jpg"
        )
                @product.sale_price =  22.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 575, 
                :supplier_id    => 1,
                :name           => "250w PowerPlant Envirogrow CFL Super Cool White Lamp - 14000k", 
                :weight         => 1000,
                :order_code     => "03-115-021",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  22.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 576, 
                :supplier_id    => 1,
                :name           => "250w 8U Warm White (2700k) CFL Lamp", 
                :weight         => 1000,
                :order_code     => "03-115-022",
                :packaging      => "empty",
                :description    => "Self-ballasted, ultra high output compact flourescent lamps. Ideal for supplementary lighting, over wintering plants, side lighting, mother plants or propagation.",
                :filename       => "http://www.hydrogarden.com/StockPics/03_115_022_250w_cfl_warm_lamp.jpg"
        )
                @product.sale_price =  22.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 577, 
                :supplier_id    => 1,
                :name           => "Large Heat Shield*", 
                :weight         => 500,
                :order_code     => "03-120-010",
                :packaging      => "empty",
                :description    => "Unique Patented product.  Originally designed for the Adjust-A-Wings but now fitted to many Reflectors.  Enables Reflector to be located closer to the plants maximising light but protecting them from the heat ! Amazing.",
                :filename       => "http://www.hydrogarden.com/StockPics/Heatshield.JPG"
        )
                @product.sale_price =  11.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 578, 
                :supplier_id    => 1,
                :name           => "Diamond Diffusion Foil 1.2m x 100m", 
                :weight         => 15000,
                :order_code     => "14-660-010",
                :packaging      => "empty",
                :description    => "110 micron\n",
                :filename       => "empty"
        )
                @product.sale_price =  155.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 579, 
                :supplier_id    => 4,
                :name           => "BLACKWHITE 2m x 150m", 
                :weight         => 24000,
                :order_code     => "PI108",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  54.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 580, 
                :supplier_id    => 4,
                :name           => "WHITEBLACKWHITE 3m x 100m", 
                :weight         => 29000,
                :order_code     => "PI115",
                :packaging      => "empty",
                :description    => "Lightproof reflective sheeting used to line walls and ceilings of growrooms. Is also handy as a waterproof floor covering for those nasty spills. Extra wide 3m roll.",
                :filename       => "empty"
        )
                @product.sale_price =  72.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 581, 
                :supplier_id    => 4,
                :name           => "White Black White 2m x 100m", 
                :weight         => 19000,
                :order_code     => "PI116",
                :packaging      => "empty",
                :description    => "Lightproof reflective sheeting used to line walls and ceilings of growrooms. Is also handy as a waterproof floor covering for those nasty spills. Standard width - 2m roll.",
                :filename       => "have image"
        )
                @product.sale_price =  60.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 582, 
                :supplier_id    => 4,
                :name           => "Mylar Silver White 1.25m x 100m", 
                :weight         => 12500,
                :order_code     => "RI203",
                :packaging      => "empty",
                :description    => "Reflective mylar film for lining grow rooms for maximum light reflection.",
                :filename       => "have image"
        )
                @product.sale_price =  74.53
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 583, 
                :supplier_id    => 1,
                :name           => "240v 13 Amp Mains Lead and Plug - 2m", 
                :weight         => 680,
                :order_code     => "60-975-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.99
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 584, 
                :supplier_id    => 1,
                :name           => "IEC Rewirable Female Plug", 
                :weight         => 20,
                :order_code     => "70-992-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 585, 
                :supplier_id    => 1,
                :name           => "IEC Rewirable Male Plug", 
                :weight         => 20,
                :order_code     => "70-992-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 586, 
                :supplier_id    => 1,
                :name           => "Canna Vega (Hard Water) A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-005",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_vegaA&B_HW1L.JPG"
        )
                @product.sale_price =  6.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 587, 
                :supplier_id    => 1,
                :name           => "Canna Vega (Soft Water) A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-006",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_vegaA&B_SW1L.JPG"
        )
                @product.sale_price =  6.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 588, 
                :supplier_id    => 1,
                :name           => "Canna Vega (Hard Water) A&B 5 litre Set", 
                :weight         => 12000,
                :order_code     => "05-205-010",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_vegaA&B_HW5L.JPG"
        )
                @product.sale_price =  16.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 589, 
                :supplier_id    => 1,
                :name           => "Canna Vega (Soft Water) A&B 5 litre Set", 
                :weight         => 12000,
                :order_code     => "05-205-011",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_vegaA&B_SW5L.JPG"
        )
                @product.sale_price =  16.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 590, 
                :supplier_id    => 1,
                :name           => "Canna Vega (Hard Water) A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-015",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_vegaA&B_HW10L.JPG"
        )
                @product.sale_price =  28.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 591, 
                :supplier_id    => 1,
                :name           => "Canna Vega (Soft Water) A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-016",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_vegaA&B_SW10L.JPG"
        )
                @product.sale_price =  28.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 592, 
                :supplier_id    => 1,
                :name           => "Canna Flores (Hard Water) A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-020",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_floresA&B_HW1L.JPG"
        )
                @product.sale_price =  6.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 593, 
                :supplier_id    => 1,
                :name           => "Canna Flores (Soft Water) A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-021",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_floresA&B_SW1L.JPG"
        )
                @product.sale_price =  6.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 594, 
                :supplier_id    => 1,
                :name           => "Canna Flores (Hard Water) A&B 5 litre Set", 
                :weight         => 10800,
                :order_code     => "05-205-025",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_floresA&B_HW5L.JPG"
        )
                @product.sale_price =  16.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 595, 
                :supplier_id    => 1,
                :name           => "Canna Flores (Soft Water) A&B 5 litre Set", 
                :weight         => 12000,
                :order_code     => "05-205-026",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_floresA&B_SW5L.JPG"
        )
                @product.sale_price =  16.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 596, 
                :supplier_id    => 1,
                :name           => "Canna Flores (Hard Water) A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-030",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_floresA&B_HW10L.JPG"
        )
                @product.sale_price =  28.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 597, 
                :supplier_id    => 1,
                :name           => "Canna Flores (Soft Water) A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-031",
                :packaging      => "empty",
                :description    => "Dutch crop specific nutrient. Vega for Vegetative and Flores for Flowering.  1:250 dilution ratio makes this one of the UKs top selling nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_floresA&B_SW10L.JPG"
        )
                @product.sale_price =  28.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 598, 
                :supplier_id    => 1,
                :name           => "Canna Coco A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-035",
                :packaging      => "empty",
                :description    => "Dutch 2 part Coco specific nutrient. Use same Coco nutrient throughout the growing cycle.  Use with Canna Coco Coir for best results. The UKs top selling Coco Coir nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_cocoA&B1L.JPG"
        )
                @product.sale_price =  6.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 599, 
                :supplier_id    => 1,
                :name           => "Canna Coco A&B 5 litre Set", 
                :weight         => 12000,
                :order_code     => "05-205-040",
                :packaging      => "empty",
                :description    => "Dutch 2 part Coco specific nutrient. Use same Coco nutrient throughout the growing cycle.  Use with Canna Coco Coir for best results. The UKs top selling Coco Coir nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_cocoA&B5L.JPG"
        )
                @product.sale_price =  19.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 600, 
                :supplier_id    => 1,
                :name           => "Canna Coco A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-045",
                :packaging      => "empty",
                :description    => "Dutch 2 part Coco specific nutrient. Use same Coco nutrient throughout the growing cycle.  Use with Canna Coco Coir for best results. The UKs top selling Coco Coir nutrients. ",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_cocoA&B10L.JPG"
        )
                @product.sale_price =  30.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 601, 
                :supplier_id    => 1,
                :name           => "Canna Terra Vega 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-050",
                :packaging      => "empty",
                :description    => "Dutch 1 part Soil specific nutrient. Vega for Vegetative and Flores for Flowering. The UKs top selling Soil nutrient range",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_TerraVega1L.jpg"
        )
                @product.sale_price =  6.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 602, 
                :supplier_id    => 1,
                :name           => "Canna Terra Vega 5 litre", 
                :weight         => 5000,
                :order_code     => "05-205-055",
                :packaging      => "empty",
                :description    => "Dutch 1 part Soil specific nutrient. Vega for Vegetative and Flores for Flowering. The UKs top selling Soil nutrient range",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_TerraVega5L.jpg"
        )
                @product.sale_price =  16.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 603, 
                :supplier_id    => 1,
                :name           => "Canna Terra Vega 10 litre", 
                :weight         => 10000,
                :order_code     => "05-205-060",
                :packaging      => "empty",
                :description    => "Dutch 1 part Soil specific nutrient. Vega for Vegetative and Flores for Flowering. The UKs top selling Soil nutrient range",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_TerraVega10L.jpg"
        )
                @product.sale_price =  27.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 604, 
                :supplier_id    => 1,
                :name           => "Canna Terra Flores 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-065",
                :packaging      => "empty",
                :description    => "Dutch 1 part Soil specific nutrient. Vega for Vegetative and Flores for Flowering. The UKs top selling Soil nutrient range",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_TerraFlores1L.jpg"
        )
                @product.sale_price =  6.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 605, 
                :supplier_id    => 1,
                :name           => "Canna Terra Flores 5 litre", 
                :weight         => 5000,
                :order_code     => "05-205-070",
                :packaging      => "empty",
                :description    => "Dutch 1 part Soil specific nutrient. Vega for Vegetative and Flores for Flowering. The UKs top selling Soil nutrient range",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_TerraFlores5L.jpg"
        )
                @product.sale_price =  16.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 606, 
                :supplier_id    => 1,
                :name           => "Canna Terra Flores 10 litre", 
                :weight         => 10000,
                :order_code     => "05-205-075",
                :packaging      => "empty",
                :description    => "Dutch 1 part Soil specific nutrient. Vega for Vegetative and Flores for Flowering. The UKs top selling Soil nutrient range",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_TerraFlores10L.jpg"
        )
                @product.sale_price =  27.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 607, 
                :supplier_id    => 1,
                :name           => "Canna Additive (Ca) Calcium (15%) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-080",
                :packaging      => "empty",
                :description    => "Calcium Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_additive_Ca.jpg"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 608, 
                :supplier_id    => 1,
                :name           => "Canna Additive (Fe) Iron Chelate 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-085",
                :packaging      => "empty",
                :description    => "Iron Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_additive_fe.jpg"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 609, 
                :supplier_id    => 1,
                :name           => "Canna Additive (MgO)) Magnesium Sulphate (7%) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-090",
                :packaging      => "empty",
                :description    => "Magnesium Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_additive_Mg0.jpg"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 610, 
                :supplier_id    => 1,
                :name           => "Canna Additive (N) Nitrogen (20%) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-095",
                :packaging      => "empty",
                :description    => "Nitrogen Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_additive_N.JPG"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 611, 
                :supplier_id    => 1,
                :name           => "Canna Additive (P) Phosphor (20%) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-100",
                :packaging      => "empty",
                :description    => "Phosphorous Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_additive_P.JPG"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 612, 
                :supplier_id    => 1,
                :name           => "Canna Additive (K) Potassium (20%) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-105",
                :packaging      => "empty",
                :description    => "Potassium Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_additive_K.JPG"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 613, 
                :supplier_id    => 1,
                :name           => "Canna Additive Trace Mix 1 litre", 
                :weight         => 1000,
                :order_code     => "05-205-110",
                :packaging      => "empty",
                :description    => "Trace Element Additive for use with Canna or any other Nutrient Range.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_additive_Tracemix.jpg"
        )
                @product.sale_price =  3.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 614, 
                :supplier_id    => 1,
                :name           => "Canna Aqua Vega A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-200",
                :packaging      => "empty",
                :description    => "A bonus for the UK !  Canna have developed their famous Vega and Flores Nutrients especially for recirculating hydroponic systems that are so popular here !",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_AquaVega_A&B1L.jpg"
        )
                @product.sale_price =  6.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 615, 
                :supplier_id    => 1,
                :name           => "Canna Aqua Vega A&B 5 litre Set", 
                :weight         => 12000,
                :order_code     => "05-205-205",
                :packaging      => "empty",
                :description    => "A bonus for the UK !  Canna have developed their famous Vega and Flores Nutrients especially for recirculating hydroponic systems that are so popular here !",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_AquaVega_A&B5L.jpg"
        )
                @product.sale_price =  17.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 616, 
                :supplier_id    => 1,
                :name           => "Canna Aqua Vega A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-210",
                :packaging      => "empty",
                :description    => "A bonus for the UK !  Canna have developed their famous Vega and Flores Nutrients especially for recirculating hydroponic systems that are so popular here !",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_AquaVega_A&B10L.jpg"
        )
                @product.sale_price =  28.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 617, 
                :supplier_id    => 1,
                :name           => "Canna Aqua Flores A&B 1 litre Set", 
                :weight         => 2400,
                :order_code     => "05-205-215",
                :packaging      => "empty",
                :description    => "A bonus for the UK !  Canna have developed their famous Vega and Flores Nutrients especially for recirculating hydroponic systems that are so popular here !",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_AquaFlores_A&B1L.jpg"
        )
                @product.sale_price =  6.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 618, 
                :supplier_id    => 1,
                :name           => "Canna Aqua Flores A&B 5 litre Set", 
                :weight         => 12000,
                :order_code     => "05-205-220",
                :packaging      => "empty",
                :description    => "A bonus for the UK !  Canna have developed their famous Vega and Flores Nutrients especially for recirculating hydroponic systems that are so popular here !",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_AquaFlores_A&B5L.jpg"
        )
                @product.sale_price =  17.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 619, 
                :supplier_id    => 1,
                :name           => "Canna Aqua Flores A&B 10 litre Set", 
                :weight         => 23000,
                :order_code     => "05-205-225",
                :packaging      => "empty",
                :description    => "A bonus for the UK !  Canna have developed their famous Vega and Flores Nutrients especially for recirculating hydroponic systems that are so popular here !",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_AquaFlores_A&B10L.jpg"
        )
                @product.sale_price =  28.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 620, 
                :supplier_id    => 1,
                :name           => "Canna BioVega 1 Litre", 
                :weight         => 1395,
                :order_code     => "05-205-305",
                :packaging      => "empty",
                :description    => "Tailor made for fast growing crops.  Made with only the essential organic minerals, fruit acids and oils.  This bottle specifically contains qualities that become easily available for plant absorption during the vegetative stage.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-205-305_Canna_BioVega1L.jpg"
        )
                @product.sale_price =  6.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 621, 
                :supplier_id    => 1,
                :name           => "Canna BioVega 5 Litre", 
                :weight         => 6620,
                :order_code     => "05-205-310",
                :packaging      => "empty",
                :description    => "Tailor made for fast growing crops.  Made with only the essential organic minerals, fruit acids and oils.  This bottle specifically contains qualities that become easily available for plant absorption during the vegetative stage.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-205-310_Canna_BioVega5L.jpg"
        )
                @product.sale_price =  27.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 622, 
                :supplier_id    => 1,
                :name           => "Canna BioFlores 1 Litre", 
                :weight         => 1455,
                :order_code     => "05-205-315",
                :packaging      => "empty",
                :description    => "Tailor made for fast growing crops.  Made with only the essential organic minerals, fruit acids and oils.  This bottle specifically contains hop extracts and proteins for extra blooming strength during the flowering stage.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-205-315_Canna_BioFlores1L.jpg"
        )
                @product.sale_price =  6.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 623, 
                :supplier_id    => 1,
                :name           => "Canna BioFlores 5 Litre", 
                :weight         => 6815,
                :order_code     => "05-205-320",
                :packaging      => "empty",
                :description    => "Tailor made for fast growing crops.  Made with only the essential organic minerals, fruit acids and oils.  This bottle specifically contains hop extracts and proteins for extra blooming strength during the flowering stage.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-205-320_Canna_BioFlores5L.jpg"
        )
                @product.sale_price =  27.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 624, 
                :supplier_id    => 1,
                :name           => "Canna BioBoost 1 Litre", 
                :weight         => 1085,
                :order_code     => "05-205-325",
                :packaging      => "empty",
                :description    => "Tailor made for fast growing crops.  Made with only the essential organic minerals, fruit acids and oils.  This bottle has a natural fermented plant extract that stimulates bloom increases, productivity and improves taste.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-205-325_Canna_BioBoost1L.jpg"
        )
                @product.sale_price =  24.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 625, 
                :supplier_id    => 1,
                :name           => "Canna BioBoost 250ml", 
                :weight         => 295,
                :order_code     => "05-205-330",
                :packaging      => "empty",
                :description    => "Tailor made for fast growing crops.  Made with only the essential organic minerals, fruit acids and oils.  This bottle has a natural fermented plant extract that stimulates bloom increases, productivity and improves taste.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-205-330_Canna_BioBoost25ml.jpg"
        )
                @product.sale_price =  8.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 626, 
                :supplier_id    => 1,
                :name           => "Canna Start 500ml", 
                :weight         => 500,
                :order_code     => "05-205-335",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 627, 
                :supplier_id    => 1,
                :name           => "Canna Start 1L", 
                :weight         => 1200,
                :order_code     => "05-205-340",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 628, 
                :supplier_id    => 1,
                :name           => "Canna Start 5L", 
                :weight         => 6000,
                :order_code     => "05-205-345",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  18.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 629, 
                :supplier_id    => 1,
                :name           => "Canna Rhizotonic 250ml", 
                :weight         => 250,
                :order_code     => "06-255-005",
                :packaging      => "empty",
                :description    => "Canna Rhizotonic is a powerful root growth stimulator that is ideal for young plants and cuttings.  Also acts as a powerful plant tonic and growth stimulator.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_rhizotonic250ml.jpg"
        )
                @product.sale_price =  5.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 630, 
                :supplier_id    => 1,
                :name           => "Canna Rhizotonic 1 litre", 
                :weight         => 1000,
                :order_code     => "06-255-015",
                :packaging      => "empty",
                :description    => "Canna Rhizotonic is a powerful root growth stimulator that is ideal for young plants and cuttings.  Also acts as a powerful plant tonic and growth stimulator.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_rhizotonic1L.jpg"
        )
                @product.sale_price =  15.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 631, 
                :supplier_id    => 1,
                :name           => "Canna Rhizotonic 5 litre", 
                :weight         => 5500,
                :order_code     => "06-255-017",
                :packaging      => "empty",
                :description    => "Canna Rhizotonic is a powerful root growth stimulator that is ideal for young plants and cuttings.  Also acts as a powerful plant tonic and growth stimulator.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  63.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 632, 
                :supplier_id    => 1,
                :name           => "Cannazym 250ml", 
                :weight         => 500,
                :order_code     => "06-255-019",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 633, 
                :supplier_id    => 1,
                :name           => "Cannazym 1 litre", 
                :weight         => 1000,
                :order_code     => "06-255-025",
                :packaging      => "empty",
                :description    => "Canna Cannazym is a natural product that breaks down old root material and converts it into usable plant food for your plants.  It also promotes new root growth. Stop wasting your nutrients today and try Cannazym.",
                :filename       => "http://www.hydrogarden.com/StockPics/cannazym_1L.JPG"
        )
                @product.sale_price =  8.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 634, 
                :supplier_id    => 1,
                :name           => "Cannazym 5 litre", 
                :weight         => 7000,
                :order_code     => "06-255-030",
                :packaging      => "empty",
                :description    => "Canna Cannazym is a natural product that breaks down old root material and converts it into usable plant food for your plants.  It also promotes new root growth. Stop wasting your nutrients today and try Cannazym.",
                :filename       => "http://www.hydrogarden.com/StockPics/cannazym_5L.JPG"
        )
                @product.sale_price =  35.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 635, 
                :supplier_id    => 1,
                :name           => "Canna PK13/14 Bloom Booster 250ml", 
                :weight         => 500,
                :order_code     => "06-255-033",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 636, 
                :supplier_id    => 1,
                :name           => "Canna PK13/14 Bloom Booster 1 litre", 
                :weight         => 1000,
                :order_code     => "06-255-040",
                :packaging      => "empty",
                :description    => "Canna PK13/14 is added to flowering plants only.  It assists flower development and promotes abundant flowering in general.  Just add to your Nutrient tank.",
                :filename       => "http://www.hydrogarden.com/StockPics/cannaPK13_14_1L.JPG"
        )
                @product.sale_price =  4.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 637, 
                :supplier_id    => 1,
                :name           => "Canna PK13/14 Bloom Booster 5 litre", 
                :weight         => 7000,
                :order_code     => "06-255-045",
                :packaging      => "empty",
                :description    => "Canna PK13/14 is added to flowering plants only.  It assists flower development and promotes abundant flowering in general.  Just add to your Nutrient tank.",
                :filename       => "http://www.hydrogarden.com/StockPics/cannaPK13_14_5L.JPG"
        )
                @product.sale_price =  23.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 638, 
                :supplier_id    => 1,
                :name           => "Canna akTRIvator Powder 10 gr Container", 
                :weight         => 10,
                :order_code     => "06-255-050",
                :packaging      => "empty",
                :description    => "Tricoderma is a beneficial bacteria that will colonise your rootzone leading to a host of benefits including increased nutrient uptake and more robust plants.",
                :filename       => "http://www.hydrogarden.com/StockPics/canna_trichoderma.jpg"
        )
                @product.sale_price =  6.85
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 639, 
                :supplier_id    => 1,
                :name           => "Canna akTRIvator (TRI002) Granule Soil Mix 250g", 
                :weight         => 500,
                :order_code     => "06-255-060",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  28.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 640, 
                :supplier_id    => 1,
                :name           => "Canna Boost Accelerator 250ml", 
                :weight         => 500,
                :order_code     => "06-255-100",
                :packaging      => "empty",
                :description    => "Canna Boost is Cannas powerful flowering stimulator, specially developed for fast growing plants, it improves quality and increases yields.",
                :filename       => "http://www.hydrogarden.com/StockPics/06-255-100_canna_Boost_Accelerator_250ml.jpg"
        )
                @product.sale_price =  12.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 641, 
                :supplier_id    => 1,
                :name           => "Canna Boost Accelerator 1 litre", 
                :weight         => 1000,
                :order_code     => "06-255-110",
                :packaging      => "empty",
                :description    => "Canna Boost is Cannas powerful flowering stimulator, specially developed for fast growing plants, it improves quality and increases yields.",
                :filename       => "http://www.hydrogarden.com/StockPics/06-255-110_canna_Boost_Accelerator_1L.jpg"
        )
                @product.sale_price =  32.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 642, 
                :supplier_id    => 1,
                :name           => "Canna Boost Accelerator 5 litre", 
                :weight         => 5250,
                :order_code     => "06-255-120",
                :packaging      => "empty",
                :description    => "Canna Boost is Cannas powerful flowering stimulator, specially developed for fast growing plants, it improves quality and increases yields.",
                :filename       => "http://www.hydrogarden.com/StockPics/06-255-120_canna_Boost_Accelerator_5L.jpg"
        )
                @product.sale_price =  127.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 643, 
                :supplier_id    => 1,
                :name           => "Canna Bio Rhizotonic 250ml", 
                :weight         => 500,
                :order_code     => "06-255-135",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 644, 
                :supplier_id    => 1,
                :name           => "Canna Bio Rhizotonic 1L", 
                :weight         => 1200,
                :order_code     => "06-255-140",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  15.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 645, 
                :supplier_id    => 1,
                :name           => "Canna Flush 250ml", 
                :weight         => 500,
                :order_code     => "06-255-160",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 646, 
                :supplier_id    => 1,
                :name           => "Canna Flush 1L", 
                :weight         => 1200,
                :order_code     => "06-255-165",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 647, 
                :supplier_id    => 1,
                :name           => "Canna Flush 5L", 
                :weight         => 5250,
                :order_code     => "06-255-170",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  18.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 648, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Grow 0.5L", 
                :weight         => 700,
                :order_code     => "05-225-020",
                :packaging      => "empty",
                :description    => "Bio-Grow is a liquid plant food that promotes lush plant growth and is suitable for most soil mixtures.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  2.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 649, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Grow 1L", 
                :weight         => 1400,
                :order_code     => "05-225-025",
                :packaging      => "empty",
                :description    => "Bio-Grow is a liquid plant food that promotes lush plant growth and is suitable for most soil mixtures.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-225-025_BioBizz_BioGrow1L.jpg"
        )
                @product.sale_price =  4.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 650, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Grow 5L", 
                :weight         => 6700,
                :order_code     => "05-225-030",
                :packaging      => "empty",
                :description    => "Bio-Grow is a liquid plant food that promotes lush plant growth and is suitable for most soil mixtures.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  15.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 651, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Grow 10L", 
                :weight         => 13500,
                :order_code     => "05-225-035",
                :packaging      => "empty",
                :description    => "Bio-Grow is a liquid plant food that promotes lush plant growth and is suitable for most soil mixtures.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  28.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 652, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Bloom 0.5L", 
                :weight         => 500,
                :order_code     => "05-225-050",
                :packaging      => "empty",
                :description    => "Bio-Bloom natural bloom formula is a complete fertiliser used from the beginning of a fruit or flower production until harvest.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  2.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 653, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Bloom 1L", 
                :weight         => 1100,
                :order_code     => "05-225-055",
                :packaging      => "empty",
                :description    => "Bio-Bloom natural bloom formula is a complete fertiliser used from the beginning of a fruit or flower production until harvest.",
                :filename       => "http://www.hydrogarden.com/StockPics/05-225-055_BioBizz_BioBloom1L.jpg"
        )
                @product.sale_price =  4.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 654, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Bloom 5L", 
                :weight         => 5400,
                :order_code     => "05-225-060",
                :packaging      => "empty",
                :description    => "Bio-Bloom natural bloom formula is a complete fertiliser used from the beginning of a fruit or flower production until harvest.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  19.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 655, 
                :supplier_id    => 1,
                :name           => "BioBizz Bio Bloom 10L", 
                :weight         => 11000,
                :order_code     => "05-225-065",
                :packaging      => "empty",
                :description    => "Bio-Bloom natural bloom formula is a complete fertiliser used from the beginning of a fruit or flower production until harvest.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  31.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 656, 
                :supplier_id    => 1,
                :name           => "BioBizz Alg-A-Mic 0.5L", 
                :weight         => 550,
                :order_code     => "06-300-005",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  4.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 657, 
                :supplier_id    => 1,
                :name           => "BioBizz Alg-A-Mic 1L", 
                :weight         => 1100,
                :order_code     => "06-300-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  7.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 658, 
                :supplier_id    => 1,
                :name           => "BioBizz Alg-A-Mic 5L", 
                :weight         => 5200,
                :order_code     => "06-300-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  31.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 659, 
                :supplier_id    => 1,
                :name           => "BioBizz Alg-A-Mic 10L", 
                :weight         => 10600,
                :order_code     => "06-300-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  53.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 660, 
                :supplier_id    => 1,
                :name           => "BioBizz Fish-Mix 500ml", 
                :weight         => 700,
                :order_code     => "06-300-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 661, 
                :supplier_id    => 1,
                :name           => "BioBizz Fish-Mix 1L", 
                :weight         => 1300,
                :order_code     => "06-300-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 662, 
                :supplier_id    => 1,
                :name           => "BioBizz Fish-Mix 5L", 
                :weight         => 6400,
                :order_code     => "06-300-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  16.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 663, 
                :supplier_id    => 1,
                :name           => "BioBizz Fish-Mix 10L", 
                :weight         => 12700,
                :order_code     => "06-300-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  28.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 664, 
                :supplier_id    => 1,
                :name           => "BioBizz Root Juice 250ml", 
                :weight         => 300,
                :order_code     => "06-300-045",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 665, 
                :supplier_id    => 1,
                :name           => "BioBizz Root Juice 1L", 
                :weight         => 1000,
                :order_code     => "06-300-050",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  18.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 666, 
                :supplier_id    => 1,
                :name           => "BioBizz Root Juice 5L", 
                :weight         => 5000,
                :order_code     => "06-300-055",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  87.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 667, 
                :supplier_id    => 1,
                :name           => "BioBizz TopMax 500ml", 
                :weight         => 500,
                :order_code     => "06-300-060",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 668, 
                :supplier_id    => 1,
                :name           => "BioBizz TopMax 1L", 
                :weight         => 1000,
                :order_code     => "06-300-065",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 669, 
                :supplier_id    => 1,
                :name           => "BioBizz TopMax 5L", 
                :weight         => 5100,
                :order_code     => "06-300-070",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  43.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 670, 
                :supplier_id    => 1,
                :name           => "BioBizz TopMax 10L", 
                :weight         => 10300,
                :order_code     => "06-300-075",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  81.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 671, 
                :supplier_id    => 1,
                :name           => "BioBizz BioHeaven 250ml", 
                :weight         => 300,
                :order_code     => "06-300-100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 672, 
                :supplier_id    => 1,
                :name           => "BioBizz BioHeaven 500ml", 
                :weight         => 500,
                :order_code     => "06-300-105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  17.65
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 673, 
                :supplier_id    => 1,
                :name           => "BioBizz BioHeaven 1L", 
                :weight         => 1000,
                :order_code     => "06-300-110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  26.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 674, 
                :supplier_id    => 1,
                :name           => "Bio Bizz Leaf Coat 0.5L", 
                :weight         => 600,
                :order_code     => "10-475-500",
                :packaging      => "empty",
                :description    => "Leafcoat 100% Organic Plant Strengthener ia  a ready-to-use product. LeafCoat strengthens plants and provides them with a powerful expelling effect on harmful insects.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  4.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 675, 
                :supplier_id    => 1,
                :name           => "Formulex 500ml", 
                :weight         => 500,
                :order_code     => "05-210-005",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Universal Hard and Soft Water Formula.  Ideal for cuttings, seedlings and delicate plants  such as ferns and orchids.",
                :filename       => "http://www.hydrogarden.com/StockPics/formulux_1L.JPG"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 676, 
                :supplier_id    => 1,
                :name           => "Formulex 1 litre", 
                :weight         => 1000,
                :order_code     => "05-210-006",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Universal Hard and Soft Water Formula.  Ideal for cuttings, seedlings and delicate plants  such as ferns and orchids.",
                :filename       => "http://www.hydrogarden.com/StockPics/formulux_1L.JPG"
        )
                @product.sale_price =  2.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 677, 
                :supplier_id    => 1,
                :name           => "Ionic Grow (Soft Water) 1 litre", 
                :weight         => 1265,
                :order_code     => "05-210-010",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Grow1L.jpg"
        )
                @product.sale_price =  3.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 678, 
                :supplier_id    => 1,
                :name           => "Ionic Grow (Soft Water) 5 litre", 
                :weight         => 6190,
                :order_code     => "05-210-020",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Grow5L.jpg"
        )
                @product.sale_price =  7.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 679, 
                :supplier_id    => 1,
                :name           => "Ionic Grow Soft Water 20L", 
                :weight         => 6190,
                :order_code     => "05-210-021",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 680, 
                :supplier_id    => 1,
                :name           => "Ionic Grow (Hard Water) 1 litre", 
                :weight         => 1235,
                :order_code     => "05-210-025",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Grow1LHW.jpg"
        )
                @product.sale_price =  3.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 681, 
                :supplier_id    => 1,
                :name           => "Ionic Grow (Hard Water) 5 litre", 
                :weight         => 6070,
                :order_code     => "05-210-035",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Grow5LHW.jpg"
        )
                @product.sale_price =  7.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 682, 
                :supplier_id    => 1,
                :name           => "Ionic Grow Hard Water 20L", 
                :weight         => 6070,
                :order_code     => "05-210-036",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 683, 
                :supplier_id    => 1,
                :name           => "Ionic Bloom (Soft Water) 1 litre", 
                :weight         => 1260,
                :order_code     => "05-210-040",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Bloom1L.jpg"
        )
                @product.sale_price =  3.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 684, 
                :supplier_id    => 1,
                :name           => "Ionic Bloom (Soft Water) 5 litre", 
                :weight         => 6130,
                :order_code     => "05-210-050",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Bloom5L.jpg"
        )
                @product.sale_price =  7.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 685, 
                :supplier_id    => 1,
                :name           => "Ionic Bloom Soft Water 20L", 
                :weight         => 6130,
                :order_code     => "05-210-051",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 686, 
                :supplier_id    => 1,
                :name           => "Ionic Bloom (Hard Water) 1 litre", 
                :weight         => 1255,
                :order_code     => "05-210-055",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Bloom1LHW.jpg"
        )
                @product.sale_price =  3.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 687, 
                :supplier_id    => 1,
                :name           => "Ionic Bloom (Hard Water) 5 litre", 
                :weight         => 6230,
                :order_code     => "05-210-065",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Available in Hard and Soft Water Formulas.  Easy to use range with a 1:100 dilution ratio.  Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Bloom5LHW.jpg"
        )
                @product.sale_price =  7.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 688, 
                :supplier_id    => 1,
                :name           => "Ionic Bloom Hard Water 20L", 
                :weight         => 6230,
                :order_code     => "05-210-066",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 689, 
                :supplier_id    => 1,
                :name           => "Ionic Boost 1 litre", 
                :weight         => 1165,
                :order_code     => "05-210-070",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Universal Hard and Soft Water Formula.  Easy to use Additive to give a Boost to the Ionic Range. Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Boost1L.jpg"
        )
                @product.sale_price =  3.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 690, 
                :supplier_id    => 1,
                :name           => "Ionic Boost 5 litre", 
                :weight         => 5655,
                :order_code     => "05-210-080",
                :packaging      => "empty",
                :description    => "Growth Technology Product.  Universal Hard and Soft Water Formula.  Easy to use Additive to give a Boost to the Ionic Range. Great for beginners.",
                :filename       => "http://www.hydrogarden.com/StockPics/Ionic_Boost5L.jpg"
        )
                @product.sale_price =  7.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 691, 
                :supplier_id    => 1,
                :name           => "Ionic Boost 20L", 
                :weight         => 5655,
                :order_code     => "05-210-081",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 692, 
                :supplier_id    => 1,
                :name           => "Non-Ionic Wetting Agent 250ml", 
                :weight         => 46454,
                :order_code     => "06-290-005",
                :packaging      => "empty",
                :description    => "Wetting Agent reduces the surface tension of water.  Add to any foliar feed to greatly assist in the penetration of the leaf tissue enhancing the uptake of the feed.  Also used on dry compacted soil to allow water penetration to the root zone.",
                :filename       => "http://www.hydrogarden.com/StockPics/wetting_agent150ml.jpg"
        )
                @product.sale_price =  2.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 693, 
                :supplier_id    => 1,
                :name           => "Nitrozyme 100ml", 
                :weight         => 140,
                :order_code     => "06-295-005",
                :packaging      => "empty",
                :description    => "Nitrozyme is extracted from a marine plant from the cold North Atlantic.  Can be applied to cuttings, young plants and as a foliar feed. Used as a plant growth accelerator.",
                :filename       => "http://www.hydrogarden.com/StockPics/Nitrozyme_100ml.JPG"
        )
                @product.sale_price =  3.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 694, 
                :supplier_id    => 1,
                :name           => "Nitrozyme 300ml", 
                :weight         => 300,
                :order_code     => "06-295-006",
                :packaging      => "empty",
                :description    => "Nitrozyme is extracted from a marine plant from the cold North Atlantic.  Can be applied to cuttings, young plants and as a foliar feed. Used as a plant growth accelerator.",
                :filename       => "http://www.hydrogarden.com/StockPics/Nitrozyme_250ml.jpg"
        )
                @product.sale_price =  5.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 695, 
                :supplier_id    => 1,
                :name           => "Nitrozyme 1 litre", 
                :weight         => 1000,
                :order_code     => "06-295-007",
                :packaging      => "empty",
                :description    => "Nitrozyme is extracted from a marine plant from the cold North Atlantic.  Can be applied to cuttings, young plants and as a foliar feed. Used as a plant growth accelerator.",
                :filename       => "http://www.hydrogarden.com/StockPics/Nitrozyme_1L.jpg"
        )
                @product.sale_price =  18.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 696, 
                :supplier_id    => 1,
                :name           => "Canna Spanner", 
                :weight         => 10,
                :order_code     => "10-485-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 697, 
                :supplier_id    => 1,
                :name           => "FloraGro 1 litre", 
                :weight         => 1000,
                :order_code     => "05-215-005",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_gro1L.JPG"
        )
                @product.sale_price =  4.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 698, 
                :supplier_id    => 1,
                :name           => "FloraGro 5 litre", 
                :weight         => 7000,
                :order_code     => "05-215-010",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_gro5L.JPG"
        )
                @product.sale_price =  14.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 699, 
                :supplier_id    => 1,
                :name           => "FloraGro 10 litre", 
                :weight         => 12000,
                :order_code     => "05-215-015",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_gro10L.JPG"
        )
                @product.sale_price =  25.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 700, 
                :supplier_id    => 1,
                :name           => "FloraBloom 1 litre", 
                :weight         => 1000,
                :order_code     => "05-215-030",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_bloom1L.JPG"
        )
                @product.sale_price =  4.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 701, 
                :supplier_id    => 1,
                :name           => "FloraBloom 5 litre", 
                :weight         => 7000,
                :order_code     => "05-215-035",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_bloom5L.JPG"
        )
                @product.sale_price =  14.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 702, 
                :supplier_id    => 1,
                :name           => "FloraBloom 10 litre", 
                :weight         => 12000,
                :order_code     => "05-215-040",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_bloom10L.JPG"
        )
                @product.sale_price =  25.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 703, 
                :supplier_id    => 1,
                :name           => "FloraMicro (Soft Water) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-215-055",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_micro1L.JPG"
        )
                @product.sale_price =  4.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 704, 
                :supplier_id    => 1,
                :name           => "FloraMicro (Soft Water) 5 litre", 
                :weight         => 7000,
                :order_code     => "05-215-060",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_micro5L.JPG"
        )
                @product.sale_price =  17.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 705, 
                :supplier_id    => 1,
                :name           => "FloraMicro (Soft Water) 10 litre", 
                :weight         => 12000,
                :order_code     => "05-215-065",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_micro10L.JPG"
        )
                @product.sale_price =  34.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 706, 
                :supplier_id    => 1,
                :name           => "FloraMicro (Hard Water) 1 litre", 
                :weight         => 1000,
                :order_code     => "05-215-080",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_micro1LHW.JPG"
        )
                @product.sale_price =  4.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 707, 
                :supplier_id    => 1,
                :name           => "FloraMicro (Hard Water) 5 litre", 
                :weight         => 7000,
                :order_code     => "05-215-085",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_micro5LHW.JPG"
        )
                @product.sale_price =  17.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 708, 
                :supplier_id    => 1,
                :name           => "FloraMicro (Hard Water) 10 litre", 
                :weight         => 12000,
                :order_code     => "05-215-090",
                :packaging      => "empty",
                :description    => "A professional nutrient system to maximise a plants growth and yields.  The Flora series enables a grower to alter the NPK ratios throughout the growth cycle.  Only the Micro is available in a Hard or Soft Water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/Flora_micro10LHW.JPG"
        )
                @product.sale_price =  34.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 709, 
                :supplier_id    => 1,
                :name           => "GHE Total Gro 1 litre", 
                :weight         => 1000,
                :order_code     => "05-215-105",
                :packaging      => "empty",
                :description    => "Easy to use 1 Part nutrient.  Formula designed to boost active components within medicinal plants and herbs.  Universal hard and soft water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_TotalGro_1L.jpg"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 710, 
                :supplier_id    => 1,
                :name           => "GHE Total Gro 5 litre", 
                :weight         => 7000,
                :order_code     => "05-215-110",
                :packaging      => "empty",
                :description    => "Easy to use 1 Part nutrient.  Formula designed to boost active components within medicinal plants and herbs.  Universal hard and soft water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_TotalGro_5L.jpg"
        )
                @product.sale_price =  15.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 711, 
                :supplier_id    => 1,
                :name           => "GHE Total Bloom 1 litre", 
                :weight         => 1000,
                :order_code     => "05-215-120",
                :packaging      => "empty",
                :description    => "Easy to use 1 Part nutrient.  Formula designed to boost active components within medicinal plants and herbs.  Universal hard and soft water formulation.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_TotalBloom_1L.jpg"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 712, 
                :supplier_id    => 1,
                :name           => "GHE FloraMato 1L", 
                :weight         => 1250,
                :order_code     => "05-215-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 713, 
                :supplier_id    => 1,
                :name           => "GHE FloraMato 5L", 
                :weight         => 6750,
                :order_code     => "05-215-205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 714, 
                :supplier_id    => 1,
                :name           => "GHE Flora Nova Grow 473ml (16 fl oz)", 
                :weight         => 1250,
                :order_code     => "05-215-230",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 715, 
                :supplier_id    => 1,
                :name           => "GHE Flora Nova Grow 946ml (Quart)", 
                :weight         => 6100,
                :order_code     => "05-215-235",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 716, 
                :supplier_id    => 1,
                :name           => "GHE Flora Nova Grow 3.79L (Gallon)", 
                :weight         => 6100,
                :order_code     => "05-215-240",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  36.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 717, 
                :supplier_id    => 1,
                :name           => "GHE Flora Nova Bloom 473ml (16 fl oz)", 
                :weight         => 1250,
                :order_code     => "05-215-245",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 718, 
                :supplier_id    => 1,
                :name           => "GHE Flora Nova Bloom 946ml (Quart)", 
                :weight         => 1250,
                :order_code     => "05-215-250",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 719, 
                :supplier_id    => 1,
                :name           => "GHE Flora Nova Bloom 3.79L (Gallon)", 
                :weight         => 6100,
                :order_code     => "05-215-255",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  36.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 720, 
                :supplier_id    => 1,
                :name           => "GHE Diamond Nectar 500ml", 
                :weight         => 500,
                :order_code     => "06-280-020",
                :packaging      => "empty",
                :description    => "Diamond Nectar is a natural bio stimulator that also contains Fulvic Acids.  Add to your nutrient solution for that extra boost.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_DiamondNectar_500ml.JPG"
        )
                @product.sale_price =  6.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 721, 
                :supplier_id    => 1,
                :name           => "GHE Diamond Nectar 1 litre", 
                :weight         => 1000,
                :order_code     => "06-280-025",
                :packaging      => "empty",
                :description    => "Diamond Nectar is a natural bio stimulator that also contains Fulvic Acids.  Add to your nutrient solution for that extra boost.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_DiamondNectar_1L.JPG"
        )
                @product.sale_price =  10.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 722, 
                :supplier_id    => 1,
                :name           => "GHE Ripen 500ml", 
                :weight         => 600,
                :order_code     => "06-280-040",
                :packaging      => "empty",
                :description    => "Ripen is a late flowering solution that is also known as a forcing solution in the greenhouse industry. Will give you enhanced flowering size and yield.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_Ripen500ml.jpg"
        )
                @product.sale_price =  2.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 723, 
                :supplier_id    => 1,
                :name           => "GHE Ripen 1 litre", 
                :weight         => 1200,
                :order_code     => "06-280-045",
                :packaging      => "empty",
                :description    => "Ripen is a late flowering solution that is also known as a forcing solution in the greenhouse industry. Will give you enhanced flowering size and yield.",
                :filename       => "http://www.hydrogarden.com/StockPics/GH_Ripen1L.jpg"
        )
                @product.sale_price =  4.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 724, 
                :supplier_id    => 1,
                :name           => "GHE Ripen 5 litre", 
                :weight         => 6300,
                :order_code     => "06-280-046",
                :packaging      => "empty",
                :description    => "Ripen is a late flowering solution that is also known as a forcing solution in the greenhouse industry. Will give you enhanced flowering size and yield.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  14.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 725, 
                :supplier_id    => 1,
                :name           => "OxyPlus (H2O2) 250ml", 
                :weight         => 46364,
                :order_code     => "06-265-005",
                :packaging      => "empty",
                :description    => "Add to any non-organic nutrient solution to increase the oxygen content, this can lead to greater photosynthesis and give you healthier plants. Also used to clean out systems between crops. Do not use with beneficial bacteria though !",
                :filename       => "http://www.hydrogarden.com/StockPics/H2O2_250ml.jpg"
        )
                @product.sale_price =  1.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 726, 
                :supplier_id    => 1,
                :name           => "Essentials Silicon+ 250ml", 
                :weight         => 45209,
                :order_code     => "06-265-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 727, 
                :supplier_id    => 1,
                :name           => "Essentials Silicon+ 1L", 
                :weight         => 129589,
                :order_code     => "06-265-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 728, 
                :supplier_id    => 1,
                :name           => "Essentials Silicon+ 5L", 
                :weight         => 581722,
                :order_code     => "06-265-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  11.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 729, 
                :supplier_id    => 1,
                :name           => "Essentials Silicon+ 20L", 
                :weight         => 222686,
                :order_code     => "06-265-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  25.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 730, 
                :supplier_id    => 1,
                :name           => "Vaportek Optimum 4000 Unit Complete", 
                :weight         => 3000,
                :order_code     => "07-300-005",
                :packaging      => "empty",
                :description    => "Vaportek is a powerful system that neutralises unwanted odours.  Using a unique blend of essential oils with a variable output for different sized rooms.  4000 Unit will treat upto 300 cu m.  Replacement cartridges available in 2 odour options.",
                :filename       => "http://www.hydrogarden.com/StockPics/vaportek_optimum4000_unit.JPG"
        )
                @product.sale_price =  126.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 731, 
                :supplier_id    => 1,
                :name           => "Vaportek 4000 Cartridge Neutral", 
                :weight         => 340,
                :order_code     => "07-300-010",
                :packaging      => "empty",
                :description    => "Vaportek is a powerful system that neutralises unwanted odours.  Using a unique blend of essential oils with a variable output for different sized rooms.  4000 Unit will treat upto 300 cu m.  This replacement cartridge is the Neutral odour option.",
                :filename       => "http://www.hydrogarden.com/StockPics/vaportek_4000cartridge.JPG"
        )
                @product.sale_price =  31.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 732, 
                :supplier_id    => 1,
                :name           => "Vaportek 4000 Cartridge Lemon", 
                :weight         => 340,
                :order_code     => "07-300-015",
                :packaging      => "empty",
                :description    => "Vaportek is a powerful system that neutralises unwanted odours.  Using a unique blend of essential oils with a variable output for different sized rooms.  4000 Unit will treat upto 300 cu m.  This replacement cartridge is the Citrus odour option.",
                :filename       => "http://www.hydrogarden.com/StockPics/vaportek_4000cartridge.JPG"
        )
                @product.sale_price =  31.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 733, 
                :supplier_id    => 1,
                :name           => "Vaportek 2 Speed Round Unit Air Cleaner", 
                :weight         => 2600,
                :order_code     => "07-300-020",
                :packaging      => "empty",
                :description    => "Vaportek is a powerful system that neutralises unwanted odours.  Using a unique blend of essential oils with a 2 speed output for different sized rooms. Will treat up to a 23 cu m room.  Replacement cartridges available.",
                :filename       => "http://www.hydrogarden.com/StockPics/vaportek_2speedround_unit.JPG"
        )
                @product.sale_price =  45.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 734, 
                :supplier_id    => 1,
                :name           => "Vaportek Round Unit Replacement Cartridge (Pack of 2)", 
                :weight         => 140,
                :order_code     => "07-300-025",
                :packaging      => "empty",
                :description    => "Vaportek is a powerful system that neutralises unwanted odours.  Using a unique blend of essential oils with a 2 speed output for different sized rooms.  This replacement cartridge is in neutral odour only.",
                :filename       => "http://www.hydrogarden.com/StockPics/VaportekRound_ReplacementCart.JPG"
        )
                @product.sale_price =  14.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 735, 
                :supplier_id    => 1,
                :name           => "Orange Mist Air Freshener 7.0oz (207mls)", 
                :weight         => 240,
                :order_code     => "07-305-025",
                :packaging      => "empty",
                :description    => "This totally unique product is the easiest and most natural way to quickly and safely remove odours.  Great for car, home and office.  Long lasting and great smelling.  70 pieces of fruit go into a 7 oz can of Orangemate !.",
                :filename       => "http://www.hydrogarden.com/StockPics/Orange_mate.jpg"
        )
                @product.sale_price =  4.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 736, 
                :supplier_id    => 1,
                :name           => "Lemon Air Freshener 7.0oz (207mls)", 
                :weight         => 240,
                :order_code     => "07-305-035",
                :packaging      => "empty",
                :description    => "This totally unique product is the easiest and most natural way to quickly and safely remove odours.  Great for car, home and office.  Long lasting and great smelling.  70 pieces of fruit go into a 7 oz can of Orangemate !.",
                :filename       => "http://www.hydrogarden.com/StockPics/Lemon_mate.jpg"
        )
                @product.sale_price =  4.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 737, 
                :supplier_id    => 1,
                :name           => "Hydrozone Ozone Generator with Timer", 
                :weight         => 1000,
                :order_code     => "07-310-005",
                :packaging      => "empty",
                :description    => "This high quality Ozone Generator features fully adjustable output, built in timer and a superior finish.  Will treat rooms to 100 cubic metres in size.  Use our Ozone Test Kit for peace of mind and maximum safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hydrozone.jpg"
        )
                @product.sale_price =  99.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 738, 
                :supplier_id    => 1,
                :name           => "Replacement Ceramic Plate for Hydrozone Ozone Generator", 
                :weight         => 10,
                :order_code     => "07-310-008",
                :packaging      => "empty",
                :description    => "To maintain maximum production of ozone and product reliability, we recommend you replace the ceramic plate at regular intervals.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hydrozone_Replacement_CeramicPlate.jpg"
        )
                @product.sale_price =  8.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 739, 
                :supplier_id    => 1,
                :name           => "Replacement Fan For Hydrozone Ozone Generator", 
                :weight         => 100,
                :order_code     => "07-310-009",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 740, 
                :supplier_id    => 1,
                :name           => "Hydrozone Ozone Test Kit", 
                :weight         => 10,
                :order_code     => "07-310-010",
                :packaging      => "empty",
                :description    => "These ozone detection badges offer peace of mind and maximum safety by ensuring safe levels of ozone at all times.",
                :filename       => "http://www.hydrogarden.com/StockPics/Hydrozone_OzoneTestKit.jpg"
        )
                @product.sale_price =  7.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 741, 
                :supplier_id    => 1,
                :name           => "Fresh T Piece Connector 100mm", 
                :weight         => 340,
                :order_code     => "08-330-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 742, 
                :supplier_id    => 1,
                :name           => "Fresh T Piece Connector 125mm", 
                :weight         => 340,
                :order_code     => "08-330-010",
                :packaging      => "empty\n",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 743, 
                :supplier_id    => 1,
                :name           => "Fresh T Piece Connector 150mm", 
                :weight         => 340,
                :order_code     => "08-330-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  7.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 744, 
                :supplier_id    => 1,
                :name           => "Fresh T Piece Connector 200mm", 
                :weight         => 340,
                :order_code     => "08-330-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  11.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 745, 
                :supplier_id    => 1,
                :name           => "Fresh T Piece Connector 250mm", 
                :weight         => 340,
                :order_code     => "08-330-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  15.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 746, 
                :supplier_id    => 1,
                :name           => "Fresh T Piece Connector 300mm", 
                :weight         => 340,
                :order_code     => "08-330-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 747, 
                :supplier_id    => 1,
                :name           => "Fresh Y Piece Connector 100mm", 
                :weight         => 340,
                :order_code     => "08-330-105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 748, 
                :supplier_id    => 1,
                :name           => "Fresh Y Piece Connector 125mm", 
                :weight         => 340,
                :order_code     => "08-330-110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 749, 
                :supplier_id    => 1,
                :name           => "Fresh Y Piece Connector 150mm", 
                :weight         => 340,
                :order_code     => "08-330-115",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  13.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 750, 
                :supplier_id    => 1,
                :name           => "Fresh Y Piece Connector 200mm", 
                :weight         => 340,
                :order_code     => "08-330-120",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  16.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 751, 
                :supplier_id    => 1,
                :name           => "Fresh Y Piece Connector 250mm", 
                :weight         => 340,
                :order_code     => "08-330-125",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 752, 
                :supplier_id    => 1,
                :name           => "Fresh Y Piece Connector 300mm", 
                :weight         => 340,
                :order_code     => "08-330-130",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  22.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 753, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 175m3/hr - Filter 100/250, Alloy Ducting x 5m, HVK 100A1 Fan", 
                :weight         => 5000,
                :order_code     => "08-340-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  46.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 754, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 350m3/hr - Filter 125/200, Alloy Ducting x 5m, HVK 125L1 Fan", 
                :weight         => 6200,
                :order_code     => "08-340-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  58.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 755, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 480m3/hr - Filter 150/500, Alloy Ducting x 5m, HVK 150A1 Fan", 
                :weight         => 11000,
                :order_code     => "08-340-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  68.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 756, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 600m3/hr - Filter 150/800, Alloy Ducting x 5m, HVK 150L1 Fan", 
                :weight         => 14400,
                :order_code     => "08-340-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  88.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 757, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 760m3/hr - Filter 200/500, Alloy Ducting x 5m, HVK 200A1 Fan", 
                :weight         => 22500,
                :order_code     => "08-340-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  93.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 758, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 1020m3/hr - Filter 250/750, Alloy Ducting x5m, HVK 250L1 Fan", 
                :weight         => 26400,
                :order_code     => "08-340-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  121.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 759, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 1300m3/hr - Filter 315/750, Alloy Ducting x 5m HVK 315A1 Fan", 
                :weight         => 36200,
                :order_code     => "08-340-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  169.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 760, 
                :supplier_id    => 1,
                :name           => "Fresh Air Kit for 1700m3/hr - Filter 315/1250, Alloy Ducting x 5m, HVK 315L1 Fan", 
                :weight         => 52800,
                :order_code     => "08-340-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  202.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 761, 
                :supplier_id    => 1,
                :name           => "Mountain Air Activated Carbon Filter 0416 100/400(4') 70LPS", 
                :weight         => 4400,
                :order_code     => "08-350-050",
                :packaging      => "empty",
                :description    => "Due to their superior carbon quality and increased air flow these are the best filters on the market.  2 years use before refilling is not uncommon.  Each filter is supplied sealed and boxed for maximum protection.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  42.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 762, 
                :supplier_id    => 1,
                :name           => "Mountain Air Filter 0520 - 125/500 (5') 295m3/hr", 
                :weight         => 5000,
                :order_code     => "08-350-051",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  52.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 763, 
                :supplier_id    => 1,
                :name           => "Mountain Air Activated Carbon Filter 0620 150/500 (6') 124LPS", 
                :weight         => 9700,
                :order_code     => "08-350-055",
                :packaging      => "empty",
                :description    => "Due to their superior carbon quality and increased air flow these are the best filters on the market.  2 years use before refilling is not uncommon.  Each filter is supplied sealed and boxed for maximum protection.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  57.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 764, 
                :supplier_id    => 1,
                :name           => "Mountain Air Filter 0640 - 150/1000 (6') 1130m3/hr", 
                :weight         => 12000,
                :order_code     => "08-350-056",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  88.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 765, 
                :supplier_id    => 1,
                :name           => "Mountain Air Filter 0840 - 200/1000 (8') 1610m3/hr", 
                :weight         => 22100,
                :order_code     => "08-350-072",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  101.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 766, 
                :supplier_id    => 1,
                :name           => "Mountain Air Filter 1030 - 250/800 (10') 1420m3/hr", 
                :weight         => 26000,
                :order_code     => "08-350-077",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  108.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 767, 
                :supplier_id    => 1,
                :name           => "Mountain Air Filter 1230 - 315/800 (12') 1660m3/hr", 
                :weight         => 28000,
                :order_code     => "08-350-082",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  125.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 768, 
                :supplier_id    => 1,
                :name           => "Mountain Air Filter 1240 - 315/1000 (12') 2300m3/hr", 
                :weight         => 25000,
                :order_code     => "08-350-087",
                :packaging      => "empty",
                :description    => "Due to their superior carbon quality and increased air flow these are the best filters on the market.  2 years use before refilling is not uncommon.  Each filter is supplied sealed and boxed for maximum protection.\n",
                :filename       => "empty"
        )
                @product.sale_price =  143.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 769, 
                :supplier_id    => 1,
                :name           => "Mountain Air Reducing Collar 250-200mm (10' - 8')", 
                :weight         => 500,
                :order_code     => "08-350-100",
                :packaging      => "empty",
                :description    => "Due to their superior carbon quality and increased air flow these are the best filters on the market.  2 years use before refilling is not uncommon.  Each filter is supplied sealed and boxed for maximum protection.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  8.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 770, 
                :supplier_id    => 1,
                :name           => "HydroGarden Filter Stand to Suit all Makes and Sizes.", 
                :weight         => 9250,
                :order_code     => "08-350-102",
                :packaging      => "empty",
                :description    => "Great filter stands for any filter ! Can hold all sizes and makes of filter.  Can be altered in height and angle for those tight spaces.  Comes ready packed in a convenient size box.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  38.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 771, 
                :supplier_id    => 1,
                :name           => "HVK100A1 Fan 175 m3/hr", 
                :weight         => 2000,
                :order_code     => "08-355-005",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  33.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 772, 
                :supplier_id    => 1,
                :name           => "HVK125A1 Fan 225 m3/hr", 
                :weight         => 2200,
                :order_code     => "08-355-010",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  37.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 773, 
                :supplier_id    => 1,
                :name           => "HVK125L1 Fan - 290m3/hr", 
                :weight         => 2200,
                :order_code     => "08-355-012",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  38.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 774, 
                :supplier_id    => 1,
                :name           => "HVK150A1 Fan 420 m3/hr", 
                :weight         => 3000,
                :order_code     => "08-355-015",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  39.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 775, 
                :supplier_id    => 1,
                :name           => "HVK150L1 Fan - 680m3/hr", 
                :weight         => 3400,
                :order_code     => "08-355-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  49.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 776, 
                :supplier_id    => 1,
                :name           => "HVK200A1 Fan - 750m3/hr", 
                :weight         => 4000,
                :order_code     => "08-355-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  48.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 777, 
                :supplier_id    => 1,
                :name           => "HVK200L1 Fan - 950m3/hr", 
                :weight         => 4000,
                :order_code     => "08-355-027",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  62.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 778, 
                :supplier_id    => 1,
                :name           => "HVK250A1 Fan - 780m3/hr", 
                :weight         => 4400,
                :order_code     => "08-355-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  55.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 779, 
                :supplier_id    => 1,
                :name           => "HVK250L1 Fan - 1020m3/hr", 
                :weight         => 4400,
                :order_code     => "08-355-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  66.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 780, 
                :supplier_id    => 1,
                :name           => "HVK315A1 Fan - 1300m3/hr", 
                :weight         => 5200,
                :order_code     => "08-355-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  87.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 781, 
                :supplier_id    => 1,
                :name           => "HVK315L1 Fan - 1800m3/hr", 
                :weight         => 6800,
                :order_code     => "08-355-045",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  102.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 782, 
                :supplier_id    => 1,
                :name           => "Budget Fan 100 - 100mm (4') 130m3/hr With 2m Cable and UK Plug", 
                :weight         => 700,
                :order_code     => "08-355-050",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  17.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 783, 
                :supplier_id    => 1,
                :name           => "Budget Fan 120 - 120mm (5') 195m3/hr With 2m cable and UK Plug", 
                :weight         => 795,
                :order_code     => "08-355-055",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  18.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 784, 
                :supplier_id    => 1,
                :name           => "Budget Fan 150 - 150mm (6') 320m3/hr With 2m cable and UK Plug", 
                :weight         => 850,
                :order_code     => "08-355-060",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  21.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 785, 
                :supplier_id    => 1,
                :name           => "S&P TD160/100 (4') 160m/h Plastic Duct Fan", 
                :weight         => 1500,
                :order_code     => "08-355-300",
                :packaging      => "empty",
                :description    => "S&P TD Inline Fans are quiet, made from tough plastic construction.  The unique design means that the motor and impeller assembly can be removed without dismantling the adjacent mounting or duct work.  TD160/100 will move 160 cu m per hour.",
                :filename       => "http://www.hydrogarden.com/StockPics/TDmixvent_fan.jpg"
        )
                @product.sale_price =  32.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 786, 
                :supplier_id    => 1,
                :name           => "S&P TD250/100 (4') 250m/h Plastic Duct Fan", 
                :weight         => 2500,
                :order_code     => "08-355-305",
                :packaging      => "empty",
                :description    => "S&P TD Inline Fans are quiet, made from tough plastic construction.  The unique design means that the motor and impeller assembly can be removed without dismantling the adjacent mounting or duct work.  TD250/100 will move 250 cu m per hour.",
                :filename       => "http://www.hydrogarden.com/StockPics/TDmixvent_fan.jpg"
        )
                @product.sale_price =  42.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 787, 
                :supplier_id    => 1,
                :name           => "S&P TD350/125 (5') 350m/h Plastic Duct Fan", 
                :weight         => 2750,
                :order_code     => "08-355-310",
                :packaging      => "empty",
                :description    => "S&P TD Inline Fans are quiet, made from tough plastic construction.  The unique design means that the motor and impeller assembly can be removed without dismantling the adjacent mounting or duct work.  TD350/125 will move 350 cu m per hour.",
                :filename       => "http://www.hydrogarden.com/StockPics/TDmixvent_fan.jpg"
        )
                @product.sale_price =  49.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 788, 
                :supplier_id    => 1,
                :name           => "S&P TD500/150 (6') 500m/h Plastic Duct Fan", 
                :weight         => 3000,
                :order_code     => "08-355-315",
                :packaging      => "empty",
                :description    => "S&P TD Inline Fans are quiet, made from tough plastic construction.  The unique design means that the motor and impeller assembly can be removed without dismantling the adjacent mounting or duct work.  TD500/150 will move 535 cu m per hour.",
                :filename       => "http://www.hydrogarden.com/StockPics/TDmixvent_fan.jpg"
        )
                @product.sale_price =  54.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 789, 
                :supplier_id    => 1,
                :name           => "Aluminium Ducting 102mm x 5m with 2x Clamps", 
                :weight         => 500,
                :order_code     => "08-360-105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 790, 
                :supplier_id    => 1,
                :name           => "Aluminium Ducting 127mm x 5m with 2x Clamps", 
                :weight         => 1000,
                :order_code     => "08-360-110",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 791, 
                :supplier_id    => 1,
                :name           => "Aluminium Ducting 152mm x 5m with 2x Clamps", 
                :weight         => 2000,
                :order_code     => "08-360-115",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 792, 
                :supplier_id    => 1,
                :name           => "Aluminium Ducting 203mm x 5m with 2x Clamps", 
                :weight         => 2500,
                :order_code     => "08-360-120",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 793, 
                :supplier_id    => 1,
                :name           => "Aluminium Ducting 254mm x 5m with 2x Clamps", 
                :weight         => 3000,
                :order_code     => "08-360-125",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  8.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 794, 
                :supplier_id    => 1,
                :name           => "Aluminium Ducting 315mm x 5m with 2x Clamps", 
                :weight         => 4000,
                :order_code     => "08-360-130",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  10.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 795, 
                :supplier_id    => 1,
                :name           => "Acoustic Ducting  102mm x 5m with 2x Clamps", 
                :weight         => 5000,
                :order_code     => "08-360-150",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 796, 
                :supplier_id    => 1,
                :name           => "Acoustic Ducting  127mm x 5m with 2x Clamps", 
                :weight         => 5500,
                :order_code     => "08-360-155",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 797, 
                :supplier_id    => 1,
                :name           => "Acoustic Ducting 152mm x 5m with 2x Clamps", 
                :weight         => 6000,
                :order_code     => "08-360-160",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 798, 
                :supplier_id    => 1,
                :name           => "Acoustic Ducting  203mm x 5m with 2x Clamps", 
                :weight         => 9000,
                :order_code     => "08-360-165",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  16.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 799, 
                :supplier_id    => 1,
                :name           => "Acoustic Ducting  254mm x 5m with 2x Clamps", 
                :weight         => 10500,
                :order_code     => "08-360-170",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 800, 
                :supplier_id    => 1,
                :name           => "Acoustic Ducting  315mm x 5m with 2x Clamps", 
                :weight         => 13600,
                :order_code     => "08-360-175",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  25.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 801, 
                :supplier_id    => 1,
                :name           => "HydroGarden Primair Fan Speed Controller", 
                :weight         => 900,
                :order_code     => "08-375-015",
                :packaging      => "empty",
                :description    => "This UK made fan controller is excellent value for money and will control all fan sizes.  Features remote thermostat and temperature setting as well as twin fan speed controllers.  A useful bit of kit to assist controlling a growing environment.",
                :filename       => "http://www.hydrogarden.com/StockPics/HydroGarden_Primair.jpg"
        )
                @product.sale_price =  56.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 802, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 100-125mm (4'-5')", 
                :weight         => 170,
                :order_code     => "08-380-005",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer100-125.JPG"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 803, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 150-125mm (6'-5')", 
                :weight         => 230,
                :order_code     => "08-380-010",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer150-125.JPG"
        )
                @product.sale_price =  3.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 804, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 160-150mm", 
                :weight         => 270,
                :order_code     => "08-380-015",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer160-150.JPG"
        )
                @product.sale_price =  4.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 805, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 160-125mm", 
                :weight         => 240,
                :order_code     => "08-380-020",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer160-125.JPG"
        )
                @product.sale_price =  4.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 806, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 200-125mm (8'-5')", 
                :weight         => 340,
                :order_code     => "08-380-030",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer200-125.JPG"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 807, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 200-160mm", 
                :weight         => 360,
                :order_code     => "08-380-035",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer200-160.JPG"
        )
                @product.sale_price =  6.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 808, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 250-200mm (10'-8')", 
                :weight         => 460,
                :order_code     => "08-380-040",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer200-250.JPG"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 809, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 315-250mm", 
                :weight         => 470,
                :order_code     => "08-380-045",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "http://www.hydrogarden.com/StockPics/vent_reducer250-315.JPG"
        )
                @product.sale_price =  7.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 810, 
                :supplier_id    => 1,
                :name           => "Ventilation Reducer 315mm-300mm", 
                :weight         => 470,
                :order_code     => "08-380-050",
                :packaging      => "empty",
                :description    => "Used to step down or step up in ventilation applications.  Full range available!",
                :filename       => "empty"
        )
                @product.sale_price =  12.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 811, 
                :supplier_id    => 1,
                :name           => "Home Edition K2600 Carbon Filter 160m3 100/250 (4')", 
                :weight         => 2500,
                :order_code     => "08-350-003",
                :packaging      => "empty",
                :description    => "Our high quality carbon filters are the best available.  Activated carbon absorb unwanted smells as the air is passed through them.  Attach to a Ruck Fan for best results.  We can refill them when the Filter needs it, usually after 9 to 12 months.",
                :filename       => "http://www.hydrogarden.com/StockPics/Carbonfilter_160.JPG"
        )
                @product.sale_price =  14.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 812, 
                :supplier_id    => 1,
                :name           => "Home Edition K2602 Carbon Filter 420m3 150/400 (6')", 
                :weight         => 6000,
                :order_code     => "08-350-020",
                :packaging      => "empty",
                :description    => "Our high quality carbon filters are the best available.  Activated carbon absorb unwanted smells as the air is passed through them.  Attach to a Ruck Fan for best results.  We can refill them when the Filter needs it, usually after 9 to 12 months.",
                :filename       => "http://www.hydrogarden.com/StockPics/Carbonfilter_420.JPG"
        )
                @product.sale_price =  29.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 813, 
                :supplier_id    => 1,
                :name           => "Home Edition K2603 Carbon Filter 780m3 150/650 (6')", 
                :weight         => 9000,
                :order_code     => "08-350-027",
                :packaging      => "empty",
                :description    => "Our high quality carbon filters are the best available.  Activated carbon absorb unwanted smells as the air is passed through them.  Attach to a Ruck Fan for best results.  We can refill them when the Filter needs it, usually after 9 to 12 months.",
                :filename       => "http://www.hydrogarden.com/StockPics/Carbonfilter_760.JPG"
        )
                @product.sale_price =  40.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 814, 
                :supplier_id    => 1,
                :name           => "Carbon Filter 980m3 250/600 (10')", 
                :weight         => 16000,
                :order_code     => "08-350-030",
                :packaging      => "empty",
                :description    => "Our high quality carbon filters are the best available.  Activated carbon absorb unwanted smells as the air is passed through them.  Attach to a Ruck Fan for best results.  We can refill them when the Filter needs it, usually after 9 to 12 months.",
                :filename       => "http://www.hydrogarden.com/StockPics/Carbonfilter_980.JPG"
        )
                @product.sale_price =  45.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 815, 
                :supplier_id    => 1,
                :name           => "Millen-I-Air 23cm (9') Air Circulator - 3 Speed", 
                :weight         => 5000,
                :order_code     => "08-355-230",
                :packaging      => "empty",
                :description    => "0",
                :filename       => "empty"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 816, 
                :supplier_id    => 1,
                :name           => "Millen-I-Air 30cm (12') Air Circulator - 3 Speed", 
                :weight         => 5000,
                :order_code     => "08-355-235",
                :packaging      => "empty",
                :description    => "3 speed air circulator with adjustable tilt head, aluminium blades & robust silver coloured frame. Fully assembled.",
                :filename       => "empty"
        )
                @product.sale_price =  19.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 817, 
                :supplier_id    => 1,
                :name           => "Prem-I-Air 40.5cm (16') Pedestal Fan - 3 Speed", 
                :weight         => 5000,
                :order_code     => "08-355-237",
                :packaging      => "empty",
                :description    => "3-speed pedestal fan with oscillating function, adjustable height and quiet operation. Perfect for moving air through your growroom.",
                :filename       => "empty"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 818, 
                :supplier_id    => 1,
                :name           => "Spare CO2 Fibre Washer for CO2 Kit", 
                :weight         => 10,
                :order_code     => "09-400-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 819, 
                :supplier_id    => 1,
                :name           => "Layflat Tubing Blind 65mm x 500m  roll (Sell by metre)", 
                :weight         => 10,
                :order_code     => "09-400-045",
                :packaging      => "empty",
                :description    => "This Lay Flat tubing is the ideal product to pipe your bottled CO2 around the grow room.  It is flexible and lightweight.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  0.12
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 820, 
                :supplier_id    => 1,
                :name           => "Ecotechnics UnisCO2 Controller", 
                :weight         => 2000,
                :order_code     => "09-400-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  90.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 821, 
                :supplier_id    => 1,
                :name           => "Ecotechnics UnisCO2 Gas Regulator", 
                :weight         => 2000,
                :order_code     => "09-400-205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  50.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 822, 
                :supplier_id    => 1,
                :name           => "Mist Maker DK3 240ml/h Humidifier", 
                :weight         => 3400,
                :order_code     => "09-435-100",
                :packaging      => "empty",
                :description    => "Provides 100% Humidity instantly ! Aids rapid growth rates, delivering greater nutrient uptake and transportation. Reduces the risk of Spider Mite Infestations. Place in a large propagator and watch the vapour float in seconds. Lasts up to 2000 hours",
                :filename       => "http://www.hydrogarden.com/StockPics/09-435-100_MistMaker_DK3.jpg"
        )
                @product.sale_price =  48.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 823, 
                :supplier_id    => 1,
                :name           => "Mist Maker DK5 400ml/h Humidifier", 
                :weight         => 5650,
                :order_code     => "09-435-105",
                :packaging      => "empty",
                :description    => "Provides 100% Humidity instantly ! Aids rapid growth rates, delivering greater nutrient uptake and transportation. Reduces the risk of Spider Mite Infestations. Place in a large propagator and watch the vapour float in seconds. Lasts up to 2000 hours",
                :filename       => "http://www.hydrogarden.com/StockPics/09-435-105_MistMaker_DK5.jpg"
        )
                @product.sale_price =  75.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 824, 
                :supplier_id    => 1,
                :name           => "Float for Mist Maker DK3 240ml/h Humidifier", 
                :weight         => 250,
                :order_code     => "09-435-150",
                :packaging      => "empty",
                :description    => "Correct the height of your mist maker to suit your water level.  For maximum performance, the mist maker should be placed just below water level. No tools required.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-435-150-MistMaker_FloatDK3.jpg"
        )
                @product.sale_price =  7.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 825, 
                :supplier_id    => 1,
                :name           => "Float for Mist Maker DK5 400ml/h Humidifier", 
                :weight         => 340,
                :order_code     => "09-435-155",
                :packaging      => "empty",
                :description    => "Correct the height of your mist maker to suit your water level.  For maximum performance, the mist maker should be placed just below water level. No tools required.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-435-155_MistMaker_FloatDK5.jpg"
        )
                @product.sale_price =  7.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 826, 
                :supplier_id    => 1,
                :name           => "Replacement Ceramic Disc for Mist Maker 3", 
                :weight         => 340,
                :order_code     => "09-435-160",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 827, 
                :supplier_id    => 1,
                :name           => "Replacement Ceramic Disc for Mist Maker 5", 
                :weight         => 340,
                :order_code     => "09-435-165",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 828, 
                :supplier_id    => 1,
                :name           => "Eazi Roll Twin in Retail Clam Pack", 
                :weight         => 200,
                :order_code     => "03-135-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 829, 
                :supplier_id    => 1,
                :name           => "Pest Off Pistol, 500ml Trigger Spray Unit", 
                :weight         => 80,
                :order_code     => "10-475-030",
                :packaging      => "empty",
                :description    => "Complete with instructions, the Pest Off Pistol is the convenient way to mix and apply Pest Off.  Remember to spray the complete plant until run off.",
                :filename       => "http://www.hydrogarden.com/StockPics/PestOff_Pistol.JPG"
        )
                @product.sale_price =  0.83
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 830, 
                :supplier_id    => 1,
                :name           => "50mm (2'') X 45m Cloth Duct Tape", 
                :weight         => 460,
                :order_code     => "08-370-005",
                :packaging      => "empty",
                :description    => "Multi-purpose Cloth Duct Tape - 50mm wide by 45m long. Useful in many, many situations.",
                :filename       => "http://www.hydrogarden.com/StockPics/Cloth_DuctTape.jpg"
        )
                @product.sale_price =  2.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 831, 
                :supplier_id    => 1,
                :name           => "2' Aluminium Duct Tape (50mm x 45m)", 
                :weight         => 460,
                :order_code     => "08-370-010",
                :packaging      => "empty",
                :description    => "Ideal for joining and sealing all ventilation applications",
                :filename       => "empty"
        )
                @product.sale_price =  3.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 832, 
                :supplier_id    => 1,
                :name           => "Clear Silicon Sealer 300ml", 
                :weight         => 500,
                :order_code     => "10-500-010",
                :packaging      => "empty",
                :description    => "A tube of clear silicon sealant can be used to seal all manner of small leaks.  A useful item to have in the grow room.",
                :filename       => "http://www.hydrogarden.com/StockPics/silicon.jpg"
        )
                @product.sale_price =  2.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 833, 
                :supplier_id    => 4,
                :name           => "REFLECTIVE TAPE 75mm x 50M", 
                :weight         => 212,
                :order_code     => "RI204",
                :packaging      => "empty",
                :description    => "Superior aluminium foil tape, extra sticky, extra reflective. Use to join ducting to filters and silencers and for a reflective seem in your grow room walls.",
                :filename       => "image requested from nutriculture"
        )
                @product.sale_price =  1.91
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 834, 
                :supplier_id    => 1,
                :name           => "HydroGarden Essentials pH Meter", 
                :weight         => 170,
                :order_code     => "09-410-020",
                :packaging      => "empty",
                :description    => "Essentials pH meter is designed to give highly accurate readings in 20 seconds! Convenient & easy to use, it is automatically temperature compensated and has 1-3 year life span.This robust meter has built in energy saving mode & low battery indicator",
                :filename       => "http://www.hydrogarden.com/StockPics/09-410-020_Essentials_pHMeter.jpg"
        )
                @product.sale_price =  19.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 835, 
                :supplier_id    => 1,
                :name           => "Essentials pH Test Kit", 
                :weight         => 701,
                :order_code     => "09-410-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 836, 
                :supplier_id    => 1,
                :name           => "pH Down EasyControl 250ml (25% Phosphoric Acid)", 
                :weight         => 51906,
                :order_code     => "09-420-005",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Less concentrated formula, safer solution and easier to use.  Ideal for the novice grower.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-420-005_pHDown25_250ml.jpg"
        )
                @product.sale_price =  0.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 837, 
                :supplier_id    => 1,
                :name           => "CF Standard 2.76ms 250ml", 
                :weight         => 43564,
                :order_code     => "09-430-005",
                :packaging      => "empty",
                :description    => "Use to Calibrate your EC/CF meter every week to ensure maximum accuracy.  Features CRC Cap for Safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/CFstandard_250ml.JPG"
        )
                @product.sale_price =  0.99
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 838, 
                :supplier_id    => 1,
                :name           => "Essentials CF Standard 2.8ms 30ml Sachet (Box 25)", 
                :weight         => 2213,
                :order_code     => "09-430-007",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  11.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 839, 
                :supplier_id    => 1,
                :name           => "CF Standard 2.76ms 1 litre", 
                :weight         => 126014,
                :order_code     => "09-430-010",
                :packaging      => "empty",
                :description    => "Use to Calibrate your EC/CF meter every week to ensure maximum accuracy.  Features CRC Cap for Safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/CFstandard_1L.JPG"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 840, 
                :supplier_id    => 1,
                :name           => "pH Buffer 4 250ml", 
                :weight         => 43564,
                :order_code     => "09-430-015",
                :packaging      => "empty",
                :description    => "Use to Calibrate your pH meter every week to ensure maximum accuracy.  Features CRC Cap for Safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/pHBuffer4_250ml.JPG"
        )
                @product.sale_price =  0.99
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 841, 
                :supplier_id    => 1,
                :name           => "Essentials pH Buffer 4 30ml Sachet (Box 25)", 
                :weight         => 2213,
                :order_code     => "09-430-017",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  11.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 842, 
                :supplier_id    => 1,
                :name           => "pH Buffer 4 1litre", 
                :weight         => 126014,
                :order_code     => "09-430-020",
                :packaging      => "empty",
                :description    => "Use to Calibrate your pH meter every week to ensure maximum accuracy.  Features CRC Cap for Safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/pHBuffer4_1L.JPG"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 843, 
                :supplier_id    => 1,
                :name           => "pH Buffer 7 250ml", 
                :weight         => 43564,
                :order_code     => "09-430-025",
                :packaging      => "empty",
                :description    => "Use to Calibrate your pH meter every week to ensure maximum accuracy.  Features CRC Cap for Safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/pHBuffer7_250ml.JPG"
        )
                @product.sale_price =  0.99
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 844, 
                :supplier_id    => 1,
                :name           => "Essentials pH Buffer 7 30ml Sachet (Box 25)", 
                :weight         => 2213,
                :order_code     => "09-430-027",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  11.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 845, 
                :supplier_id    => 1,
                :name           => "pH Buffer 7 1litre", 
                :weight         => 126014,
                :order_code     => "09-430-030",
                :packaging      => "empty",
                :description    => "Use to Calibrate your pH meter every week to ensure maximum accuracy.  Features CRC Cap for Safety.",
                :filename       => "http://www.hydrogarden.com/StockPics/pHBuffer7_1L.JPG"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 846, 
                :supplier_id    => 4,
                :name           => "pH TEST KIT - range pH6 - 7.6", 
                :weight         => 50,
                :order_code     => "AC108",
                :packaging      => "empty",
                :description    => "we have content",
                :filename       => "we have image"
        )
                @product.sale_price =  1.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 847, 
                :supplier_id    => 4,
                :name           => "ACID TEST KIT 4-10", 
                :weight         => 50,
                :order_code     => "AC109",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 848, 
                :supplier_id    => 1,
                :name           => "Canna Organic pH Down 1 litre", 
                :weight         => 1200,
                :order_code     => "09-420-030",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/Awaiting Image.jpg"
        )
                @product.sale_price =  4.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 849, 
                :supplier_id    => 1,
                :name           => "Canna pH Down Grow 1 litre", 
                :weight         => 1200,
                :order_code     => "09-420-035",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_Phdown_grow.jpg"
        )
                @product.sale_price =  3.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 850, 
                :supplier_id    => 1,
                :name           => "Canna pH Down Bloom 1 litre", 
                :weight         => 1200,
                :order_code     => "09-420-040",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_Phdown_bloom.jpg"
        )
                @product.sale_price =  3.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 851, 
                :supplier_id    => 1,
                :name           => "Canna pH Up 1 litre", 
                :weight         => 1200,
                :order_code     => "09-420-045",
                :packaging      => "empty",
                :description    => "High Quality pH adjustment in a bottle.  Features CRC cap for safety.  Highly concentrated so only a little is needed.  Always dilute prior to use.",
                :filename       => "http://www.hydrogarden.com/StockPics/Canna_Phup.JPG"
        )
                @product.sale_price =  3.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 852, 
                :supplier_id    => 1,
                :name           => "HydroGarden Essentials EC Meter", 
                :weight         => 170,
                :order_code     => "09-415-020",
                :packaging      => "empty",
                :description    => "Essentials EC meter is designed to give highly accurate readings in 20 seconds! Convenient & easy to use, it is automatically temperature compensated and has 1-3 year life span.This robust meter has built in energy saving mode & low battery indicator",
                :filename       => "http://www.hydrogarden.com/StockPics/09-415-020_Essentials_ECMeter.jpg"
        )
                @product.sale_price =  24.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 853, 
                :supplier_id    => 2,
                :name           => "POTTING STATION (TIDY TRAY+SHELF+SIEVE+SCOOP)", 
                :weight         => 0,
                :order_code     => "G48STA",
                :packaging      => "Mail Order Box",
                :description    => "data entry required",
                :filename       => "0"
        )
                @product.sale_price =  8.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 854, 
                :supplier_id    => 2,
                :name           => "GARDEN SCOOP", 
                :weight         => 0,
                :order_code     => "G61",
                :packaging      => "Boxed in 20's - no individual packaging supplied",
                :description    => "Moulded in 100% recycled Nylon for outstanding strength, this flat based scoop is ideal for collecting compost, grit and fertiliser.",
                :filename       => "images/garland/Scoop - Hi Res"
        )
                @product.sale_price =  0.88
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 855, 
                :supplier_id    => 2,
                :name           => "JUMBO TIDY PAN", 
                :weight         => 0,
                :order_code     => "G97",
                :packaging      => "Boxed in 10's - black mail order bag included",
                :description    => "A seriously useful tool not just for keen gardeners but all home owners. Essentially this is an oversized dustpan, designed for exterior use. The extra wide ‘mouth’ is perfectly suited for use in conjunction with yard brooms. The Jumbo Tidy Pan is perfect",
                :filename       => "images/garland/Jumbo Tidy Pan In Use - Hi Res"
        )
                @product.sale_price =  2.92
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 856, 
                :supplier_id    => 2,
                :name           => "2 IN 1 SIEVE", 
                :weight         => 0,
                :order_code     => "G104",
                :packaging      => "Boxed in 10's - black mail order bag included",
                :description    => "Highly practical, deep plastic sieve, supplied complete with two interchangeable screens - 6mm and 12mm hole size. Each screen features tough, galvanised woven wire. The plastic outer is made from recycled polypropylene.",
                :filename       => "images/garland/2 in 1 Sieve Hi Res"
        )
                @product.sale_price =  2.97
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 857, 
                :supplier_id    => 1,
                :name           => "Dial Hygrometer 30/411", 
                :weight         => 30,
                :order_code     => "09-435-015",
                :packaging      => "empty",
                :description    => "Monitor the humidity of your grow room with this compact yet reliable meter.  Wall or shelf mounted to suit your needs.",
                :filename       => "http://www.hydrogarden.com/StockPics/dial_hydrometer.jpg"
        )
                @product.sale_price =  1.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 858, 
                :supplier_id    => 1,
                :name           => "Digital Combo Nutrient and Grow Room Thermometer (IT-210)", 
                :weight         => 100,
                :order_code     => "09-435-050",
                :packaging      => "empty",
                :description    => "Simultaneously displays your nutrient tank and growroom temperature reliably. Features extreme temperature audible alarm, designed with a large LCD display for easy reading. Wall or surface mounted to suit your needs. Batteries included.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-435-050_NutrientGrowroom_Thermometer.jpg"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 859, 
                :supplier_id    => 1,
                :name           => "IT-202 Digital Min/Max Thermo-Hygrometer", 
                :weight         => 100,
                :order_code     => "09-435-060",
                :packaging      => "empty",
                :description    => "Simultaneously displays your growroom/greenhouse temperature & humidity. Provides accurate readings on easy to read large LCD screen. Records highest & lowest temperature values at a push of a button. Set your own time frame. Wall or surface mounted.",
                :filename       => "http://www.hydrogarden.com/StockPics/09-435-060_MinMax_ThermoHygrometer.jpg"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 860, 
                :supplier_id    => 4,
                :name           => "Digital Max/Min Thermometer & Hygrometer", 
                :weight         => 200,
                :order_code     => "TH100",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  6.18
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 861, 
                :supplier_id    => 1,
                :name           => "Pocket Microscope x 30 7520", 
                :weight         => 70,
                :order_code     => "10-465-010",
                :packaging      => "empty",
                :description    => "It is important to monitor your garden for pests and insects.  A microscope aids the rapid identification of such pests.",
                :filename       => "http://www.hydrogarden.com/StockPics/microscope_pocket.JPG"
        )
                @product.sale_price =  5.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 862, 
                :supplier_id    => 1,
                :name           => "Pocket Microscope x 60 - 100 with Stand", 
                :weight         => 150,
                :order_code     => "10-465-015",
                :packaging      => "empty",
                :description    => "It is important to monitor your grow room for pests and insects.  A microscope aids the rapid identification of such pests.",
                :filename       => "http://www.hydrogarden.com/StockPics/microscope.JPG"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 863, 
                :supplier_id    => 1,
                :name           => "Pocket Magnifier 4x/6x/10x with LED and Batteries", 
                :weight         => 150,
                :order_code     => "10-465-020",
                :packaging      => "empty",
                :description    => "A great little magnifier you can hook onto your keyring and give yourself 4x 6x and 10x magnification plus a light. Great for spotting pests.",
                :filename       => "empty"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 864, 
                :supplier_id    => 1,
                :name           => "Pocket Microscope 60x - 100x Zoom with LED and Batteries", 
                :weight         => 150,
                :order_code     => "10-465-025",
                :packaging      => "empty",
                :description    => "It is important to monitor your garden for pests and insects.  A microscope aids the rapid identification of such pests.",
                :filename       => "empty"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 865, 
                :supplier_id    => 1,
                :name           => "Grasslin Mechanical 24hr Timer", 
                :weight         => 250,
                :order_code     => "10-470-010",
                :packaging      => "empty",
                :description    => "Use to switch on or off lights, pumps, fans etc.  This high quality timer will not let you down. Accurate, with 15minute time intervals. Features simple switch to change operating mode between timer, on and off.\n\nMust use in conjunction with a Relay Conta",
                :filename       => "http://www.hydrogarden.com/StockPics/grasslinTimer_mechanical.jpg"
        )
                @product.sale_price =  7.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 866, 
                :supplier_id    => 1,
                :name           => "Grasslin Electronic Timer STA500", 
                :weight         => 260,
                :order_code     => "10-470-015",
                :packaging      => "empty",
                :description    => "Use to switch on or off lights, pumps, fans etc.  This high quality timer has a number of options for more accurate control in your grow room compared to Grasslin's Mechanical 24hr timer.",
                :filename       => "http://www.hydrogarden.com/StockPics/grasslinTimer_electrical.jpg"
        )
                @product.sale_price =  13.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 867, 
                :supplier_id    => 1,
                :name           => "HydroGarden Cycle Timer with Light Sensor", 
                :weight         => 1000,
                :order_code     => "10-470-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  37.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 868, 
                :supplier_id    => 4,
                :name           => "Second TMU Interval Timer", 
                :weight         => 130,
                :order_code     => "TM103",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "get from googel images\n"
        )
                @product.sale_price =  20.76
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 869, 
                :supplier_id    => 4,
                :name           => "Minute TMU Interval Timer", 
                :weight         => 130,
                :order_code     => "TM105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "get from googel images"
        )
                @product.sale_price =  20.76
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 870, 
                :supplier_id    => 4,
                :name           => "Budget 24HR Segmented Timer", 
                :weight         => 0,
                :order_code     => "TM108",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 871, 
                :supplier_id    => 4,
                :name           => "Minute TMU Interval Timer with 4 plug gang adapter", 
                :weight         => 250,
                :order_code     => "TM109",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "generic image reuested form Nutriculture"
        )
                @product.sale_price =  24.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 872, 
                :supplier_id    => 4,
                :name           => "Minute TMU Interval Timer with MJ1000 pump", 
                :weight         => 300,
                :order_code     => "TM110",
                :packaging      => "empty",
                :description    => "Perfect combo. A quality pump with adjustable minutes interval timer to give accurate control of irrigation.",
                :filename       => "generic image reuested form Nutriculture"
        )
                @product.sale_price =  32.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 873, 
                :supplier_id    => 4,
                :name           => "MC 450 & TMU MINUTES", 
                :weight         => 300,
                :order_code     => "TM112",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "generic image reuested form Nutriculture"
        )
                @product.sale_price =  26.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 874, 
                :supplier_id    => 1,
                :name           => "Box of 20 Sticky Insect Traps", 
                :weight         => 2200,
                :order_code     => "10-475-015",
                :packaging      => "empty",
                :description    => "Big Yellow sticky insect traps used to monitor the grow room for a range of bugs and pests.  Pack of 12.",
                :filename       => "http://www.hydrogarden.com/StockPics/insect_trap.jpg"
        )
                @product.sale_price =  24.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 875, 
                :supplier_id    => 1,
                :name           => "Slug and Snail Barrier (Pack of 3)", 
                :weight         => 52652,
                :order_code     => "10-475-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 876, 
                :supplier_id    => 1,
                :name           => "Pest Off Concentrate 250ml", 
                :weight         => 43564,
                :order_code     => "10-475-025",
                :packaging      => "empty",
                :description    => "This safe non-toxic product eliminates a variety of pests and works by contact action.  Effective against RSM, White Fly, Green and Black Fly, Thrips and more.  For best results, use with Pest Off Pistol.",
                :filename       => "http://www.hydrogarden.com/StockPics/PestOff250ml.JPG"
        )
                @product.sale_price =  7.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 877, 
                :supplier_id    => 1,
                :name           => "Neem Repel Concentrate 250ml", 
                :weight         => 30764,
                :order_code     => "10-475-100",
                :packaging      => "empty",
                :description    => "A true Neem based insect repellent that is fully compliant to agricultural legislation. This 100% natural organic concentrate is diluted to apply with a trigger spray such as the PestOff Pistol.",
                :filename       => "http://www.hydrogarden.com/StockPics/10-475-100_Neem250ml.jpg"
        )
                @product.sale_price =  7.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 878, 
                :supplier_id    => 1,
                :name           => "Gnat Off Concentrate 250ml", 
                :weight         => 43564,
                :order_code     => "10-475-150",
                :packaging      => "empty",
                :description    => "Fungus Gnat or Black Fly lay their larvae in the rootzone of your plants. Fungaus Gnat Off works by killing the larvae in the rootzone thus eradicating the problem.",
                :filename       => "http://www.hydrogarden.com/StockPics/10-475-150_GnatOff250ml.jpg"
        )
                @product.sale_price =  9.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 879, 
                :supplier_id    => 1,
                :name           => "Bud Rot Stop Concentrate 250ml", 
                :weight         => 43564,
                :order_code     => "10-475-200",
                :packaging      => "empty",
                :description    => "This 100% natural organic concentrate is diluted to apply with a trigger spray such as the PestOff Pistol.",
                :filename       => "http://www.hydrogarden.com/StockPics/10-475-200_BudRotStop_250ml.jpg"
        )
                @product.sale_price =  7.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 880, 
                :supplier_id    => 1,
                :name           => "Yoyo Plant Support Device", 
                :weight         => 20,
                :order_code     => "10-480-005",
                :packaging      => "empty",
                :description    => "This amazing product has been as best seller for years.  It tightens as your plants grow eliminating the need to rehang every other day !",
                :filename       => "http://www.hydrogarden.com/StockPics/Yoyo.JPG"
        )
                @product.sale_price =  0.59
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 881, 
                :supplier_id    => 1,
                :name           => "10cc Plastic Syringe - BD302188", 
                :weight         => 10,
                :order_code     => "10-485-005",
                :packaging      => "empty",
                :description    => "Used to take an accurate amount of concentrate to mix with water or add to your tank.  A must for all grow rooms.",
                :filename       => "http://www.hydrogarden.com/StockPics/Syringe10cc.jpg"
        )
                @product.sale_price =  0.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 882, 
                :supplier_id    => 1,
                :name           => "100cc Plastic Syringe", 
                :weight         => 60,
                :order_code     => "10-485-015",
                :packaging      => "empty",
                :description    => "Used to take an accurate amount of concentrate to mix with water or add to your tank.  A must for all grow rooms.",
                :filename       => "http://www.hydrogarden.com/StockPics/Syringe100cc.jpg"
        )
                @product.sale_price =  1.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 883, 
                :supplier_id    => 1,
                :name           => "3.5cc Pipette - Graduated - 241259504", 
                :weight         => 10,
                :order_code     => "10-485-025",
                :packaging      => "empty",
                :description    => "Used to take an accurate amount of concentrate to mix with water or add to your tank.  A must for all grow rooms.",
                :filename       => "http://www.hydrogarden.com/StockPics/Pipette3.5cc.jpg"
        )
                @product.sale_price =  0.04
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 884, 
                :supplier_id    => 1,
                :name           => "250ml Graduated Jug - 25ml increments", 
                :weight         => 40,
                :order_code     => "10-485-044",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.15
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 885, 
                :supplier_id    => 1,
                :name           => "500ml Graduated Jug - 50ml increments", 
                :weight         => 80,
                :order_code     => "10-485-045",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 886, 
                :supplier_id    => 1,
                :name           => "1L Graduated Jug - 50ml increments", 
                :weight         => 120,
                :order_code     => "10-485-050",
                :packaging      => "empty",
                :description    => "Handy sized 1litre jug with 50ml graduations for accurately measuring and mixing liquids.",
                :filename       => "empty"
        )
                @product.sale_price =  1.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 887, 
                :supplier_id    => 4,
                :name           => "125 ml EMPTY BOTTLE", 
                :weight         => 10,
                :order_code     => "EB101",
                :packaging      => "empty",
                :description    => "Simple. Empty bottle with screw cap lid, useful for a multitude of liquid storage & measuring purposes.",
                :filename       => "empty"
        )
                @product.sale_price =  0.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 888, 
                :supplier_id    => 4,
                :name           => "250 ml EMPTY BOTTLE", 
                :weight         => 10,
                :order_code     => "EB102",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.48
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 889, 
                :supplier_id    => 4,
                :name           => "500 ml EMPTY BOTTLE", 
                :weight         => 20,
                :order_code     => "EB103",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.70
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 890, 
                :supplier_id    => 4,
                :name           => "1 L EMPTY BOTTLE", 
                :weight         => 20,
                :order_code     => "EB104",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.87
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 891, 
                :supplier_id    => 4,
                :name           => "2.5 L EMPTY BOTTLE", 
                :weight         => 30,
                :order_code     => "EB105",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 892, 
                :supplier_id    => 4,
                :name           => "5 L EMPTY BOTTLE", 
                :weight         => 30,
                :order_code     => "EB106",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.17
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 893, 
                :supplier_id    => 4,
                :name           => "GREY GROMMET", 
                :weight         => 0,
                :order_code     => "FT001",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.81
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 894, 
                :supplier_id    => 1,
                :name           => "Aquatherm Submersible Heater 100w", 
                :weight         => 20,
                :order_code     => "10-495-050",
                :packaging      => "empty",
                :description    => "Submerge in your nutrient tank to maintain a constant temperature and aid growing.  Thermostatically controlled for accuracy and piece of mind.",
                :filename       => "http://www.hydrogarden.com/StockPics/Aquatherm100w_SubmersibleHeater.JPG"
        )
                @product.sale_price =  4.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 895, 
                :supplier_id    => 1,
                :name           => "Aquatherm Submersible Heater 200W", 
                :weight         => 200,
                :order_code     => "10-495-060",
                :packaging      => "empty",
                :description    => "Submerge in your nutrient tank to maintain a constant temperature and aid growing.  Thermostatically controlled for accuracy and piece of mind.",
                :filename       => "http://www.hydrogarden.com/StockPics/Aquatherm200w_SubmersibleHeater.JPG"
        )
                @product.sale_price =  4.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 896, 
                :supplier_id    => 1,
                :name           => "Aquatherm Submersible Heater 300W", 
                :weight         => 450,
                :order_code     => "10-495-070",
                :packaging      => "empty",
                :description    => "Submerge in your nutrient tank to maintain a constant temperature and aid growing.  Thermostatically controlled for accuracy and piece of mind.",
                :filename       => "http://www.hydrogarden.com/StockPics/Aquatherm300w_SubmersibleHeater.JPG"
        )
                @product.sale_price =  5.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 897, 
                :supplier_id    => 4,
                :name           => "HYDOR Submersible Heater 50W", 
                :weight         => 250,
                :order_code     => "HE300",
                :packaging      => "empty",
                :description    => "Shatterproof, submersible water tank heater with thermostat typically used in small tanks up between 25 - 75 litres. Experienced broken or unreliable water heaters, these address the problem.\n\nMade by Hydor Theo. \n\n",
                :filename       => "empty"
        )
                @product.sale_price =  12.33
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 898, 
                :supplier_id    => 4,
                :name           => "HYDOR Submersible Heater 100W", 
                :weight         => 300,
                :order_code     => "HE301",
                :packaging      => "empty",
                :description    => "Shatterproof, submersible water tank heater with thermostat typically used in small tanks between 50 - 150 litres. Experienced broken or unreliable water heaters, these address the problem.\n\nMade by Hydor Theo. \n\n",
                :filename       => "empty"
        )
                @product.sale_price =  13.55
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 899, 
                :supplier_id    => 4,
                :name           => "HYDOR Submersible Heater 150W", 
                :weight         => 320,
                :order_code     => "HE302",
                :packaging      => "empty",
                :description    => "\nShatterproof, submersible water tank heater with thermostat typically used in small tanks between 100 - 200litres. Experienced broken or unreliable water heaters, these address the problem.\n\n\nMade by Hydor Theo. \n\n",
                :filename       => "empty"
        )
                @product.sale_price =  15.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 900, 
                :supplier_id    => 4,
                :name           => "HYDOR Submersible Heater 200W", 
                :weight         => 340,
                :order_code     => "HE303",
                :packaging      => "empty",
                :description    => "\nShatterproof, submersible water tank heater with thermostat typically used in small tanks between 150 - 250 litres. Experienced broken or unreliable water heaters, these address the problem.\n\n\nMade by Hydor Theo. \n\n",
                :filename       => "empty"
        )
                @product.sale_price =  15.35
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 901, 
                :supplier_id    => 4,
                :name           => "HYDOR Submersible Heater 300W", 
                :weight         => 480,
                :order_code     => "HE304",
                :packaging      => "empty",
                :description    => "Shatterproof, submersible water tank heater with thermostat typically used in small tanks between 200 - 400 litres. Experienced broken or unreliable water heaters, these address the problem.\n\nMade by Hydor Theo. \n\n",
                :filename       => "empty"
        )
                @product.sale_price =  16.56
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 902, 
                :supplier_id    => 1,
                :name           => "Essentials RoomClean Concentrate 1L", 
                :weight         => 126055,
                :order_code     => "10-510-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 903, 
                :supplier_id    => 1,
                :name           => "Essentials RoomClean RTU Spray 750ml", 
                :weight         => 31931,
                :order_code     => "10-510-050",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 904, 
                :supplier_id    => 1,
                :name           => "Clonex 50ml - Box of 12", 
                :weight         => 1000,
                :order_code     => "12-560-050",
                :packaging      => "empty",
                :description    => "This root promoting gel ensures quick cutting development and is sold through out the world.",
                :filename       => "http://www.hydrogarden.com/StockPics/clonex50ml.jpg"
        )
                @product.sale_price =  27.60
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 905, 
                :supplier_id    => 1,
                :name           => "Clonex 250ml", 
                :weight         => 280,
                :order_code     => "12-560-060",
                :packaging      => "empty",
                :description    => "This root promoting gel ensures quick cutting development and is sold through out the world.",
                :filename       => "http://www.hydrogarden.com/StockPics/Clonex250ml.jpg"
        )
                @product.sale_price =  5.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 906, 
                :supplier_id    => 1,
                :name           => "Gel 4 Plugs 250ml", 
                :weight         => 280,
                :order_code     => "12-560-100",
                :packaging      => "empty",
                :description    => "Achieve outstanding performance with the first rooting gel specifically formulated for use with propagating plugs.  See results in just 3-4 days! Say goodbye to slow rooting lifeless clones and say hello to happy healthy stress free ones!",
                :filename       => "http://www.hydrogarden.com/StockPics/12-560-100_Gel4Plugs.jpg"
        )
                @product.sale_price =  2.49
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 907, 
                :supplier_id    => 1,
                :name           => "Scalpels - Box of 10", 
                :weight         => 100,
                :order_code     => "12-570-020",
                :packaging      => "empty",
                :description    => "Necessary to take clean cuttings with the minimum of stress. ",
                :filename       => "http://www.hydrogarden.com/StockPics/scalpels.jpg"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 908, 
                :supplier_id    => 1,
                :name           => "Softies Scissors DP120", 
                :weight         => 100,
                :order_code     => "12-570-050",
                :packaging      => "empty",
                :description    => "Ergonomically designed to make trimming and pruning easier.  Made with large handles for easy grip.  These extra sharp scissors are just the job!",
                :filename       => "http://www.hydrogarden.com/StockPics/Softies_scissors.jpg"
        )
                @product.sale_price =  3.59
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 909, 
                :supplier_id    => 1,
                :name           => "Pruner DP40S", 
                :weight         => 180,
                :order_code     => "12-570-055",
                :packaging      => "empty",
                :description    => "These great quality Japanese made high carbon steel pruners makes short work of all pruning jobs.  The internal spring and easy grip handles makes large trimming jobs easy on the hand.  Also light in weight and suitable for pruning of up to 16mm.",
                :filename       => "http://www.hydrogarden.com/StockPics/Pruner_.jpg"
        )
                @product.sale_price =  5.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 910, 
                :supplier_id    => 1,
                :name           => "ADF Resealable Bag - 300x430mm", 
                :weight         => 10,
                :order_code     => "14-665-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 911, 
                :supplier_id    => 1,
                :name           => "ADF Resealable Bag - 450x560mm", 
                :weight         => 20,
                :order_code     => "14-665-205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 912, 
                :supplier_id    => 1,
                :name           => "ADF Resealable Bag - 560x910mm", 
                :weight         => 130,
                :order_code     => "14-665-210",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.45
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 913, 
                :supplier_id    => 4,
                :name           => "75x35cm ULTRATHERM UNDER-TANK HEAT MAT (120W)", 
                :weight         => 260,
                :order_code     => "HE120",
                :packaging      => "empty",
                :description    => "Quality heater mats for use under tanks. Must be used with a thermostat, not recommended to be used for heating propagators. Power: 120W",
                :filename       => "empty"
        )
                @product.sale_price =  13.76
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 914, 
                :supplier_id    => 4,
                :name           => "140x23cm ULTRATHERM UNDER-TANK HEAT MAT (145W)", 
                :weight         => 330,
                :order_code     => "HE140",
                :packaging      => "empty",
                :description    => "Quality heater mats for use under tanks. Must be used with a thermostat, not recommended to be used for heating propagators. Power: 145W",
                :filename       => "empty"
        )
                @product.sale_price =  13.67
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 915, 
                :supplier_id    => 4,
                :name           => "130X42cm ULTRATHERM UNDER-TANK HEAT MAT (290W)", 
                :weight         => 430,
                :order_code     => "HE290",
                :packaging      => "empty",
                :description    => "Quality heater mats for use under tanks. Must be used with a thermostat, not recommended to be used for heating propagators. Power: 290W",
                :filename       => "empty"
        )
                @product.sale_price =  20.22
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 916, 
                :supplier_id    => 4,
                :name           => "60X30cm ULTRATHERM UNDER-TANK HEAT MAT (60W)", 
                :weight         => 100,
                :order_code     => "HE600",
                :packaging      => "empty",
                :description    => "Quality heater mats for use under tanks. Must be used with a thermostat, not recommended to be used for heating propagators. Power: 60W",
                :filename       => "empty"
        )
                @product.sale_price =  12.34
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 917, 
                :supplier_id    => 4,
                :name           => "75 WATT HEATER THERMOSTAT", 
                :weight         => 100,
                :order_code     => "HE750",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.27
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 918, 
                :supplier_id    => 4,
                :name           => "75X35cm ULTRATHERM UNDER-TANK HEAT MAT (90W)", 
                :weight         => 265,
                :order_code     => "HE900",
                :packaging      => "empty",
                :description    => "Quality heater mats for use under tanks. Must be used with a thermostat, not recommended to be used for heating propagators. Power: 90W",
                :filename       => "empty"
        )
                @product.sale_price =  13.76
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 919, 
                :supplier_id    => 4,
                :name           => "MC320 OXY Pump", 
                :weight         => 230,
                :order_code     => "PP400",
                :packaging      => "empty",
                :description    => "Quality submersible oxy pump with air intake valve to help oxygenate your hydro system. Reliable, adjustable and low power consumption.  Max output = 320litres per hour. Max lift = 45cm.",
                :filename       => "empty"
        )
                @product.sale_price =  7.32
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 920, 
                :supplier_id    => 4,
                :name           => "MC450 OXY Pump", 
                :weight         => 230,
                :order_code     => "PP401",
                :packaging      => "empty",
                :description    => "Quality submersible oxy pump with air intake valve to help oxygenate your hydro system. Reliable, adjustable and low power consumption.  Max output = 450litres per hour. Max lift = 70cm.",
                :filename       => "empty"
        )
                @product.sale_price =  8.44
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 921, 
                :supplier_id    => 4,
                :name           => "MC320 Pump             ", 
                :weight         => 230,
                :order_code     => "PP115",
                :packaging      => "empty",
                :description    => "Quality, compact submersible pump. Adjustable with low power consumption. Max output = 320litres per hour. Max lift = 45cm.",
                :filename       => "empty"
        )
                @product.sale_price =  6.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 922, 
                :supplier_id    => 4,
                :name           => "MC450 Pump", 
                :weight         => 230,
                :order_code     => "PP117",
                :packaging      => "empty",
                :description    => "Forever popular. Quality, compact submersible pump. Adjustable with low power consumption. Max output = 450litres per hour. Max lift = 70cm.",
                :filename       => "images/nutriculture/30 RIGHT MC450 Pump"
        )
                @product.sale_price =  7.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 923, 
                :supplier_id    => 4,
                :name           => "MC450 Pump - OUTDOOR USE", 
                :weight         => 840,
                :order_code     => "PP118",
                :packaging      => "empty",
                :description    => "Same as popular MC450 but with 10m of cable, ideal for external use. Quality, compact submersible pump. Adjustable with low power consumption. Max output = 450litres per hour. Max lift = 70cm.",
                :filename       => "empty"
        )
                @product.sale_price =  12.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 924, 
                :supplier_id    => 4,
                :name           => "MJ750 Pump", 
                :weight         => 0,
                :order_code     => "PP101",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  12.59
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 925, 
                :supplier_id    => 4,
                :name           => "MJ500 Pump", 
                :weight         => 450,
                :order_code     => "PP102",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "images/nutriculture/24 Multi D Pump"
        )
                @product.sale_price =  10.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 926, 
                :supplier_id    => 4,
                :name           => "MJ1000 Pump ", 
                :weight         => 0,
                :order_code     => "PP103",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  15.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 927, 
                :supplier_id    => 4,
                :name           => "MJ1000 IMPELLOR", 
                :weight         => 50,
                :order_code     => "PP107",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.62
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 928, 
                :supplier_id    => 4,
                :name           => "BLUE FOAM FILTER (MAXIJET)", 
                :weight         => 3,
                :order_code     => "PP231",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.28
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 929, 
                :supplier_id    => 4,
                :name           => "MJ1000 Pump - OUTDOOR USE", 
                :weight         => 840,
                :order_code     => "PP112",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  20.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 930, 
                :supplier_id    => 4,
                :name           => "SPONGE FILTER(SQ)MICRO JET", 
                :weight         => 0,
                :order_code     => "PP237",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 931, 
                :supplier_id    => 4,
                :name           => "3 SUCKER STAND - MJ 1000", 
                :weight         => 25,
                :order_code     => "PP238",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 932, 
                :supplier_id    => 4,
                :name           => "Rena 5cm (2') Air Stone", 
                :weight         => 10,
                :order_code     => "PP224",
                :packaging      => "empty",
                :description    => "Rena high quality ceramic air stones. Comes with sucker pad to secure in desired position.",
                :filename       => "empty"
        )
                @product.sale_price =  2.06
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 933, 
                :supplier_id    => 4,
                :name           => "RENA 4' AIR STONES", 
                :weight         => 40,
                :order_code     => "PP225",
                :packaging      => "empty",
                :description    => "Rena high quality ceramic air stones. Comes with sucker pad to secure in desired position.",
                :filename       => "empty"
        )
                @product.sale_price =  2.16
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 934, 
                :supplier_id    => 4,
                :name           => "RENA 6' AIR STONE", 
                :weight         => 55,
                :order_code     => "PP226",
                :packaging      => "empty",
                :description    => "Rena high quality ceramic air stones. Comes with sucker pad to secure in desired position.",
                :filename       => "empty"
        )
                @product.sale_price =  2.80
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 935, 
                :supplier_id    => 4,
                :name           => "AIR LINE TUBE 30m", 
                :weight         => 530,
                :order_code     => "PP227",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  4.33
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 936, 
                :supplier_id    => 4,
                :name           => "AIR LINE TEE", 
                :weight         => 10,
                :order_code     => "PP229",
                :packaging      => "empty",
                :description    => "Air Line 'T' piece - for splitting one air line into two. \n\nSome airstones that have 'two ends', typical longer length air-stones e.g 90cm flexible air curtain, 60cm straight ceramic air stones. Use this t-piece to split an airline to pump air into both e",
                :filename       => "empty"
        )
                @product.sale_price =  0.14
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 937, 
                :supplier_id    => 4,
                :name           => "AIR LINE SILICON 100m", 
                :weight         => 1100,
                :order_code     => "PP301",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  22.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 938, 
                :supplier_id    => 1,
                :name           => "Eazi Stand Extrusion 3m (25.4mmSq x 3m)", 
                :weight         => 12368,
                :order_code     => "15-700-005",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  7.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 939, 
                :supplier_id    => 1,
                :name           => "Eazi Stand Extrusion 2m (25.4mmSq x 2m)", 
                :weight         => 800,
                :order_code     => "15-700-006",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  5.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 940, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 4 Way Corner Fitting", 
                :weight         => 40,
                :order_code     => "15-700-010",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 941, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 4 Way Cross Fitting", 
                :weight         => 40,
                :order_code     => "15-700-015",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 942, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 3 Way Corner Fitting", 
                :weight         => 40,
                :order_code     => "15-700-020",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 943, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 3 Way Flat Tee Joiner Fitting", 
                :weight         => 30,
                :order_code     => "15-700-025",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.05
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 944, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 2 Way 90 Degree Elbow Fitting", 
                :weight         => 30,
                :order_code     => "15-700-030",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.90
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 945, 
                :supplier_id    => 1,
                :name           => "Eazi Stand Plastic End Cap (1'Sq)", 
                :weight         => 10,
                :order_code     => "15-700-035",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.30
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 946, 
                :supplier_id    => 1,
                :name           => "Eazi Stand End Cap for Adjustable Foot", 
                :weight         => 10,
                :order_code     => "15-700-040",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.25
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 947, 
                :supplier_id    => 1,
                :name           => "Eazi Stand Anti Slip Swivel Foot", 
                :weight         => 50,
                :order_code     => "15-700-042",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  3.20
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 948, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 5 Way Corner Fitting", 
                :weight         => 50,
                :order_code     => "15-700-045",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 949, 
                :supplier_id    => 1,
                :name           => "Eazi Stand Attachment Bolts 4mm x 20mm", 
                :weight         => 10,
                :order_code     => "15-700-050",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 950, 
                :supplier_id    => 1,
                :name           => "Eazi Stand Attachment Nuts 4mm", 
                :weight         => 10,
                :order_code     => "15-700-055",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 951, 
                :supplier_id    => 1,
                :name           => "Eazi Stand 6 Way Corner Fitting (P60)", 
                :weight         => 60,
                :order_code     => "15-700-060",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 952, 
                :supplier_id    => 1,
                :name           => "Eazi Standing Bracing Rod  OR11754", 
                :weight         => 70,
                :order_code     => "15-700-065",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 953, 
                :supplier_id    => 1,
                :name           => "GrowTent 1.2 GROW (1.2m x 1.2m x 2m)", 
                :weight         => 15500,
                :order_code     => "15-700-200",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  82.50
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 954, 
                :supplier_id    => 1,
                :name           => "GrowTent spare plastic corner", 
                :weight         => 20,
                :order_code     => "15-700-205",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 955, 
                :supplier_id    => 1,
                :name           => "GrowTent spare plastic elbow", 
                :weight         => 20,
                :order_code     => "15-700-210",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  1.10
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 956, 
                :supplier_id    => 1,
                :name           => "GrowTent MINIGROW (0.76m x 0.76m x 1.2m)", 
                :weight         => 8100,
                :order_code     => "15-700-220",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  48.40
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 957, 
                :supplier_id    => 1,
                :name           => "GrowTent SKINNY GROW (0.76m x 0.76m x 1.8m)", 
                :weight         => 9800,
                :order_code     => "15-700-230",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  68.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 958, 
                :supplier_id    => 1,
                :name           => "GrowTent 2.4 GROW (2.4m x 1.2m x 2m)", 
                :weight         => 24000,
                :order_code     => "15-700-240",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  129.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 959, 
                :supplier_id    => 1,
                :name           => "GrowTent Clone Station (0.8m x 0.5m x 0.9m)", 
                :weight         => 9800,
                :order_code     => "15-700-250",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  66.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 960, 
                :supplier_id    => 1,
                :name           => "GrowTent 2 GROW (2m x 2m x 2m)", 
                :weight         => 25000,
                :order_code     => "15-700-260",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  199.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 961, 
                :supplier_id    => 1,
                :name           => "GrowTent Dry-Rack (Single)", 
                :weight         => 400,
                :order_code     => "15-700-310",
                :packaging      => "empty",
                :description    => "empty",
                :filename       => "empty"
        )
                @product.sale_price =  2.75
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 962, 
                :supplier_id    => 5,
                :name           => "Eco System (slabs included)", 
                :weight         => 0,
                :order_code     => "empty",
                :packaging      => "mail order - one large box, one box glass tube",
                :description    => "The future of hydroponic growing. Vertical growing is the latest breakthrough in hydroponic growing techniques. It allows you to get significantly more yield from your available light sources - 'even on a bad day', the EcoSystem will get you twice the yie",
                :filename       => "empty"
        )
                @product.sale_price =  1350.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 963, 
                :supplier_id    => 5,
                :name           => "Eco System with lights (slabs included)", 
                :weight         => 0,
                :order_code     => "empty",
                :packaging      => "mail order - one large box, one box glass tube",
                :description    => "The future of hydroponic growing. Vertical growing is the latest breakthrough in hydroponic growing techniques. It allows you to get significantly more yield from your available light sources - 'even on a bad day', the EcoSystem will get you twice the yie",
                :filename       => "empty"
        )
                @product.sale_price =  1450.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 964, 
                :supplier_id    => 2,
                :name           => "INDIVIDUAL BOX FOR MINI ODOUR FREE COMPOST CADDY (5L)", 
                :weight         => 0,
                :order_code     => "G118BOX",
                :packaging      => "Supplied flat packed",
                :description    => "data entry required",
                :filename       => "empty"
        )
                @product.sale_price =  0.26
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 965, 
                :supplier_id    => 2,
                :name           => "SINGLE STEEL SUPPORT HOOPS FOR TIMBER GROW BED", 
                :weight         => 0,
                :order_code     => "G123",
                :packaging      => "Mail Order Box",
                :description    => "data entry required",
                :filename       => "empty"
        )
                @product.sale_price =  5.95
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 966, 
                :supplier_id    => 2,
                :name           => "Aqua Lock Self Watering Hanging Basket 41cm (large)", 
                :weight         => 0,
                :order_code     => "G66",
                :packaging      => "data entry required",
                :description    => "Our Aqua Lock Hanging Baskets save plants, save water and save effort for the user. The unique design of the Aqua Lock features a twist lock detachable water reservoir which is connected to the hanging basket via a capillary wick. This ensures self wateri",
                :filename       => "empty"
        )
                @product.sale_price =  0.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 967, 
                :supplier_id    => 2,
                :name           => "Small Seed Tray", 
                :weight         => 0,
                :order_code     => "G18",
                :packaging      => "G18",
                :description    => "Dimensions - 22.5cm (l) x 16.5cm (w) x 5.5cm (h)",
                :filename       => "garland_images/4c2a80582590b510a36616553304d756.jpg"
        )
                @product.sale_price =  0.54
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 968, 
                :supplier_id    => 3,
                :name           => "Chilli Adorno", 
                :weight         => 20,
                :order_code     => "GL11",
                :packaging      => "empty",
                :description    => "Early  very hot. Compact plant with greeny-violet leaves. Produces dark green fruits which grow pointing upwards and ripen reddy-violet. Can be grown ornamentally in a container. Indoor & outdoor.  Voted 10th hottest by BBC Gardeners World",
                :filename       => "images/3ee966e3.jpg"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 969, 
                :supplier_id    => 3,
                :name           => "Chilli Pepper Hungarian Hotwax", 
                :weight         => 20,
                :order_code     => "GL11a",
                :packaging      => "empty",
                :description    => "Early  hot variety  vigorous and producing long  conical light green fruits turning yellow when ripe. Ideal for containers and a superb variety from Hungary used typically in Paprika type dishes. @150. Sow outdoors Feb - May. Indoor year-round.",
                :filename       => "images/8ea3395d.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 970, 
                :supplier_id    => 3,
                :name           => "Chilli Pepper Jalapeno", 
                :weight         => 20,
                :order_code     => "GL12a",
                :packaging      => "empty",
                :description    => "Who doesn't know this Mexican pepper? Mid/early hot mid sized and forming a bushy plant which is ideal for containers. the  green fruits are medium to long  meaty and tasty. The ingredients for Mexican Chilli con Carne. @75. Grow indoors or outdoor sow Fe",
                :filename       => "images/87958444.jpg"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 971, 
                :supplier_id    => 3,
                :name           => "Chilli Etna - Voted 9th Hotest By BBC Gardeners World", 
                :weight         => 20,
                :order_code     => "GL13",
                :packaging      => "empty",
                :description    => "Early hot Italian variety. Compact plant which produces bunches of conical dark green fruits which grow upwards  turning bright red when ripe. Can also be grown in a container. Voted 9th hottest chilli by BBC Gardeners World TV in their 2006 Hottest Chill",
                :filename       => "images/a4f5a627.jpg"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 972, 
                :supplier_id    => 3,
                :name           => "Chilli Pepino", 
                :weight         => 20,
                :order_code     => "GL17",
                :packaging      => "empty",
                :description    => "Early mild variety. Plant which produces slightly flat spherical dark green fruits turning red when ripe. Can be grown inside, outside and in containers ornamentally. ",
                :filename       => "images/257b3a78.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 973, 
                :supplier_id    => 3,
                :name           => "Chilli Pyramid", 
                :weight         => 20,
                :order_code     => "GL19",
                :packaging      => "empty",
                :description    => "Early hot variety. Compact plant, producing small, conical yellow fruits with lilac shading  turning red when ripe.",
                :filename       => "images/f52a04b6.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 974, 
                :supplier_id    => 3,
                :name           => "Chilli Romanian Yellow", 
                :weight         => 20,
                :order_code     => "GL21",
                :packaging      => "empty",
                :description    => "Early hot variety. Vigorous  compact plant producing small long conical light green fruits turning yellow when ripe.",
                :filename       => "images/8ffde964.jpg"
        )
                @product.sale_price =  3.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 975, 
                :supplier_id    => 3,
                :name           => "Basil Clasico Italiano", 
                :weight         => 20,
                :order_code     => "H1",
                :packaging      => "empty",
                :description    => "Classic Genova basil used for making pesto Genovese and a million other uses in the  kitchen. Aromatic annual, ideal pH 5-8. Provide ample warmth and light. Pinch out growing tips to encourage bushiness and delay flowering. \n\nPropagates well from seed or",
                :filename       => "images/843ec1aa.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 976, 
                :supplier_id    => 3,
                :name           => "Borage", 
                :weight         => 20,
                :order_code     => "H7",
                :packaging      => "empty",
                :description    => "Annual with fast growing leaves which are to be used fresh. The  edible flowers can be used frozen in ice-cubes, for decorating food, in punches and port. \n\nBorage is a traditional medicinal herb, propagated from seed, requiring ample light.\n\n\nHarvest:. l",
                :filename       => "images/8d8691f8.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 977, 
                :supplier_id    => 3,
                :name           => "Catnip", 
                :weight         => 20,
                :order_code     => "H9",
                :packaging      => "empty",
                :description    => "Cat Grass Annual which is easy to cultivate. \n\nCats eat the leaves as a stimulant! \n\nProvide ample light. Plants are cut when in bud and dried for infusion. Leaves are picked during growing for fresh culinary use or dried. \n\nSow outdoor Mar - end July, ea",
                :filename       => "images/dbc18581.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 978, 
                :supplier_id    => 3,
                :name           => "Chamomile", 
                :weight         => 20,
                :order_code     => "H11",
                :packaging      => "empty",
                :description    => "Dried Chamomile flowers are used to make tea, liquid extracts & powders. Dry the plant upside down. Chamomile tea has calming properties. \n\nLikes slightly acidic conditions (pH 5.5-7.0). Propagate from seed.\n\nIndoors or outdoors sow March - end June.",
                :filename       => "images/8b668e6d.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 979, 
                :supplier_id    => 3,
                :name           => "Chives", 
                :weight         => 20,
                :order_code     => "H12",
                :packaging      => "empty",
                :description    => "Ideal for chopping and adding to potato salad. Mild onion flavour. 3g. Easy to grow indoors. Indoors all year or sow outdoors Feb - end June.",
                :filename       => "images/ae942d7f.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 980, 
                :supplier_id    => 3,
                :name           => "Cress", 
                :weight         => 20,
                :order_code     => "H13",
                :packaging      => "empty",
                :description    => "Cress can be grown very easily all year and is ready a month after sowing. It compliments eggs exceptionally well. 6g.",
                :filename       => "images/312b1aa2.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 981, 
                :supplier_id    => 3,
                :name           => "Coriander", 
                :weight         => 40,
                :order_code     => "H14",
                :packaging      => "empty",
                :description    => "Many culinary uses for this popular herb. Use the seeds in curries and soups or the  leaf which has a strong flavour. 3g. Grow indoors or outdoors sow from Mar - June.",
                :filename       => "images/83f64bbc.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 982, 
                :supplier_id    => 3,
                :name           => "Lavender", 
                :weight         => 30,
                :order_code     => "H18",
                :packaging      => "empty",
                :description    => "Use the dried flowers to flavour homemade biscuits, with pork and for perfume pouches. Lavender oil can relieve headaches. 1g. Sow mid Feb - mid Sep.",
                :filename       => "images/1ab95964.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 983, 
                :supplier_id    => 3,
                :name           => "Lovage", 
                :weight         => 30,
                :order_code     => "H20",
                :packaging      => "empty",
                :description    => "Known as mountain celery in Italy due to it's flavour. Leaves like parsley. It can spread (like mint) so plant into pots and plant the  whole pot into the  soil. Outdoors sow from Feb - Jun.",
                :filename       => "images/17d76c77.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 984, 
                :supplier_id    => 3,
                :name           => "Oregano", 
                :weight         => 30,
                :order_code     => "H21",
                :packaging      => "empty",
                :description    => "The  dried leaves are indispensable on Pizzas and Breads. Harvest all year round. 1g. Sow Mar - end Aug.",
                :filename       => "images/3a06dc1a.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 985, 
                :supplier_id    => 3,
                :name           => "Parsley Commune", 
                :weight         => 30,
                :order_code     => "H22",
                :packaging      => "empty",
                :description    => "Flat leafed parsley 'Commune'. National variety used all over Italy. Sow Mar - Sep. @6000",
                :filename       => "images/dde74df9.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 986, 
                :supplier_id    => 3,
                :name           => "Peppermint", 
                :weight         => 30,
                :order_code     => "H25",
                :packaging      => "empty",
                :description    => "Loads of uses for Peppermint not least in drinks, ice-cream, with lamb, as a garnish or to make mint tea. Grows to 30-40cms tall. Best suited to pots as it spreads quickly in the  soil. Sow Mar - May.",
                :filename       => "images/319b368c.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 987, 
                :supplier_id    => 3,
                :name           => "Rosemary", 
                :weight         => 30,
                :order_code     => "H26",
                :packaging      => "empty",
                :description    => "Real Italian Rosemary. Ideal to flavour roasts. Tolerates poor soil and extreme weather. Sow Apr - mid Jul.",
                :filename       => "images/c35382ce.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 988, 
                :supplier_id    => 3,
                :name           => "Sage", 
                :weight         => 30,
                :order_code     => "H28",
                :packaging      => "empty",
                :description    => "Can be chopped fresh and is a great companion to pork, or add to pasta with a knob of butter and fresh parmesan cheese. 3g. \n\nGrow indoors with lots of blue light, outdoors sow mid Mar - end Sep.\n\nIdeal pH 5.5 - 6.5.\nIdeal food strength EC 1.0 - 1.6 (ppm",
                :filename       => "images/40314497.jpg"
        )
                @product.sale_price =  2.00
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 989, 
                :supplier_id    => 3,
                :name           => "Sorrel", 
                :weight         => 30,
                :order_code     => "H31",
                :packaging      => "empty",
                :description    => "Can be used in salads & omelettes, with beef and lamb, cooked like spinach, also makes for a really good soup. Sow Mar - end Jun.",
                :filename       => "images/5eb688cc.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 990, 
                :supplier_id    => 3,
                :name           => "Sweet Marjoram", 
                :weight         => 30,
                :order_code     => "H33",
                :packaging      => "empty",
                :description    => "Perennial. Leaves can be used both fresh or dried. Ideal for use in fruit salads, to garnish drinks and for making tea. 1g. Sow mid Mar - mid Oct.",
                :filename       => "images/1f3f9d28.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 991, 
                :supplier_id    => 3,
                :name           => "Thyme Of Provence", 
                :weight         => 30,
                :order_code     => "H35",
                :packaging      => "empty",
                :description    => "Thyme of Provence. Introduced to France by the Romans and then onto the UK. Thyme from Provence is one of the most renowned. Prefers light, cold soils, in partial shade. 1g. Sow Mar - end Aug.",
                :filename       => "images/8c2f50d7.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 992, 
                :supplier_id    => 3,
                :name           => "Wild Fennel", 
                :weight         => 30,
                :order_code     => "H36",
                :packaging      => "empty",
                :description    => "Great added to trout or salmon, cooked in foil in the oven with some butter, lemon juice, salt and pepper. 4g. Sow Mar - end Jun.",
                :filename       => "images/eb917bbb.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 993, 
                :supplier_id    => 3,
                :name           => "Anice", 
                :weight         => 30,
                :order_code     => "H37",
                :packaging      => "empty",
                :description    => "Annual requiring a sunny position. At the start of august, when the plant is flowering, remove the flowers which are drying out to facilitate later harvest of the fruits which are used to flavour dishes, sweets and liqueurs. Has a strong aniseed flavour.",
                :filename       => "images/250a23b6.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 994, 
                :supplier_id    => 3,
                :name           => "Mixed Lettuces Pack", 
                :weight         => 30,
                :order_code     => "L1",
                :packaging      => "empty",
                :description    => "13 varieties all mixed together. Sow in succession for a continuous harvest. @6000. Easy to grow indoors all year with low energy plant lighting. Outdoor sow Mar - Sep.\n\nIdeal pH 6.0 - 7.0, EC 0.8 - 1.2 (ppm560 - 840)",
                :filename       => "images/93b3f76c.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 995, 
                :supplier_id    => 3,
                :name           => "Cutting Lettuce - Bis Di Latughe", 
                :weight         => 30,
                :order_code     => "L2",
                :packaging      => "empty",
                :description    => "A red and green cutting mix by popular demand. Very easy to grow indoors & outdoors. Stagger the sowing every month or so. Cut-and-come-again, but not more than a couple of times otherwise they will start to go woody. Can be sown in containers inside & ou",
                :filename       => "images/a8523953.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 996, 
                :supplier_id    => 3,
                :name           => "Mixed Salad Pack - Misticanza", 
                :weight         => 30,
                :order_code     => "L3",
                :packaging      => "empty",
                :description    => "Traditionally, 'Misticanza' is a Roman feature going back over 2000 years. In the  15th century, Borrage, mint, Chicory barba di Frate and rocket were also included, but this pack contains 8 different lettuce varieties. Sow outdoors Mar - Sep. Indoor cult",
                :filename       => "images/3cf9b663.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 997, 
                :supplier_id    => 3,
                :name           => "Mixed Endives And Escaroles Pack", 
                :weight         => 30,
                :order_code     => "L4",
                :packaging      => "empty",
                :description    => "9 endive varieties mixed together in one pack. @6000. Sow Mar -Sep.",
                :filename       => "images/b0ef2a95.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 998, 
                :supplier_id    => 3,
                :name           => "Lettuce Romaine Bionda", 
                :weight         => 30,
                :order_code     => "L5",
                :packaging      => "empty",
                :description    => "Classic Roman lettuce used for making Caesar salads. Upright  green head. @4800. Indoor all year. Outdoor sow Mar - mid Sep. Indoor year-round.\n\nIdeal pH 6.0 - 7.0, EC 0.8 - 1.2 (ppm560 - 840)",
                :filename       => "images/03068bc8.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 999, 
                :supplier_id    => 3,
                :name           => "Lettuce Bionda Riciolina", 
                :weight         => 30,
                :order_code     => "L13",
                :packaging      => "empty",
                :description    => "A light green, easy to grow and sweet tasting cutting lettuce. Cut as much as you need. @7200. Sow Feb - end Sep. Indoors all year.\n\nIdeal pH 6.0 - 7.0, EC 0.8 - 1.2 (ppm560 - 840)",
                :filename       => "images/a0e28ce2.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1000, 
                :supplier_id    => 3,
                :name           => "Lettuce Green Salad Bowl", 
                :weight         => 30,
                :order_code     => "L14",
                :packaging      => "empty",
                :description    => "Well known green oak leaf cutting lettuce. @4000. Indoor all year. Outside sow Mar - Sep.\n\nIdeal pH 6.0 - 7.0, EC 0.8 - 1.2 (ppm560 - 840)",
                :filename       => "images/eb7d7b82.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1001, 
                :supplier_id    => 3,
                :name           => "Bio Basil Clasico Italiano", 
                :weight         => 30,
                :order_code     => "O1",
                :packaging      => "empty",
                :description    => "Classic, organic Italian basil, ideal for making organic pesto. Sow protected when cold and outside when hot. 3200 seeds. Sow Mar - July.",
                :filename       => "images/03b47224.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1002, 
                :supplier_id    => 3,
                :name           => "Bio Brocoli Ramoso Calabrese", 
                :weight         => 30,
                :order_code     => "O2b",
                :packaging      => "empty",
                :description    => "Brassica from Southern Italy. Outdoors sow from May - Jul.",
                :filename       => "images/f74dbf4f.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1003, 
                :supplier_id    => 3,
                :name           => "Bio Carrot Nantese", 
                :weight         => 30,
                :order_code     => "O3",
                :packaging      => "empty",
                :description    => "This is a nantese carrot from Chioggia near Venice. A very good flavoursome carrot, reliable. @5400 seeds. Sow Mar - July.",
                :filename       => "images/e7b6007c.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1004, 
                :supplier_id    => 3,
                :name           => "Bio Chicory Zucherino Di Trieste", 
                :weight         => 30,
                :order_code     => "O4a",
                :packaging      => "empty",
                :description    => "Green cutting chicory. Cut-and-come-again. Outdoors sow Mar - Sep.\n\nIdeal pH 5.5 - 6.0\nEC 1.0 - 2.4 (ppm 700 - 1680)",
                :filename       => "images/5e9d2e50.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1005, 
                :supplier_id    => 3,
                :name           => "Bio Courgette Nero Of Milano", 
                :weight         => 30,
                :order_code     => "O5a",
                :packaging      => "empty",
                :description    => "Very dark skinned variety which looks almost black. Sow Feb - July.",
                :filename       => "images/noproductimage.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1006, 
                :supplier_id    => 3,
                :name           => "Bio Wild Rocket", 
                :weight         => 30,
                :order_code     => "O6a",
                :packaging      => "empty",
                :description    => "A most popular variety  now also available in Organic. Technically a weed (Easy to grow!!) strong flavour with serrated leaves. Sow Mar - Sep.",
                :filename       => "images/1e50d916.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1007, 
                :supplier_id    => 3,
                :name           => "Bio Cucumber Marketmore", 
                :weight         => 30,
                :order_code     => "O7a",
                :packaging      => "empty",
                :description    => "British variety for indoors our out. Sow Mar - Jul.",
                :filename       => "images/f3bdc542.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1008, 
                :supplier_id    => 3,
                :name           => "Bio Green Salad Bowl", 
                :weight         => 30,
                :order_code     => "O11",
                :packaging      => "empty",
                :description    => "The beauty of cutting lettuce is that you use as much or as little as you need. A popular green variety. 4000 seeds. Sow Mar - Sep.",
                :filename       => "images/c4e87a3a.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1009, 
                :supplier_id    => 3,
                :name           => "Bio Lettuce Regina Di Magio Mayquen", 
                :weight         => 30,
                :order_code     => "O13",
                :packaging      => "empty",
                :description    => "Green lettuce with a pink 'flush'. 'May Queen'. \nGrow indoors all year or outdoor sow Jan - May. @3000.\n\nIdeal pH 6.0 - 7.0, EC 0.8 - 1.2 (ppm560 - 840)",
                :filename       => "images/140b5074.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1010, 
                :supplier_id    => 3,
                :name           => "Bio Radichio Rosa Of Verona", 
                :weight         => 30,
                :order_code     => "O17",
                :packaging      => "empty",
                :description    => "Organic Radicchio 'Rossa of Verona'. This is a 'palla rossa' Chicory (red ball) which adds texture and a diverse flavour to your salads. Sow Apr - Sep outside. Needs the cold to turn red. @4000 seeds.",
                :filename       => "images/df70538b.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1011, 
                :supplier_id    => 3,
                :name           => "Bio Radish Saxa", 
                :weight         => 30,
                :order_code     => "O18",
                :packaging      => "empty",
                :description    => "Round, red salad radish. 1500 seeds. Sow Feb - Apr and Aug - Sep",
                :filename       => "images/cd1c2b68.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1012, 
                :supplier_id    => 3,
                :name           => "Bio Spinach America", 
                :weight         => 30,
                :order_code     => "O19",
                :packaging      => "empty",
                :description    => "Tasty, tender leaves which are full of iron. Received its name because Italian immigrants would put it in their pockets and took it to America. 1200 seeds. Sow Feb - Apr and Aug - Oct.",
                :filename       => "images/a51c39be.jpg"
        )
                @product.sale_price =  1.11
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1013, 
                :supplier_id    => 3,
                :name           => "Wild Rocket - Restaurant Quality", 
                :weight         => 30,
                :order_code     => "S3",
                :packaging      => "empty",
                :description    => "Restaurant quality wild rocket for when only the  finest ingredients will do. Use in salads, making rocket 'Pesto' and to top 'Bresaola & Rucola' Pizza's. Very peppery. Cut and come again (up to 4 times). Recommended by Cucina Caldesi as used in their res",
                :filename       => "images/5c4597d9.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1014, 
                :supplier_id    => 3,
                :name           => "Cultivated Rocket Restaurant Quality", 
                :weight         => 30,
                :order_code     => "S4",
                :packaging      => "empty",
                :description    => "The finest selected seed from Franchi's professional range. Sow Mar - Sep.",
                :filename       => "images/noproductimage.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1015, 
                :supplier_id    => 3,
                :name           => "Red Onion Of Genova", 
                :weight         => 30,
                :order_code     => "S6",
                :packaging      => "empty",
                :description    => "Classic flat red Onion used widely across Italy. Sweet tasting, can also be used raw in salads, as well as for cooking. 840 seeds. Sow Feb - Mar and harvest Jul - Aug.",
                :filename       => "images/a3a14db6.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1016, 
                :supplier_id    => 3,
                :name           => "Red Onion Tropea Rosa", 
                :weight         => 30,
                :order_code     => "S8",
                :packaging      => "empty",
                :description    => "As featured on BBC Gardeners World by Monty Don 22/12/06. This onion is a speciality of Calabria where the seed is still produced. A recent article in the UK press claims the Italian Tropea Rossa onion is one of the ingredients used to make Viagra !!!",
                :filename       => "images/efeb599e.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1017, 
                :supplier_id    => 3,
                :name           => "Spring Onion Cipoloti A Mazo", 
                :weight         => 30,
                :order_code     => "S9",
                :packaging      => "empty",
                :description    => "Long white stems used for salads and oriental cooking. Sow Feb - end Jul. Price shown is per 100g.",
                :filename       => "images/noproductimage.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1018, 
                :supplier_id    => 3,
                :name           => "Cucumber Viridis F1", 
                :weight         => 30,
                :order_code     => "S16",
                :packaging      => "empty",
                :description    => "English style. Vigorous plant. Good production. Long, round fruits with dark green knobbly skin. A real cracker. Male/female, so self pollinating. @20. Sow Mar-Jun.",
                :filename       => "images/64e1fd51.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1019, 
                :supplier_id    => 3,
                :name           => "Cucumber Sakamari F1", 
                :weight         => 30,
                :order_code     => "S17",
                :packaging      => "empty",
                :description    => "Japanese variety. English style. Resistant, vigorous and productive. Mid long fruits with few spines. Recommended for forcing. @15. Sow Mar - Jul.",
                :filename       => "images/04e1b30d.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1020, 
                :supplier_id    => 3,
                :name           => "Radish Roso Gigante", 
                :weight         => 30,
                :order_code     => "S23",
                :packaging      => "empty",
                :description    => "Red Giant from the beautiful island of Sardegna. @2250. Sow Feb - Jun and Sep - Oct.",
                :filename       => "images/c6d370b9.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1021, 
                :supplier_id    => 3,
                :name           => "Tomato Principe Borghese", 
                :weight         => 30,
                :order_code     => "T1",
                :packaging      => "empty",
                :description    => "Italian vine tomato. Indeterminate. Small egg shaped fruits with few seeds. Ideal for salads or for using sliced with mozzarella  basil and olive oil and for drying for winter use. Fruits are typically 80-100g each in weight. @300 seeds. Grow indoors with",
                :filename       => "images/f76b0e13.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1022, 
                :supplier_id    => 3,
                :name           => "Tomato Beefmaster F1", 
                :weight         => 30,
                :order_code     => "T5",
                :packaging      => "empty",
                :description    => "Hybrid, lightly ribbed beef tomato. Very meaty and heavy, but not as mishapen as the Costoluto Fiorentino. Vigorous plant. Indeterminate. Fruits of up to 600g with resistance to Verticillium and Fusarium and Alternaria.\n\nIdeal pH 6.0 - 6.5.\n\nTomatoes are",
                :filename       => "images/13b28fbc.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1023, 
                :supplier_id    => 3,
                :name           => "Tomato Liliput F1", 
                :weight         => 30,
                :order_code     => "T6",
                :packaging      => "empty",
                :description    => "Hybrid Cherry tomato. Heavy cropper with small round tasty fruits. Determinate. Good for growing in containers and baskets too. Resistant to Verticillium, Fusarium and Alternaria. Fruits of 20-30g. 60 seeds. Grow indoors with ample light or outdoors sow F",
                :filename       => "images/9be4a0ac.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1024, 
                :supplier_id    => 3,
                :name           => "Tomato Golden Boy F1", 
                :weight         => 30,
                :order_code     => "T8",
                :packaging      => "empty",
                :description    => "A round, sweet, yellow, hybrid salad tomato for eating. Adds a touch of colour to your salads. Indeterminate. Fruits of 140-160g. 60 seeds. Grow indoors with ample light or outdoors sow Feb - end May.\n\nIdeal pH 6.0 - 6.5.\n\nTomatoes are very heavy feeders,",
                :filename       => "images/022970df.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1025, 
                :supplier_id    => 3,
                :name           => "Tomato Big Rio 20 F1", 
                :weight         => 30,
                :order_code     => "T11",
                :packaging      => "empty",
                :description    => "Bush variety producing fruits of approx120g in size. Mid/early semi plum tomato for eating fresh or for preserving/cooking. Grow indoors with ample light or outdoors sow Feb-May.\n\nIdeal pH 6.0 - 6.5.\n\nTomatoes are very heavy feeders, they'll take large am",
                :filename       => "images/2ff1165b.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1026, 
                :supplier_id    => 3,
                :name           => "Tomato Marmande", 
                :weight         => 30,
                :order_code     => "T15",
                :packaging      => "empty",
                :description    => "Featured on BBC Gardeners World with Raimond Blanc 20/04/07. Flat, scalloped beefy tomato with thick flesh and sweet flavour. A favourite of many gardeners. Indeterminate. Fruits typically of 150-170g each in weight. @390-600 seed\n\nIdeal pH 6.0 - 6.5.\n\nTo",
                :filename       => "images/1c5c0bf5.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1027, 
                :supplier_id    => 3,
                :name           => "Tomato St Piere", 
                :weight         => 30,
                :order_code     => "T16",
                :packaging      => "empty",
                :description    => "Featured in BBC GW Mag Mar 2008 by Pippa Greenwood. French salad tomato. Round, good sized determinate (bush variety) renowned for it's super flavour. @100. Grow indoors with ample light or outdoors sow Feb-May.\n\nIdeal pH 6.0 - 6.5.\n\nTomatoes are very hea",
                :filename       => "images/629175d1.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1028, 
                :supplier_id    => 3,
                :name           => "Tomato Astro F1 San Marzano Nano", 
                :weight         => 30,
                :order_code     => "T20",
                :packaging      => "empty",
                :description    => "Classic bush plum variety 85-100g in weight. Resistant to Verticillium and Fusarium. Excellent production. Indicated for sauces. approx 60 seeds. Grow indoors or outdoors sow Feb - May.\n\nIdeal pH 6.0 - 6.5.\n\nTomatoes are very heavy feeders, they'll take l",
                :filename       => "images/4f6b3eb3.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1029, 
                :supplier_id    => 3,
                :name           => "Tomato Red Cherry", 
                :weight         => 30,
                :order_code     => "T21",
                :packaging      => "empty",
                :description    => "Open pollinated variety producing many small fruits of 20-30g each - 'pomodorini'. Oblong 'plum' style cherry. Bush, so ideal for containers and balconies too. Grow indoors with ample light or outdoors sow Feb - May.\n\nIdeal pH 6.0 - 6.5.\n\nTomatoes are ver",
                :filename       => "images/e66976ba.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1030, 
                :supplier_id    => 3,
                :name           => "Artichoke Violeto", 
                :weight         => 30,
                :order_code     => "V2",
                :packaging      => "empty",
                :description    => "Purple/Violet coloured with a delicate artichoke flavour. Likes a rich-heavy soil. A classic of Rome - ask for them on your next visit there. They are heavenly. @70 seeds. Outdoors sow Mar - end Aug.\n\nIdeal pH 6.5 - 7.5, EC 8 - 18 (ppm 560 - 1260)\n",
                :filename       => "images/af5f97b0.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1031, 
                :supplier_id    => 3,
                :name           => "Aubergine Prosperosa", 
                :weight         => 30,
                :order_code     => "V5",
                :packaging      => "0",
                :description    => "Round egg plant, large, light mauve eggplant you often see at the greengrocers. @660. Sow Feb - end May.",
                :filename       => "images/a63a1b73.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1032, 
                :supplier_id    => 3,
                :name           => "Beetroot Detroit 2", 
                :weight         => 30,
                :order_code     => "V8",
                :packaging      => "data entry required",
                :description    => "Early variety with red, extra sweet flesh. Beetroots are not recommended for diabetics due to it's high sugar content. @480. Outdoors sow Mar - end Jun.\n\nIdeal pH 6.0 - 6.5. EC 1.0  to over 4.0. \nBeetroot are heavy feeders - not many plants thrive given s",
                :filename       => "images/95c07a23.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1033, 
                :supplier_id    => 3,
                :name           => "Brussel Sprouts", 
                :weight         => 30,
                :order_code     => "V11",
                :packaging      => "data entry required",
                :description    => "Brussels Sprouts. Christmas dinner wouldn't be the  same without them - even in Italy. @1500. Sow May - Aug and harvest Aug - Dec.",
                :filename       => "images/9dc2ff5d.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1034, 
                :supplier_id    => 3,
                :name           => "Brocoli Gentleman Hybrid F1", 
                :weight         => 30,
                :order_code     => "V12a",
                :packaging      => "data entry required",
                :description    => "New for 2009 this is a high grade variety, reliable and consistent  producing good sized restaurant quality florets. Sow May - Jul.",
                :filename       => "images/41457aa2.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1035, 
                :supplier_id    => 3,
                :name           => "Chinese Cabbage Pe-tsai", 
                :weight         => 74,
                :order_code     => "V15",
                :packaging      => "data entry required",
                :description    => "Full name of this variety is Kitajsko Zelje Pe-Tsai. About 30cms tall, forms an upright, tightly wrapped head with light green serrated, veined leaves. Can be eaten raw or cooked. 6grams of seed.",
                :filename       => "images/44a13e8e.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1036, 
                :supplier_id    => 3,
                :name           => "Carrot Parisier Market 4", 
                :weight         => 0,
                :order_code     => "V18",
                :packaging      => "data entry required",
                :description    => "Featured on BBC Gardeners World 20/04/07. Round French Parisien carrots with good flavour. It's a classic case of the  carrot changing to suit it's environment and is basically a clay carrot. Easy to grow in containers and not as prone to carrot root fly.",
                :filename       => "images/0244505d.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1037, 
                :supplier_id    => 3,
                :name           => "Cauliflower Pala Di Neve Adige", 
                :weight         => 0,
                :order_code     => "V26",
                :packaging      => "data entry required",
                :description    => "Snow Ball cauliflower from Alto Adige in the Italian Dolomite mountains. Early with white, medium sized heads with good resistance to the cold. @750. Sow May - end Jul.",
                :filename       => "images/60f813c1.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1038, 
                :supplier_id    => 3,
                :name           => "Fennel di Parma Sel.prado", 
                :weight         => 30,
                :order_code     => "V29a",
                :packaging      => "data entry required",
                :description    => "NEW FOR 2008 - Mid/late. Full cane forming round, large  crunchy bulb with tightly wrapped head. Sow Jul and Aug. @900.",
                :filename       => "images/noproductimage.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1039, 
                :supplier_id    => 3,
                :name           => "Leek Carentan (French)", 
                :weight         => 30,
                :order_code     => "V33",
                :packaging      => "data entry required",
                :description    => "Late variety from France. Medium sized with large leaves and stalk of good dimensions. Resistant to lower temperatures. Dates to about 1880. @1200. Sow Feb - Jun.",
                :filename       => "images/a6169723.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1040, 
                :supplier_id    => 3,
                :name           => "Onion Giugnese", 
                :weight         => 30,
                :order_code     => "V40",
                :packaging      => "data entry required",
                :description    => "Italian white mid sized salad onion with semi flat bulb with pure, white flesh. Tender and tasty - ideal for eating raw. @900. Sow in spring or summer.",
                :filename       => "images/0bf6ca36.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1041, 
                :supplier_id    => 3,
                :name           => "Pepper Corno Roso", 
                :weight         => 30,
                :order_code     => "V43",
                :packaging      => "data entry required",
                :description    => "Also known as Bulls Horns in Italy due to their shape or Corno di Toro. Sweet, red, fleshy, tapering fruits. Absolutely great cooked on a griddle or B-B-Q. @300 seeds. Sow Feb - end May.",
                :filename       => "images/49ab768a.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1042, 
                :supplier_id    => 3,
                :name           => "Pepper Frigitelo (friarielo)", 
                :weight         => 30,
                :order_code     => "V54",
                :packaging      => "data entry required",
                :description    => "RHS 'AGM' AWARD WINNER. Friariello Peppers Famous Neapolitan/Southern Italian pepper which is grilled or fried whole and are probably the most well known by Italians of all the  Italian peppers. Long, bull horn type peppers. Sow Feb - May.",
                :filename       => "images/cd675e40.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1043, 
                :supplier_id    => 3,
                :name           => "Savoy Cabbage Of Mantova", 
                :weight         => 30,
                :order_code     => "V59",
                :packaging      => "data entry required",
                :description    => "Very large head. Cold resistant. @1800. Sow May - end July.",
                :filename       => "images/7566b2cf.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1044, 
                :supplier_id    => 3,
                :name           => "Spinach Baby Leaf Inbrido F1", 
                :weight         => 30,
                :order_code     => "V64a",
                :packaging      => "data entry required",
                :description    => "Available from Feb 09  the  name is pretty self explanatory but an excellent variety for eating raw. Sow in spring and autumn.",
                :filename       => "images/bd913a63.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1045, 
                :supplier_id    => 3,
                :name           => "Swiss Chard Costa Bianca", 
                :weight         => 30,
                :order_code     => "V65",
                :packaging      => "data entry required",
                :description    => "The ever popular. Cook the leaves like spinach then boil the  stalks and toss in butter or add to 'Frittata'. @500. Sow Mar - end July and harvest till mid Oct.",
                :filename       => "images/f7b38ce0.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1046, 
                :supplier_id    => 3,
                :name           => "Turnip Of Milan", 
                :weight         => 30,
                :order_code     => "V70",
                :packaging      => "data entry required",
                :description    => "Rose coloured neck with white base. Great flavour. @5400. Sow Apr - end Jul.",
                :filename       => "images/fa8a1b7c.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1047, 
                :supplier_id    => 3,
                :name           => "Parsnip Pastinaca Dugi Bijeli", 
                :weight         => 30,
                :order_code     => "V83",
                :packaging      => "data entry required",
                :description    => "Yugoslavian variety producing large sweet root ideal for roasting.",
                :filename       => "images/b98ab649.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1048, 
                :supplier_id    => 3,
                :name           => "Butternut Squash Rugosa", 
                :weight         => 50,
                :order_code     => "C26",
                :packaging      => "data entry required",
                :description    => "Mid-late. Good foliage and a good producer. The long, pear shaped fruits have a smooth skin with sweet, meaty yellow-orange flesh. Much easier to peel than scalloped varieties.",
                :filename       => "images/6f42d857.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1049, 
                :supplier_id    => 3,
                :name           => "Squash Serpente Di Sicilia", 
                :weight         => 50,
                :order_code     => "C29",
                :packaging      => "data entry required",
                :description    => "Sicilian Snakes - obvious to see why this unusual squash got it's name. Commonly known in the US and by Sicilians as 'Cuccuzze'. Cook like a courgette. Fruits can grow over 2 metres in length !! @30. Sow Apr - Jul.",
                :filename       => "images/06d4fc5d.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1050, 
                :supplier_id    => 3,
                :name           => "Pumpkin Halloween", 
                :weight         => 40,
                :order_code     => "GL30",
                :packaging      => "data entry required",
                :description    => "Classic pumpkin for Halloween, right size and shape for cutting. @15. Sow Feb - May",
                :filename       => "images/6a37e128.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1051, 
                :supplier_id    => 3,
                :name           => "Borlotto Bean Di Vigevano", 
                :weight         => 30,
                :order_code     => "B1",
                :packaging      => "data entry required",
                :description    => "Classic dwarf Borlotti variety. The pod is discarded for the  mottled reddish/brown and white bean inside, which is used for risotto, thick warming winter soups etc. 60 grams. Sow Apr - Jul.",
                :filename       => "images/33876662.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1052, 
                :supplier_id    => 3,
                :name           => "Borlotto Green Bean Albenghino", 
                :weight         => 50,
                :order_code     => "B4a",
                :packaging      => "empty",
                :description    => "This late climbing variety is essentially a Green Borlotto bean for shelling, but the wide pods can be eaten whole when they are very young. Plant height about 180cm and each pod is 12/13cms in length and will contain 6-7 beans.",
                :filename       => "images/noproductimage.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1053, 
                :supplier_id    => 3,
                :name           => "Pea Telefono", 
                :weight         => 50,
                :order_code     => "B24",
                :packaging      => "data entry required",
                :description    => "Late variety with an intense green, straight pod around 11cm long. Climber. 70g. Sow Feb - May and Sep - Nov.",
                :filename       => "images/0f7085b4.jpg"
        )
                @product.sale_price =  1.21
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"


        @product = Product.new( 
                :id             => 1054, 
                :supplier_id    => 3,
                :name           => "Mais Sweet Corn", 
                :weight         => 30,
                :order_code     => "B31",
                :packaging      => "data entry required",
                :description    => "Mid-Early. Plant 150-180cms tall, vigorous and of good production. Produces sweet eating cobs about 20cm in length which should be harvested when fully mature. Boil and serve with a knob of butter. 100g pack.",
                :filename       => "images/3206f000.jpg"
        )
                @product.sale_price =  0.74
@product.save!
puts "saved product with id #{@product.id} called #{@product.name}"

    
    } 
