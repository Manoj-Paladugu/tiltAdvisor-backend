# MySQL script for inserting sample data into the database


INSERT INTO VenueCategory
    (category_id, category_name, category_description)
VALUES
    (1, 'Accommodation', 'The best places to stay in town.'),
    (2, 'Cafés & Restaurants', 'The finest dining in town.'),
    (3, 'Attractions', 'The best things to see in town.'),
    (4, 'Events', 'What\'s going on in town.'),
    (5, 'Nature Spots', 'The most beautiful bits of nature in town.');

INSERT INTO Venue
    (venue_id, admin_id, category_id, venue_name, city, short_description, long_description, date_added, address,
    latitude, longitude)
VALUES
    (1, 1, 2, 'The Wok', 'Christchurch', 'Home of the world-famous $2 rice', '', '2018-12-25',
    'Ground Floor, The Undercroft, University of Canterbury, University Dr, Ilam, Christchurch 8041',
    -43.523617, 172.582885),
    (2, 2, 5, 'Ilam Gardens', 'Christchurch', 'Kinda pretty', '', '2019-01-01',
    '87 Ilam Rd, Ilam, Christchurch 8041, New Zealand',
    -43.524219, 172.576032),
    (3, 3, 1, 'Erskine Building', 'Christchurch', 'Many a late night has been spent here', '', '2019-01-01',
    'Erskine Science Rd, Ilam, Christchurch 8041, New Zealand',
    -43.522535, 172.581086),
    (4, 3, 5, 'Hagley Park', 'Christchurch', 'Christchurch\'s biggest park',
	'The largest urban open space (164.637 hectares) in Christchurch, New Zealand, it was created in 1855 by the Provincial Government.', '2010-01-05',
    'Moorhouse and Hagley Ave, Christchurch Central, Christchurch 8011, New Zealand',
    -43.534179, 172.615708),
    (5, 3, 2, 'Bush Inn', 'Christchurch', 'Lots of great food places', '', '2018-06-01',
    'Waimari and Riccarton Road, Upper Riccarton, Christchurch 8041, New Zealand',
    -43.529955, 172.574853),
    (6, 3, 3, 'Sky Tower', 'Auckland', 'The tallest building in New Zealand', 'Landmark 60-story tower featuring panoramic views, bungee jumping & a high-end revolving restaurant.', '2016-02-01',
    'Victoria St W, Auckland 1010, New Zealand',
    -36.848448, 174.762363),
    (7, 3, 3, 'Wellington Zoo', 'Wellington', 'New Zealand\'s first zoo',
	'Wellington Zoo is nestled in the green belt of Wellington, New Zealand. Now over 100 years old, it was the country\'s first zoo and has 13-hectare (32-acre) dedicated to over 100 species of fauna from across the globe.', '2012-03-10',
    '200 Daniell St, Newtown, Wellington 6021, New Zealand',
    -41.319538, 174.784664),
    (8, 3, 5, 'Tunnel Beach', 'Dunedin', 'A cool beach accessible via tunnel', 
	'A historic hand-carved tunnel leads to to this popular diving & snorkeling spot with cliffs & caves.', '2018-09-01',
    'Otago 9076, New Zealand',
    -45.920765, 170.458845),
    (9, 3, 1, 'JUCY Snooze', 'Christchurch', 'NZ\'s first capsule-style accommodation', 
	'Set 1 km from Christchurch International Airport, this hip hostel is also 1 km from International Antarctic Centre and 7 km from Willowbank Wildlife Reserve.', '2019-02-20',
    '5 Peter Leeming Rd, Christchurch Airport, Christchurch 8053, New Zealand',
    -43.489885, 172.548961),
    (10, 3, 4, 'CompSoc Quiz Night', 'Christchurch', 'Quiz with the theme of "The Birthday of the Internet"', 
	'CompSoc presents the annual Quiz Night! Feel like you’ve forgotten someone’s birthday this year? Maybe a small someone like the entire internet? This year, the theme is “The Birthday of the Internet”, so get all of your best internet and anniversary facts nailed down and come along for a great time!', '2019-05-01',
    'The Foundry, 90 Ilam Rd, Ilam, Christchurch 8041, New Zealand',
    -43.525113, 172.580171),
    (11, 3, 5, 'The Groynes', 'Christchurch', 'Park in north-east Christchurch', 
	'Rustic park featuring walking trails, off-leash dog areas, picnic spots, fishing & a playground.', '2006-01-01',
    'Northwood, Christchurch 8051, New Zealand',
    -43.449718, 172.605262),
    (12, 3, 2, 'The Good Street Deli', 'Christchurch', 'Not on Good Street', 'A cafe opposite South Hagley Park', '2019-01-01',
    '12 Moorhouse Ave, Addington, Christchurch 8011, New Zealand',
    -43.540323, 172.613136);

INSERT INTO Review
    (reviewed_venue_id, review_author_id, review_body, star_rating, cost_rating, time_posted)
VALUES
    (1, 8, 'No more $2 rice, it\'s all a lie.', 3, 4, '2019-02-20 22:05:24'),
    (1, 9, 'Good rice for a good price.', 4, 2, '2019-02-12 18:42:01'),
    (3, 8, 'Had to provide our own beanbags to sleep on.', 1, 0, '2018-09-28 07:42:11'),
    (3, 5, 'Good air conditioning.', 5, 0, '2018-06-01 10:31:45'),
    (3, 4, 'My favourite place on earth.', 4, 3, '2019-01-19 12:34:59'),
    (4, 1, 'It\'s big.', 4, 0, '2019-01-15 10:00:00');

INSERT INTO VenuePhoto
    (venue_id, photo_filename, photo_description, is_primary)
VALUES
    (3, 'erskine.jpg', 'The north-east side of Erskine', 1),
    (4, 'hagley.jpg', 'A tree fallen over after heavy winds.', 1)