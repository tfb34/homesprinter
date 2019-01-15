# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# the heights

theHeights = [{street_address: '258 Webster Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:499000, neighborhood:'The Heights', bedrooms:3,bathrooms:3, listing_type:'For Sale', pic_url:'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/258websterave.jpg'},
			  {street_address: '57 Saint Pauls Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:329000, neighborhood:'The Heights', bedrooms:2,bathrooms:2, listing_type:'For Sale', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/57SaintPaulsAve.jpg'},
			  {street_address: '317 New York Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:340000, neighborhood:'The Heights', bedrooms:2,bathrooms:2, listing_type:'For Sale', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/317NewYorkAve.jpg'},
			  {street_address: '72 Jefferson Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:152900, neighborhood:'The Heights', bedrooms:0,bathrooms:1, listing_type:'For Sale', pic_url:'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/72JeffersonAve.jpg'},
			  {street_address: '28 Beach St', city: 'Jersey City', state:'NJ', zipcode:'07307',price:440000, neighborhood:'The Heights', bedrooms:2,bathrooms:1, listing_type:'For Sale', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/28BeachSt.jpg'},
			  {street_address: '390 Ogden Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:2400, neighborhood:'The Heights', bedrooms:4,bathrooms:2, listing_type:'For Rent', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/390OgdenAve.jpg'},
			  {street_address: '967 Summit Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1450, neighborhood:'The Heights', bedrooms:1,bathrooms:1, listing_type:'For Rent', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/967SummitAve.jpg'},
			  {street_address: '345 Palisade Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1850, neighborhood:'The Heights', bedrooms:2,bathrooms:1, listing_type:'For Rent', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/345PalisadeAve.jpg'},
			  {street_address: '880 Summit Ave', city: 'Jersey City', state:'NJ', zipcode:'07307',price:2400, neighborhood:'The Heights', bedrooms:1,bathrooms:2, listing_type:'For Rent', pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/880SummitAve.jpg'},
			  {street_address: '77 Sherman Pl', city: 'Jersey City', state:'NJ', zipcode:'07307',price:1900, neighborhood:'The Heights', bedrooms:2,bathrooms:1, listing_type:'For Rent',pic_url: 'https://raw.githubusercontent.com/tfb34/homesprinter/master/app/assets/images/77ShermanPl.jpg'}]

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

theWaterfront = [{street_address: '15 Mill Road Ext', city: 'Jersey City', state:'NJ', zipcode:'07677',price:700000, neighborhood:'The Waterfront', bedrooms:5,bathrooms:6, listing_type:'For Sale'},
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
        	
journalSquare = [{street_address: '14 Holmes Ave', city: 'Jersey City', state:'NJ', zipcode:'07306',price:699000, neighborhood:'Journal Square', bedrooms:4,bathrooms:3, listing_type:'For Sale'},
                {street_address: '76 Romaine Ave', city: 'Jersey City', state:'NJ', zipcode:'07306',price:224900, neighborhood:'Journal Square', bedrooms:2,bathrooms:1, listing_type:'For Sale'},
                {street_address: '34 Van Reypen St', city: 'Jersey City', state:'NJ', zipcode:'07306',price:849999, neighborhood:'Journal Square', bedrooms:6,bathrooms:2, listing_type:'For Sale'},
                {street_address: '105 Waldo Ave', city: 'Jersey City', state:'NJ', zipcode:'07306',price:650000, neighborhood:'Journal Square', bedrooms:4,bathrooms:2, listing_type:'For Sale'},
                {street_address: '435 Wayne St', city: 'Jersey City', state:'NJ', zipcode:'07306',price:799000, neighborhood:'Journal Square', bedrooms:5,bathrooms:2, listing_type:'For Sale'},
                {street_address: '36 Lewis Ave', city: 'Jersey City', state:'NJ', zipcode:'07306',price:479900, neighborhood:'Journal Square', bedrooms:4,bathrooms:2, listing_type:'For Sale'},
                {street_address: '54 Magnolia Ave #3', city: 'Jersey City', state:'NJ', zipcode:'07306',price:2200, neighborhood:'Journal Square', bedrooms:2,bathrooms:1, listing_type:'For Rent'},
                {street_address: '272 Saint Pauls Ave #2', city: 'Jersey City', state:'NJ', zipcode:'07306',price:2900, neighborhood:'Journal Square', bedrooms:3,bathrooms:2, listing_type:'For Rent'},
                {street_address: '616 Pavonia Ave', city: 'Jersey City', state:'NJ', zipcode:'07306',price:2275, neighborhood:'Journal Square', bedrooms:1,bathrooms:1, listing_type:'For Rent'},
                {street_address: '64 Newkirk St #7', city: 'Jersey City', state:'NJ', zipcode:'07306',price:1575, neighborhood:'Journal Square', bedrooms:2,bathrooms:1, listing_type:'For Rent'}]

mcginleySquare = [{street_address: '56 Glenwood Ave #48', city: 'Jersey City', state:'NJ', zipcode:'07306',price:225000, neighborhood:'McGinley Square', bedrooms:0,bathrooms:1, listing_type:'For Sale'},
                  {street_address: '280 Summit Ave #1', city: 'Jersey City', state:'NJ', zipcode:'07306',price:599000, neighborhood:'McGinley Square', bedrooms:3,bathrooms:3, listing_type:'For Sale'},
                  {street_address: '618 Montgomery St #1', city: 'Jersey City', state:'NJ', zipcode:'07302',price:849000, neighborhood:'McGinley Square', bedrooms:3,bathrooms:4, listing_type:'For Sale'},
                  {street_address: '37 Park St', city: 'Jersey City', state:'NJ', zipcode:'07304',price:489999, neighborhood:'McGinley Square', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
                  {street_address: '165 Belmont Ave', city: 'Jersey City', state:'NJ', zipcode:'07304',price:610000, neighborhood:'McGinley Square', bedrooms:3,bathrooms:2, listing_type:'For Sale'},
                  {street_address: '130 Glenwood Ave', city: 'Jersey City', state:'NJ', zipcode:'07306',price:629000, neighborhood:'McGinley Square', bedrooms:4,bathrooms:3, listing_type:'For Sale'},
                  {street_address: '4 Beacon Way #403', city: 'Jersey City', state:'NJ', zipcode:'07304',price:350500, neighborhood:'McGinley Square', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
                  {street_address: '59 Brinkerhoff St #2', city: 'Jersey City', state:'NJ', zipcode:'07304',price:1499, neighborhood:'McGinley Square', bedrooms:2,bathrooms:1, listing_type:'For Rent'},
                  {street_address: '333 Fairmount', city: 'Jersey City', state:'NJ', zipcode:'07306',price:1795, neighborhood:'McGinley Square', bedrooms:1,bathrooms:1, listing_type:'For Rent'},
                  {street_address: '169 Highland Ave #4', city: 'Jersey City', state:'NJ', zipcode:'07306',price:1399, neighborhood:'McGinley Square', bedrooms:2,bathrooms:1, listing_type:'For Rent'}]


hackensackRiverfront = [{street_address: '105 Cherry St #16A3', city: 'Jersey City', state:'NJ', zipcode:'07305',price:299900, neighborhood:'Hackensack Riverfront', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
                        {street_address: '25 Birch St', city: 'Jersey City', state:'NJ', zipcode:'07305',price:439900, neighborhood:'Hackensack Riverfront', bedrooms:2,bathrooms:3, listing_type:'For Sale'},
                        {street_address: '136 Cherry St', city: 'Jersey City', state:'NJ', zipcode:'07305',price:325000, neighborhood:'Hackensack Riverfront', bedrooms:2,bathrooms:1.5, listing_type:'For Sale'},
                        {street_address: '50 Locust St', city: 'Jersey City', state:'NJ', zipcode:'07305',price:549900, neighborhood:'Hackensack Riverfront', bedrooms:3,bathrooms:3, listing_type:'For Sale'},
                        {street_address: '32 Lyon Ct', city: 'Jersey City', state:'NJ', zipcode:'07305',price:282596, neighborhood:'Hackensack Riverfront', bedrooms:2,bathrooms:2.5, listing_type:'For Sale'},
                        {street_address: '2 Cottonwood St', city: 'Jersey City', state:'NJ', zipcode:'07305',price:275349, neighborhood:'Hackensack Riverfront', bedrooms:1,bathrooms:1, listing_type:'For Sale'},
                        {street_address: '26 Tottenham Ct', city: 'Jersey City', state:'NJ', zipcode:'07305',price:3250, neighborhood:'Hackensack Riverfront', bedrooms:4,bathrooms:3, listing_type:'For Rent'},
                        {street_address: '33 Cypress St', city: 'Jersey City', state:'NJ', zipcode:'07305',price:1925, neighborhood:'Hackensack Riverfront', bedrooms:2,bathrooms:1, listing_type:'For Rent'},
                        {street_address: '80 Lyon Ct', city: 'Jersey City', state:'NJ', zipcode:'07305',price:2495, neighborhood:'Hackensack Riverfront', bedrooms:2,bathrooms:3, listing_type:'For Rent'}]

libertyPark =[{street_address: '109 Shearwater Ct E #21', city: 'Jersey City', state:'NJ', zipcode:'07305',price:599000, neighborhood:'Liberty Park', bedrooms:2,bathrooms:3, listing_type:'For Sale'},
              {street_address: '28 Constitution Way #28', city: 'Jersey City', state:'NJ', zipcode:'07305',price:999000, neighborhood:'Liberty Park', bedrooms:3,bathrooms:4, listing_type:'For Sale'},
              {street_address: '15 Freedomway #304', city: 'Jersey City', state:'NJ', zipcode:'07305',price:599900, neighborhood:'Liberty Park', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
              {street_address: '47 Constitution Way #TH47', city: 'Jersey City', state:'NJ', zipcode:'07305',price:680000, neighborhood:'Liberty Park', bedrooms:3,bathrooms:3, listing_type:'For Sale'},
              {street_address: '10 Intrepid Ct #TH', city: 'Jersey City', state:'NJ', zipcode:'07305',price:769000, neighborhood:'Liberty Park', bedrooms:3,bathrooms:3, listing_type:'For Sale'},
              {street_address: '40 Constitution Way #201', city: 'Jersey City', state:'NJ', zipcode:'07305',price:365000, neighborhood:'Liberty Park', bedrooms:2,bathrooms:2, listing_type:'For Sale'},
              {street_address: '22 Independence', city: 'Jersey City', state:'NJ', zipcode:'07305',price:4700, neighborhood:'Liberty Park', bedrooms:4,bathrooms:3.5, listing_type:'For Rent'}]

neighborhoods = [theHeights,greenville, downtown,theWaterfront, 
                 bergenLafayette, journalSquare, mcginleySquare, 
                 hackensackRiverfront, libertyPark ]

neighborhoods.each do |n|
  Home.create(n)
end