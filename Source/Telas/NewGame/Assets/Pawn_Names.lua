function Load_Images()



end

function Aleatorize_Names_Last()
    Pawn_Male_Names =
    {
      "Kyphis", "Samuel", "Lukas", "Derek", "Chris", "Harvey", "Corwin", "Roman", "Geoffrey", "Andrew", "Brendon", "Austin", "Miles", "Luke", "Maxime", "Daine", "Zachary", "Patrick", "Matthew", "Howard", "Jonathan", "Ranger", "Robert", "Duncan", "Carl", "Tristan", "Jan", "Stephen", "Jack", "Nikolaj", "Tomasz", "Sascha", "Haakon", "Manuel", "Marc", "Kim", "Marcus", "Talal", "Torben", "Florian", "Brian", "Brandon", "Arca", "Paul", "Yorko", "Lucas", "Rowden", "Dennis", "Denis", "Finn", "Marshall", "Connor", "Tsume", "Isaac", "Rafael", "Adam", "Jamison", "Zureal", "Rene", "Kefodu", "John", "Walter", "James", "Rodrick", "Josh", "Trevor", "Jason", "Victor", "Leon", "Joshua", "Zack", "Tom", "Peter", "Don", "Damian", "Yan", "Ron", "Tyrren", "Moyer", "Owen", "McKnight", "Howard", "Javier", "Kay", "Lester", "Newton", "Paine", "Seymour", "Virgil", "Adrian", "Calvin", "Eugene", "Greg", "Irwin", "Kenneth", "Max", "Otis", "Ramon", "Todd", "Bud", "Daniel", "Fabio", "Hector", "Lane", "Norman", "Sergio", "Alvin", "Erick", "Gil", "Ivo", "Kiko", "Octave", "Raymond", "Tico", "Wallis", "York", "Douglas", "Fausto", "Hernan", "Julio", "Lowell", "Norbert", "Odile", "Polo", "Simon", "Vance", "Xavier", "Zeke", "Andres", "Carlos", "Enrique", "Guillermo", "Ignacio", "Kevin", "Marty", "Olaf", "Rick", "Terry", "Waldo", "Blas", "Darby", "Barry", "Dorian", "Fernand", "Humberto", "Jerry", "Lorenzo", "Nestor", "Pablo", "Sebastien", "Van", "Cristobal", "Edouard", "Gonzalo", "Isaias", "Kyle", "Marco", "Omar", "Teddy", "Wilfred", "Bill", "Danny", "Fred", "Henri", "Joaquin", "Larry", "Nicholas", "Sam", "Alex", "Colin", "Earl", "Gaston", "Ian", "Karl", "Otto", "Bret", "Franklin", "Jose", "Nate", "Philip", "Sean", "Vince", "Alberto", "Ernesto", "Gordon", "Kirk", "Michael", "Oscar", "Tony", "William", "Aaron", "Richard", "Nathan", "Mark", "Smith", "Johnson", "Clark", "Lewis", "Allen", "King", "Scott", "Nelson", "Ollie", "Jenson", "Eli", "Jesse", "Cole", "Jude", "Jacob", "Leighton", "Alistair", "Oliver", "Bradley", "Tobias", "Justin", "Darcy", "Cody", "Rowan", "Noah", "Jackson", "Freddie", "Mason", "Ellis", "Kelsey", "Toby", "Arthur", "Lloyd", "Angus", "Henry", "Robbie", "Milo", "Stanley", "Louis", "Kane", "Levi", "Frank", "Elliott", "Troy", "Brodie", "Jonah", "Tynan", "Sly", "Strick", "Hutch", "Lan", "Hadley", "Red", "Bundy", "Lincoln", "Hugh", "Cahuella", "Tanner", "Lyle", "Gideon", "Kepler", "Hooke", "Boyle", "Maxwell", "Kelvin", "Nevil", "Scipio", "Hannibal", "Urist", "Baffin", "Ichabod", "Ratten", "Crink", "McFly", "Leo", "Szilard", "Albert", "Mo", "Lorentz", "Susskind", "Tycho", "Martin", "Scrooge", "Merlin", "Zane", "Gerald", "Bull", "Gerard", "Wade", "Akio", "Daichi", "Daiki", "Daisuke", "Eita", "Haruto", "Hiroki", "Hiroshi", "Hiroto", "Isamu", "Kaito", "Katsumi", "Kazuki", "Kazuya", "Keisuke", "Kenta", "Kenzo", "Kiyoshi", "Kouhei", "Makoto", "Manabu", "Masahiro", "Masao", "Masaru", "Minoru", "Naoki", "Nobu", "Osamu", "Ren", "Riku", "Ryo", "Saburo", "Shigeru", "Shin", "Shinichi", "Shiro", "Shou", "Shouta", "Shun", "Sora", "Souta", "Susumu", "Tadashi", "Taiki", "Takashi", "Takeo", "Takeru", "Takumi", "Takuya", "Tetsuya", "Yoshi", "Yutaka", "Yuto", "Yuudai", "Yuuma", "Yuuta", "Abram", "Alexei", "Anatoly", "Andrei", "Anton", "Arkady", "Arseny", "Artyom", "Artur", "Bogdan", "Boris", "Vadim", "Valentin", "Valery", "Vasily", "Veniamin", "Viktor", "Vitaly", "Vlad", "Vladimir", "Vladislav", "Gavril", "Garry", "Gennady", "Gerasim", "German", "Gleb", "Grigory", "David", "Danil", "Dmitry", "Evgeny", "Yegor", "Yefim", "Zakhar", "Ivan", "Ignat", "Igor", "Ilarion", "Ilia", "Immanuil", "Iosif", "Kirill", "Konstantin", "Lev", "Leonid", "Makar", "Maxim", "Marat", "Matvei", "Mikhail", "Nikita", "Nikolay", "Oleg", "Pavel", "Pyotr", "Rodion", "Ruslan", "Semyon", "Sergei", "Spartak", "Stanislav", "Stepan", "Taras", "Timofei", "Timur", "Trofim", "Eduard", "Erik", "Yulian", "Yury", "Yakov", "Yaroslav","Jumper", "Lucky", "Loser", "Poopy", "Rubber", "Dweeb", "Sasquatch", "Stumpy", "Lumpy", "Zeppy", "Zippy", "Maverick", "Suppy", "Sappy", "Freckles", "Glasses", "Squint", "Squirt", "Lips", "The Nose", "Speedy", "Sissy", "Fugly", "Pepper", "Shorty", "Philly", "Lightning", "Gumpy", "Happy", "Sleepy", "Jupiter", "Mars", "Alpha", "Omega", "Epsilon", "Tau", "Ceti", "Eridani", "Lalande", "Frog", "Toad", "Tiger", "Turtle", "Slug", "Fish", "Hawk", "Hippo"

    }
    nomeAleatorio = Pawn_Male_Names[math.random(1, #Pawn_Male_Names)]
    
    
    Pawn_Female_Names =
    {
    
      "Anna", "Ash", "Ashe", "Mary", "Onesan", "Engie", "Alana", "Raissa", "Suzana", "Elizabeth", "Fernanda", "Larissa", "Clarisse", "Gabriela", "Joana", "Thalia", "Luana", "Laura", "Paula", "Beatriz", "Silmara", "Dora", "Caitlin", "Ollie", "Tamara", "Rissa", "Saga", "Layla", "Fauna", "Akemi", "Samantha", "Jixiang", "Jennie", "Azura", "Purate", "Macy", "Lancelia", "Serache", "Suova", "Cuvuvina", "Reratu", "Somiiche", "Fuchurache", "Jiiche", "Ashley", "Kira", "Klara", "Karen", "Fonove", "Solara", "Mathilde", "Lachlan", "Prissy", "Burke", "Tatu", "Anish", "Buffy", "Petra", "Andrea", "Erin", "Gabby", "Ingrid", "Melissa", "Olga", "Rebecca", "Tanya", "Wendy", "Bertha", "Dolly", "Fay", "Hanna", "Josephine", "Nana", "Paulette", "Sally", "Vicky", "Ana", "Erika", "Grace", "Ida", "Kate", "Mindy", "Odette", "Rose", "Teresa", "Wanda", "Bonnie", "Danielle", "Fiona", "Hermine", "Julia", "Lisa", "Nicole", "Shary", "Arlene", "Cindy", "Emily", "Gert", "Irma", "Katia", "Maria", "Ophelia", "Rina", "Tammy", "Whitney", "Beryl", "Debby", "Helene", "Joyce", "Leslie", "Nadine", "Patty", "Sara", "Valerie", "Genevieve", "Barbara", "Cosme", "Dalila", "Flossie", "Henriette", "Juliette", "Lorena", "Narda", "Priscilla", "Sonia", "Velma", "Xina", "Cristina", "Elida", "Iselle", "Karina", "Amanda", "Rachel", "Trudy", "Winnie", "Yolanda", "Blanca", "Dolores", "Felicia", "Hilda", "Linda", "Nora", "Patricia", "Vivian", "Sandra", "Agatha", "Celia", "Estelle", "Georgette", "Isis", "Madeline", "Orlene", "Roslyn", "Tina", "Hilary", "Jova", "Lidia", "Norma", "Pilar", "Selma", "Aletta", "Carlotta", "Gilma", "Ileana", "Kristy", "Miriam", "Olivia", "Rosa", "Tara", "Willa", "Veronica", "Flo", "Lucie", "Lacey", "Esme", "Lucia", "Beatrice", "Violet", "India", "Frankie", "Edie", "Laila", "Penelope", "Elsie", "Maisie", "Lottie", "Darcie", "Penny", "Poppy", "Sadie", "Ivy", "Carys", "Lexi", "Anya", "Sienna", "Savanna", "Annabel", "Willow", "Betty", "Macey", "Emilia", "Isla", "Darcey", "Gracie", "Olive", "Callie", "Lyra", "Isabel", "Jessie", "Rae", "Talia", "Harriet", "Scarlet", "Coriveau", "Ripley", "Paola", "Gitta", "Alisa", "Kim", "Kelly", "MJ", "Katten", "Jennifer", "Chantal", "Marie", "Jane", "Cass", "Anita", "Minla", "Aiko", "Aimi", "Amaya", "Aoi", "Ayaka", "Ayano", "Beniko", "Chiyo", "Chiyoko", "Emi", "Fumiko", "Haruka", "Hiroko", "Hitomi", "Hotaru", "Kaori", "Kasumi", "Kazuko", "Kazumi", "Keiko", "Kiriko", "Kumiko", "Mai", "Mami", "Mayumi", "Megumi", "Midori", "Misaki", "Miu", "Nanami", "Naoko", "Naomi", "Natsuki", "Noriko", "Reika", "Rin", "Sachiko", "Sadako", "Sakura", "Satsuki", "Sayuri", "Setsuko", "Shigeko", "Shizuka", "Teiko", "Tomoko", "Tomomi", "Umeko", "Yoko", "Yoshiko", "Youko", "Yukiko", "Yumi", "Yumiko", "Yuna", "Yuuka", "Yuzuki", "Galina", "Darya", "Dina", "Diana", "Dominika", "Vera", "Varvara", "Vasilisa", "Vladlena", "Veronika", "Valentina", "Alina", "Alla", "Alyona", "Albina", "Antonina", "Anfisa", "Elena", "Eva", "Zinaida", "Zoya", "Zlata", "Inga", "Inna", "Irina", "Inessa", "Izolda", "Iskra", "Klavdiya", "Kristina", "Lada", "Larisa", "Lubov", "Liliya", "Ludmila", "Lucya", "Margarita", "Maya", "Malvina", "Marta", "Marina", "Mariya", "Nadezhda", "Natalya", "Nelly", "Nina", "Nika", "Nonna", "Oxana", "Olesya", "Raisa", "Rada", "Rozalina", "Regina", "Renata", "Svetlana", "Sofia", "Taisia", "Tatyana", "Ulyana", "Faina", "Fedosia", "Elvira", "Emma", "Yuliya", "Yana","Jumper", "Lucky", "Loser", "Poopy", "Rubber", "Dweeb", "Sasquatch", "Stumpy", "Lumpy", "Zeppy", "Zippy", "Maverick", "Suppy", "Sappy", "Freckles", "Glasses", "Squint", "Squirt", "Lips", "The Nose", "Speedy", "Sissy", "Fugly", "Pepper", "Shorty", "Philly", "Lightning", "Gumpy", "Happy", "Sleepy", "Jupiter", "Mars", "Alpha", "Omega", "Epsilon", "Tau", "Ceti", "Eridani", "Lalande", "Frog", "Toad", "Tiger", "Turtle", "Slug", "Fish", "Hawk", "Hippo"

		
		
    
    
    
    }
    nomeAleatorio = Pawn_Female_Names[math.random(1, #Pawn_Female_Names)]
    
    
    Pawn_Male_LastNames = {
    
    "Hansen", "Hart", "Hudson", "Indigo", "Wu", "Lenster", "Shen", "Fulton", "McTodd", "Love", "Hatten",
    "Sheckley", "Mahasen", "Huygens", "Hailsham", "Sajaki", "Pieixoto", "Vicente",
    "Brown", "Jones", "Miller", "Abbott", "Acevedo", "Acosta", "Adams", "Adkins", "Aguilar", "Aguirre",
    "Alex", "Ali", "Allen", "Allison", "Alvarado", "Alvarez", "Andersen", "Anderson", "Andrade", "Andrews",
    "Anthony", "Archer", "Arellano", "Arias", "Armstrong", "Arnold", "Arroyo", "Ashley", "Atkins", "Atkinson",
    "Austin", "Avery", "Avila", "Ayala", "Ayers", "Bailey", "Baird", "Baker", "Baldwin", "Ball", "Ballard",
    "Banks", "Barajas", "Barber", "Barker", "Barnes", "Barnett", "Barr", "Barrera", "Barrett", "Barron",
    "Barry", "Bartlett", "Barton", "Bass", "Bates", "Bauer", "Bautista", "Baxter", "Bean", "Beard", "Beasley",
    "Beck", "Becker", "Bell", "Beltran", "Bender", "Benitez", "Benjamin", "Bennett", "Benson", "Bentley",
    "Benton", "Berg", "Berger", "Bernard", "Berry", "Best", "Bird", "Bishop", "Black", "Blackburn", "Blackwell",
    "Blair", "Blake", "Blanchard", "Blevins", "Bolton", "Bond", "Bonilla", "Booker", "Boone", "Booth", "Bowen",
    "Bowers", "Bowman", "Boyd", "Boyer", "Boyle", "Bradford", "Bradley", "Bradshaw", "Brady", "Branch", "Brandt",
    "Braun", "Bray", "Brennan", "Brewer", "Bridges", "Briggs", "Bright", "Brock", "Brooks", "Browning", "Bruce",
    "Bryan", "Bryant", "Buchanan", "Buck", "Buckley", "Bullock", "Burch", "Burgess", "Burke", "Burnett", "Burns",
    "Burton", "Bush", "Butler", "Byrd", "Cabrera", "Cain", "Calderon", "Caldwell", "Calhoun", "Callahan",
    "Camacho", "Cameron", "Campbell", "Campos", "Cannon", "Cantrell", "Cantu", "Cardenas", "Carey", "Carlson",
    "Carney", "Carpenter", "Carr", "Carrillo", "Carroll", "Carson", "Carter", "Case", "Casey", "Castaneda",
    "Castillo", "Castro", "Cervantes", "Chambers", "Chan", "Chandler", "Chaney", "Chang", "Chapman", "Charles",
    "Chase", "Chavez", "Chen", "Cherry", "Choi", "Christian", "Chung", "Church", "Cisneros", "Clark", "Clarke",
    "Clay", "Clayton", "Clements", "Cline", "Cobb", "Cochran", "Coffey", "Cohen", "Cole", "Coleman", "Collier",
    "Collins", "Colon", "Combs", "Compton", "Conley", "Conner", "Conrad", "Contreras", "Conway", "Cook",
    "Cooke", "Cooley", "Cooper", "Copeland", "Cordova", "Cortez", "Costa", "Cowan", "Cox", "Craig", "Crane",
    "Crawford", "Crosby", "Cross", "Cruz", "Cuevas", "Cummings", "Curry", "Curtis", "Dalton", "Daniel", "Daniels",
    "Daugherty", "Davenport", "David", "Davidson", "Davies", "Davila", "Davis", "Dawson", "Day", "Dean",
    "Decker", "Delacruz", "Deleon", "Delgado", "Dennis", "Diaz", "Dickerson", "Dickson", "Dillon", "Dixon",
    "Dodson", "Dominguez", "Donaldson", "Donovan", "Dorsey", "Dougherty", "Douglas", "Downs", "Doyle", "Drake",
    "Duarte", "Dudley", "Duffy", "Duke", "Duncan", "Dunlap", "Dunn", "Duran", "Durham", "Dyer", "Eaton", "Edwards",
    "Elliott", "Ellis", "Ellison", "English", "Erickson", "Escobar", "Esparza", "Espinoza", "Estes", "Estrada",
    "Evans", "Everett", "Ewing", "Farley", "Farmer", "Farrell", "Faulkner", "Ferguson", "Fernandez", "Ferrell",
    "Fields", "Figueroa", "Finley", "Fischer", "Fisher", "Fleming", "Fletcher", "Flores", "Flowers", "Floyd",
    "Flynn", "Foley", "Forbes", "Ford", "Foster", "Fowler", "Fox", "Francis", "Franco", "Frank", "Franklin",
    "Frazier", "Frederick", "Freeman", "French", "Frey", "Friedman", "Fritz", "Frost", "Fry", "Frye", "Fuentes",
    "Fuller", "Gaines", "Gallagher", "Gallegos", "Galloway", "Galvan", "Gamble", "Garcia", "Gardner", "Garner",
    "Garrett", "Garrison", "Garza", "Gates", "Gay", "Gentry", "George", "Gibbs", "Gibson", "Gilbert", "Giles",
    "Gill", "Gillespie", "Gilmore", "Glass", "Glenn", "Glover", "Golden", "Gomez", "Gonzales", "Gonzalez", "Good",
    "Goodman", "Goodwin", "Gordon", "Gould", "Graham", "Grant", "Graves", "Gray", "Green", "Greene", "Greer",
    "Gregory", "Griffin", "Griffith", "Grimes", "Gross", "Guerra", "Guerrero", "Gutierrez", "Guzman", "Haas",
    "Hahn", "Hale", "Haley", "Hall", "Hamilton", "Hammond", "Hampton", "Hancock", "Haney", "Hanna", "Hanson",
    "Hardin", "Harding", "Hardy", "Harmon", "Harper", "Harrell", "Harris", "Harrison", "Hartman", "Harvey",
    "Hatfield", "Hawkins", "Hayden", "Hayes", "Haynes", "Hays", "Heath", "Hebert", "Henderson", "Hendricks",
    "Hendrix", "Henry", "Hensley", "Henson", "Herman", "Hernandez", "Herrera", "Herring", "Hess", "Hester",
    "Hickman", "Hicks", "Higgins", "Hill", "Hines", "Hinton", "Ho", "Hobbs", "Hodge", "Hodges", "Hoffman", "Hogan",
    "Holden", "Holder", "Holland", "Holloway", "Holmes", "Holt", "Hood", "Hooper", "Hoover", "Hopkins", "Horn",
    "Horne", "Horton", "House", "Houston", "Howard", "Howe", "Howell", "Huang", "Hubbard", "Huber", "Huerta",
    "Huff", "Huffman", "Hughes", "Hull", "Humphrey", "Hunt", "Hunter", "Hurley", "Hurst", "Huynh", "Ibarra",
    "Ingram", "Irwin", "Jackson", "Jacobs", "Jacobson", "James", "Jarvis", "Jefferson", "Jenkins", "Jennings",
    "Jensen", "Jimenez", "Johns", "Johnson", "Johnston", "Jordan", "Joseph", "Joyce", "Juarez", "Kaiser", "Kane",
    "Kaufman", "Keith", "Keller", "Kelley", "Kelly", "Kemp", "Kennedy", "Kent", "Kerr", "Key", "Khan", "Kidd",
    "Kim", "King", "Kirby", "Kirk", "Klein", "Kline", "Knapp", "Knight", "Knox", "Koch", "Kramer", "Krause",
    "Krueger", "Lam", "Lamb", "Lambert", "Landry", "Lane", "Lang", "Lara", "Larsen", "Larson", "Lawrence", "Lawson",
    "Le", "Leach", "Leblanc", "Lee", "Leon", "Leonard", "Lester", "Levine", "Levy", "Lewis", "Li", "Lin",
    "Lindsey", "Little", "Liu", "Lloyd", "Logan", "Long", "Lopez", "Lowe", "Lowery", "Lozano", "Lucas", "Lucero",
    "Luna", "Lutz", "Lynch", "Lynn", "Lyons", "Macias", "Mack", "Madden", "Maddox", "Mahoney", "Maldonado",
    "Malone", "Mann", "Manning", "Marks", "Marquez", "Marsh", "Marshall", "Martin", "Martinez", "Mason", "Massey",
    "Mata", "Mathews", "Mathis", "Matthews", "Maxwell", "May", "Mayer", "Maynard", "Mayo", "Mays", "McBride",
    "McCall", "McCann", "McCarthy", "McCarty", "McClain", "McClure", "McConnell", "McCormick", "McCoy", "McDaniel",
    "McDonald", "McDowell", "McFarland", "McGee", "McGrath", "McGuire", "Macintosh", "Macintyre", "McKay",
    "McKee", "McKenzie", "McKinney", "McKnight", "McLaughlin", "McLean", "McMahon", "McMillan", "McNeil",
    "McPherson", "Meadows", "Medina", "Mejia", "Melendez", "Melton", "Mendez", "Mendoza", "Mercado", "Mercer",
    "Merritt", "Meyer", "Meyers", "Meza", "Michael", "Middleton", "Miles", "Mills", "Miranda", "Mitchell", "Molina",
    "Monroe", "Montes", "Monty", "Montoya", "Moody", "Moon", "Mooney", "Moore", "Mora", "Morales", "Moran",
    "Moreno", "Morgan", "Morris", "Morrison", "Morrow", "Morse", "Morton", "Moses", "Mosley", "Moss", "Moyer",
    "Mueller", "Mullen", "Mullins", "Munoz", "Murillo", "Murphy", "Murray", "Myers", "Nash", "Navarro", "Neal",
    "Nelson", "Newman", "Newton", "Nguyen", "Nichols", "Nielsen", "Nixon", "Noble", "Nolan", "Norman", "Norris",
    "Norton", "Novak", "Nunez", "O'Brien", "Ochoa", "O'Connell", "O'Connor", "Odom", "O'Donnell", "Oliver",
    "Olsen", "Olson", "O'Neal", "O'Neill", "Orozco", "Orr", "Ortega", "Ortiz", "Osborn", "Osborne", "Owen",
    "Owens", "Pace", "Pacheco", "Padilla", "Page", "Palmer", "Park", "Parker", "Parks", "Parrish", "Parsons",
    "Patel", "Patrick", "Patton", "Paul", "Payne", "Pearson", "Peck", "Pena", "Perez", "Perkins", "Perry",
    "Peters", "Petersen", "Peterson", "Petty", "Pham", "Phelps", "Phillips", "Pierce", "Pineda", "Pittman",
    "Pitts", "Pollard", "Ponce", "Poole", "Pope", "Porter", "Potter", "Potts", "Powell", "Powers", "Pratt",
    "Preston", "Price", "Prince", "Proctor", "Pruitt", "Pugh", "Quinn", "Ramirez", "Ramos", "Ramsey", "Randall",
    "Randolph", "Rangel", "Rasmussen", "Ray", "Raymond", "Reed", "Reese", "Reeves", "Reid", "Reilly", "Reyes",
    "Reynolds", "Rhodes", "Rice", "Rich", "Richard", "Richards", "Richmond", "Riddle", "Riggs", "Riley", "Rios",
    "Ritter", "Rivas", "Rivera", "Rivers", "Roach", "Robbins", "Roberson", "Roberts", "Robinson", "Robles",
    "Rocha", "Rodgers", "Rodriguez", "Rogers", "Rojas", "Rollins", "Roman", "Romero", "Rosales", "Rosario",
    "Rose", "Ross", "Roth", "Rowe", "Rowland", "Roy", "Rubio", "Ruiz", "Rush", "Russell", "Russo", "Ryan",
    "Salas", "Salazar", "Salinas", "Sampson", "Sanchez", "Sanders", "Sandoval", "Sanford", "Santana", "Santiago",
    "Santos", "Saunders", "Savage", "Sawyer", "Schaefer", "Schmidt", "Schmitt", "Schneider", "Schroeder",
    "Schultz", "Schwartz", "Scott", "Sellers", "Serrano", "Sexton", "Shaffer", "Shah", "Shannon", "Sharp",
    "Shaw", "Shea", "Shelton", "Shepard", "Shepherd", "Sheppard", "Sherman", "Shields", "Short", "Silva",
    "Simmons", "Simon", "Simpson", "Sims", "Singh", "Singleton", "Skinner", "Sloan", "Small", "Smith", "Snow",
    "Snyder", "Solis", "Solomon", "Sosa", "Soto", "Sparks", "Spears", "Spence", "Spencer", "Stafford", "Stanley",
    "Stanton", "Stark", "Steele", "Stein", "Stephens", "Stephenson", "Stevens", "Stevenson", "Stewart", "Stokes",
    "Stone", "Stout", "Strong", "Stuart", "Suarez", "Sullivan", "Summers", "Sutton", "Swanson", "Sweeney",
    "Tanner", "Tapia", "Tate", "Taylor", "Terrell", "Terry", "Thomas", "Thompson", "Thornton", "Todd", "Torres",
    "Townsend", "Tran", "Travis", "Trevino", "Trujillo", "Tucker", "Turner", "Tyler", "Underwood", "Valdez",
    "Valencia", "Valentine", "Vance", "Vang", "Vargas", "Vasquez", "Vaughan", "Vaughn", "Vazquez", "Vega",
    "Velasquez", "Velazquez", "Velez", "Villa", "Villegas", "Vincent", "Wade", "Wagner", "Walker", "Wall",
    "Wallace", "Waller", "Walls", "Walsh", "Walter", "Walters", "Walton", "Wang", "Ward", "Ware", "Warner",
    "Warren", "Wash", "Waters", "Watkins", "Watson", "Watts", "Weaver", "Webb", "Weber", "Webster", "Weeks",
    "Weiss", "Welch", "Werner", "West", "Wheeler", "Whitaker", "White", "Whitehead", "Whitney", "Wiggins",
    "Wilcox", "Wiley", "Wilkerson", "Wilkins", "Wilkinson", "Williams", "Willis", "Wilson", "Winters", "Wise",
    "Wolf", "Wolfe", "Wong", "Wood", "Woodard", "Woods", "Woodward", "Wright", "Wyatt", "Yang", "Yates", "Yoder",
    "York", "Young", "Yu", "Zamora", "Zavala", "Zhang", "Zimmerman", "Zuniga"
    
    }
    
    
    Pawn_Female_LastNames =
    {
        "Cait", "Bucky", "Pepper", "Vicente", "Gransier", "Saga", "Layla", "Furr", "Starry", "Samantha", "Jixiang", "Voiz", "Lockwood", "Storm", "Knapp", "La Veries", "Macy", "Palmer", "Lancy", "Arnold", "Surache", "Chuvoneme", "Dojuroze", "Foronia", "Zorate", "Somiiche", "Neratu", "Fuchurache", "Sifooxe", "Whitney", "Zamora", "Yu", "Zavala", "White", "Warner", "Villa", "Velazquez", "Valencia", "Taylor", 
    }
    
    ultimo_nomeAleatorio = Pawn_Female_LastNames[math.random(1, #Pawn_Female_LastNames)]
end


function Aleatorize_Corpo()


end

--[[

Desnecessário


function Aleatorize_Cabelos_Roupas()

    


end
]]


function Aleatorize_BackStories()


--Adulto



--Infância

end