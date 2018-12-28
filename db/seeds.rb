# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# the heights

theHeights = [{street_address: '258 Webster Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:499000, neighborhood:'The Heights', bedrooms:3,bathrooms:3, listing_type:'For Sale'},
			  {street_address: '57 Saint Pauls Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:329000, neighborhood:'The Heights', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
			  {street_address: '317 New York Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:340000, neighborhood:'The Heights', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
			  {street_address: '72 Jefferson Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:152900, neighborhood:'The Heights', bedrooms:0,bathrooms:1, listing_type:'For Sale'},
			  {street_address: '28 Beach St', city: 'Jersey City', state:'NJ', zipcode:'07307',price:440000, neighborhood:'The Heights', bedrooms:2,bathrooms:1, listing_type:'For Sale'},
			  {street_address: '390 Ogden Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:2400, neighborhood:'The Heights', bedrooms:4,bathrooms:2, listing_type:'For Rent'},
			  {street_address: '967 Summit Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1450, neighborhood:'The Heights', bedrooms:1,bathrooms:1, listing_type:'For Rent'},
			  {street_address: '345 Palisade Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1850, neighborhood:'The Heights', bedrooms:2,bathrooms:1, listing_type:'For Rent'},
			  {street_address: '880 Summit Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:2400, neighborhood:'The Heights', bedrooms:1,bathrooms:2, listing_type:'For Rent'},
			  {street_address: '77 Sherman Pl', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1900, neighborhood:'The Heights', bedrooms:2,bathrooms:1, listing_type:'For Rent'}]

greenville = [{street_address: '106 Stegman St', city: 'Jersey City', state:'NJ', zipcode:'07305',price:299000, neighborhood:'Greenville', bedrooms:3,bathrooms:3, listing_type:'For Sale'},
			  {street_address: '119 Armstrong Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:549000, neighborhood:'Greenville', bedrooms:8,bathrooms:5, listing_type:'For Sale'},
			  {street_address: '50 Armstrong Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:379900, neighborhood:'Greenville', bedrooms:3,bathrooms:4, listing_type:'For Sale'},
			  {street_address: '38 Neptune Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:254900, neighborhood:'Greenville', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
			  {street_address: '181 Lemback Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:299000, neighborhood:'Greenville', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
			  {street_address: '402 Woodlaw Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:450000, neighborhood:'Greenville', bedrooms:5,bathrooms:2, listing_type:'For Sale'},
			  {street_address: '167 McAdoo Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:395000, neighborhood:'Greenville', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
			  {street_address: '379 Stegman Pkway', city: 'Jersey City', state:'NJ', zipcode:'07305',price:2795, neighborhood:'Greenville', bedrooms:5,bathrooms:2, listing_type:'For Rent'},
			  {street_address: '343 Princeton Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:2595, neighborhood:'Greenville', bedrooms:2,bathrooms:1, listing_type:'For Rent'},
			  {street_address: '19 Van Nostrand', city: 'Jersey City', state:'NJ', zipcode:'07305',price:1256, neighborhood:'Greenville', bedrooms:2,bathrooms:1, listing_type:'For Rent'}]

downtown = [{street_address: '433 Monmouth St', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1699999, neighborhood:'Downtown', bedrooms:4,bathrooms:3, listing_type:'For Sale'},
            {street_address: '263 10th St', city: 'Jersey City', state:'NJ', zipcode:'07302',price:475000, neighborhood:'Downtown', bedrooms:2,bathrooms:1, listing_type:'For Sale'},
            {street_address: '201 Marin Blvd', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1050000, neighborhood:'Downtown', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
            {street_address: '135 Montgomery St', city: 'Jersey City', state:'NJ', zipcode:'07302',price:398800, neighborhood:'Downtown', bedrooms:1,bathrooms:1, listing_type:'For Sale'},
        	{street_address: '331 Pavonia Ave', city: 'Jersey City', state:'NJ', zipcode:'07302',price:949000, neighborhood:'Downtown', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
        	{street_address: '267 3rd St', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1150000, neighborhood:'Downtown', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
        	{street_address: '58 Coles St #302', city: 'Jersey City', state:'NJ', zipcode:'07302',price:768000, neighborhood:'Downtown', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
        	{street_address: '186 Wayne St', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1850, neighborhood:'Downtown', bedrooms:0,bathrooms:1, listing_type:'For Rent'},
        	{street_address: '134 Morris St', city: 'Jersey City', state:'NJ', zipcode:'07302',price:3200, neighborhood:'Downtown', bedrooms:3,bathrooms:2, listing_type:'For Rent'},
            {street_address: '522 Manila Ave', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1990, neighborhood:'Downtown', bedrooms:1,bathrooms:1, listing_type:'For Rent'}]

theWaterfront= [{street_address: '15 Mill Road Ext', city: 'Jersey City', state:'NJ', zipcode:'07677',price:700000, neighborhood:'The Waterfront', bedrooms:5,bathrooms:6, listing_type:'For Sale'},
                {street_address: '25 Hudson St #604', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1350000, neighborhood:'The Waterfront', bedrooms:2,bathrooms:3, listing_type:'For Sale'},
                {street_address: '81 Montgomery St #7', city: 'Jersey City', state:'NJ', zipcode:'07302',price:725000, neighborhood:'The Waterfront', bedrooms:1,bathrooms:1, listing_type:'For Sale'},
                {street_address: '309 Bolz St', city: 'Jersey City', state:'NJ', zipcode:'07632',price:1368000, neighborhood:'The Waterfront', bedrooms:5,bathrooms:4, listing_type:'For Sale'},
                {street_address: '253 Washington St #401', city: 'Jersey City', state:'NJ', zipcode:'07302',price:925000, neighborhood:'The Waterfront', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
                {street_address: '20 Newport Pkwy #1512', city: 'Jersey City', state:'NJ', zipcode:'07310',price:1075000, neighborhood:'The Waterfront', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
                {street_address: '666 Liberty Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1700, neighborhood:'The Waterfront', bedrooms:2,bathrooms:1, listing_type:'For Rent'},
                {street_address: '105 Greene St #1904', city: 'Jersey City', state:'NJ', zipcode:'07302',price:1295000, neighborhood:'The Waterfront', bedrooms:2,bathrooms:3, listing_type:'For Sale'}]

bergenLafayette = [{street_address: '592 Ocean Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:357000, neighborhood:'Bergen-Lafayette', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
                   {street_address: '197 Arlington Ave', city: 'Jersey City', state:'NJ', zipcode:'07305',price:375000, neighborhood:'Bergen-Lafayette', bedrooms:6,bathrooms:2, listing_type:'For Sale'},
                   {street_address: '812 Ocean Ave', city: 'Jersey City', state:'NJ', zipcode:'07304',price:385000, neighborhood:'Bergen-Lafayette', bedrooms:4,bathrooms:2, listing_type:'For Sale'},
               	   {street_address: '248 Pine St', city: 'Jersey City', state:'NJ', zipcode:'07304',price:295000, neighborhood:'Bergen-Lafayette', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
               	   {street_address: '137 Van Horne St', city: 'Jersey City', state:'NJ', zipcode:'07304',price:280000, neighborhood:'Bergen-Lafayette', bedrooms:2,bathrooms:1, listing_type:'For Sale'},
               	   {street_address: '424 Whiton St #603', city: 'Jersey City', state:'NJ', zipcode:'07304',price:2350, neighborhood:'Bergen-Lafayette', bedrooms:2,bathrooms:1, listing_type:'For Rent'}]             
        	
