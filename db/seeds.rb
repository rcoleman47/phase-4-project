puts "Creating seeds..."

# Generate users
ryan = User.create(username: "ryanadams", email: "myemail@gmail.com", password: "password")
coleman = User.create(username: "coleman", email: "abc@gmail.com", password: "password")

# Generate courses
gc_edmond = Course.create(name: "Golf Club of Edmond", address: "2905 N Sooner Road", city: "Edmond", state: "Oklahoma", image_url: "https://i0.wp.com/www.golfedmond.com/wp-content/uploads/2016/06/Golf-Club-Edmond-Final-1.png?fit=520%2C170")
karsten = Course.create(name: "Karsten Creek Golf Club", address: "1800 S Memorial Dr", city: "Stillwater", state: "Oklahoma", image_url: "https://pbs.twimg.com/profile_images/2487606153/KarstenCreek_400x400.jpg")
augusta = Course.create(name: "Augusta National Golf Club", address: "2604 Washington Rd", city: "Augusta", state: "Georgia", image_url: "https://linkslifegolf.com/wp-content/uploads/2015/03/masters-logo-green.jpg")
southern = Course.create(name: "Southern Hills Country Club", address: "2636 E 61st St", city: "Tulsa", state: "Oklahoma", image_url: "https://www.southernhillscc.com/images/dynamic/getImage.gif?ID=100004972")

# Generate tee_boxes
edmond = TeeBox.create(tee: "Championship", color: "Gold", par: 70, course_id: gc_edmond.id)
stillwater = TeeBox.create(tee: "Championship", color: "Orange", par: 70, course_id: karsten.id)
georgia = TeeBox.create(tee: "Championship", color: "Black", par: 70, course_id: augusta.id)
tulsa = TeeBox.create(tee: "Championship", color: "Black", par: 70, course_id: southern.id)

# Generate Rounds
r1 = Round.create(tee: "Championship", course_id: gc_edmond.id, user_id: ryan.id)
r2 = Round.create(tee: "Championship", course_id: karsten.id, user_id: ryan.id)
r3 = Round.create(tee: "Championship", course_id: augusta.id, user_id: ryan.id)
r4 = Round.create(tee: "Championship", course_id: southern.id, user_id: ryan.id)

c1 = Round.create(tee: "Championship", course_id: gc_edmond.id, user_id: coleman.id)
c2 = Round.create(tee: "Championship", course_id: karsten.id, user_id: coleman.id)
c3 = Round.create(tee: "Championship", course_id: gc_edmond.id, user_id: coleman.id)
c4 = Round.create(tee: "Championship", course_id: southern.id, user_id: coleman.id)

# Generate scores
Score.create(hole_number: 1, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 7, score: 7, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 11, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 14, score: 3, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id:r1.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id:r1.id)

Score.create(hole_number: 1, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 11, score: 6, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 13, score: 6, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 14, score: 5, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id: r2.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id: r2.id)

Score.create(hole_number: 1, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 11, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 14, score: 3, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id: r3.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id: r3.id)

Score.create(hole_number: 1, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 2, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 11, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 14, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id: r4.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id: r4.id)

Score.create(hole_number: 1, score: 8, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 10, score: 5, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 11, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 14, score: 5, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 16, score: 5, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id:c1.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id:c1.id)

Score.create(hole_number: 1, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 11, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 14, score: 3, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id: c2.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id: c2.id)

Score.create(hole_number: 1, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 4, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 9, score: 5, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 11, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 14, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id: c3.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id: c3.id)

Score.create(hole_number: 1, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 2, score: 5, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 3, score: 3, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 4, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 5, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 6, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 7, score: 3, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 8, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 9, score: 7, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 10, score: 3, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 11, score: 7, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 12, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 13, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 14, score: 3, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 15, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 16, score: 4, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 17, score: 3, gir: true, fir: true, putts: 2, round_id: c4.id)
Score.create(hole_number: 18, score: 5, gir: true, fir: true, putts: 2, round_id: c4.id)

# Generate holes
# # Championship 
Hole.create(number: 1, par: 4, distance: 330, handicap: 17, tee_box_id: edmond.id)
Hole.create(number: 2, par: 5, distance: 519, handicap: 9, tee_box_id: edmond.id)
Hole.create(number: 3, par: 3, distance: 182, handicap: 7, tee_box_id: edmond.id)
Hole.create(number: 4, par: 4, distance: 362, handicap: 13, tee_box_id: edmond.id)
Hole.create(number: 5, par: 4, distance: 400, handicap: 5, tee_box_id: edmond.id)
Hole.create(number: 6, par: 4, distance: 516, handicap: 1, tee_box_id: edmond.id)
Hole.create(number: 7, par: 3, distance: 175, handicap: 11, tee_box_id: edmond.id)
Hole.create(number: 8, par: 4, distance: 423, handicap: 15, tee_box_id: edmond.id)
Hole.create(number: 9, par: 5, distance: 654, handicap: 3, tee_box_id: edmond.id)
Hole.create(number: 10, par: 3, distance: 212, handicap: 6, tee_box_id: edmond.id)
Hole.create(number: 11, par: 4, distance: 395, handicap: 10, tee_box_id: edmond.id)
Hole.create(number: 12, par: 4, distance: 376, handicap: 2, tee_box_id: edmond.id)
Hole.create(number: 13, par: 4, distance: 412, handicap: 4, tee_box_id: edmond.id)
Hole.create(number: 14, par: 3, distance: 148, handicap: 18, tee_box_id: edmond.id)
Hole.create(number: 15, par: 4, distance: 345, handicap: 14, tee_box_id: edmond.id)
Hole.create(number: 16, par: 4, distance: 435, handicap: 8, tee_box_id: edmond.id)
Hole.create(number: 17, par: 3, distance: 169, handicap: 16, tee_box_id: edmond.id)
Hole.create(number: 18, par: 5, distance: 521, handicap: 12, tee_box_id: edmond.id)

Hole.create(number: 1, par: 4, distance: 330, handicap: 17, tee_box_id: stillwater.id)
Hole.create(number: 2, par: 5, distance: 519, handicap: 9, tee_box_id: stillwater.id)
Hole.create(number: 3, par: 3, distance: 220, handicap: 7, tee_box_id: stillwater.id)
Hole.create(number: 4, par: 4, distance: 362, handicap: 13, tee_box_id: stillwater.id)
Hole.create(number: 5, par: 4, distance: 400, handicap: 5, tee_box_id: stillwater.id)
Hole.create(number: 6, par: 4, distance: 660, handicap: 1, tee_box_id: stillwater.id)
Hole.create(number: 7, par: 3, distance: 175, handicap: 11, tee_box_id: stillwater.id)
Hole.create(number: 8, par: 4, distance: 423, handicap: 15, tee_box_id: stillwater.id)
Hole.create(number: 9, par: 5, distance: 654, handicap: 3, tee_box_id: stillwater.id)
Hole.create(number: 10, par: 3, distance: 212, handicap: 6, tee_box_id: stillwater.id)
Hole.create(number: 11, par: 4, distance: 395, handicap: 10, tee_box_id: stillwater.id)
Hole.create(number: 12, par: 4, distance: 376, handicap: 2, tee_box_id: stillwater.id)
Hole.create(number: 13, par: 4, distance: 500, handicap: 4, tee_box_id: stillwater.id)
Hole.create(number: 14, par: 3, distance: 148, handicap: 18, tee_box_id: stillwater.id)
Hole.create(number: 15, par: 4, distance: 345, handicap: 14, tee_box_id: stillwater.id)
Hole.create(number: 16, par: 4, distance: 435, handicap: 8, tee_box_id: stillwater.id)
Hole.create(number: 17, par: 3, distance: 220, handicap: 16, tee_box_id: stillwater.id)
Hole.create(number: 18, par: 5, distance: 521, handicap: 12, tee_box_id: stillwater.id)

Hole.create(number: 1, par: 4, distance: 330, handicap: 17, tee_box_id: georgia.id)
Hole.create(number: 2, par: 5, distance: 650, handicap: 9, tee_box_id: georgia.id)
Hole.create(number: 3, par: 3, distance: 182, handicap: 7, tee_box_id: georgia.id)
Hole.create(number: 4, par: 4, distance: 362, handicap: 13, tee_box_id: georgia.id)
Hole.create(number: 5, par: 4, distance: 450, handicap: 5, tee_box_id: georgia.id)
Hole.create(number: 6, par: 4, distance: 516, handicap: 1, tee_box_id: georgia.id)
Hole.create(number: 7, par: 3, distance: 260, handicap: 11, tee_box_id: georgia.id)
Hole.create(number: 8, par: 4, distance: 423, handicap: 15, tee_box_id: georgia.id)
Hole.create(number: 9, par: 5, distance: 654, handicap: 3, tee_box_id: georgia.id)
Hole.create(number: 10, par: 3, distance: 250, handicap: 6, tee_box_id: georgia.id)
Hole.create(number: 11, par: 4, distance: 500, handicap: 10, tee_box_id: georgia.id)
Hole.create(number: 12, par: 4, distance: 450, handicap: 2, tee_box_id: georgia.id)
Hole.create(number: 13, par: 4, distance: 412, handicap: 4, tee_box_id: georgia.id)
Hole.create(number: 14, par: 3, distance: 148, handicap: 18, tee_box_id: georgia.id)
Hole.create(number: 15, par: 4, distance: 345, handicap: 14, tee_box_id: georgia.id)
Hole.create(number: 16, par: 4, distance: 435, handicap: 8, tee_box_id: georgia.id)
Hole.create(number: 17, par: 3, distance: 200, handicap: 16, tee_box_id: georgia.id)
Hole.create(number: 18, par: 5, distance: 521, handicap: 12, tee_box_id: georgia.id)

Hole.create(number: 1, par: 4, distance: 430, handicap: 17, tee_box_id: tulsa.id)
Hole.create(number: 2, par: 5, distance: 589, handicap: 9, tee_box_id: tulsa.id)
Hole.create(number: 3, par: 3, distance: 182, handicap: 7, tee_box_id: tulsa.id)
Hole.create(number: 4, par: 4, distance: 362, handicap: 13, tee_box_id: tulsa.id)
Hole.create(number: 5, par: 4, distance: 570, handicap: 5, tee_box_id: tulsa.id)
Hole.create(number: 6, par: 4, distance: 550, handicap: 1, tee_box_id: tulsa.id)
Hole.create(number: 7, par: 3, distance: 200, handicap: 11, tee_box_id: tulsa.id)
Hole.create(number: 8, par: 4, distance: 523, handicap: 15, tee_box_id: tulsa.id)
Hole.create(number: 9, par: 5, distance: 694, handicap: 3, tee_box_id: tulsa.id)
Hole.create(number: 10, par: 3, distance: 212, handicap: 6, tee_box_id: tulsa.id)
Hole.create(number: 11, par: 4, distance: 495, handicap: 10, tee_box_id: tulsa.id)
Hole.create(number: 12, par: 4, distance: 476, handicap: 2, tee_box_id: tulsa.id)
Hole.create(number: 13, par: 4, distance: 512, handicap: 4, tee_box_id: tulsa.id)
Hole.create(number: 14, par: 3, distance: 248, handicap: 18, tee_box_id: tulsa.id)
Hole.create(number: 15, par: 4, distance: 445, handicap: 14, tee_box_id: tulsa.id)
Hole.create(number: 16, par: 4, distance: 535, handicap: 8, tee_box_id: tulsa.id)
Hole.create(number: 17, par: 3, distance: 269, handicap: 16, tee_box_id: tulsa.id)
Hole.create(number: 18, par: 5, distance: 521, handicap: 12, tee_box_id: tulsa.id)

puts "Seeding Done! ...I guess"