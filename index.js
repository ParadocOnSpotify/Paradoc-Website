const navToggle = document.querySelector('.nav-toggle');        // which is going to look for my .nav-toggle class
const navLinks = document.querySelectorAll('.nav__link');

navToggle.addEventListener('click', () => {            // 'click', () => {} reads = when we click navToggle, do this as follows inside the brackets
    document.body.classList.toggle('nav-open');         // haven't made a nav-open up till this point so this is being added now, to test this - add .nav-open to your css and change the background to red and every time you click the button it will swap back and forth from red to white from red to white, keyword toggling
})

navLinks.forEach(link => {
    link.addEventListener('click', () => {
        document.body.classList.remove('nav-open');
    })
})

// document.getElementById('home').innerHTML = "House"; example of using javascript to change the id's content to whatever is after the assignment operator in this function

const laneBurcham = {           /* this is the act of declaring an object and its key:value pairs */

    myFirstName: "Lane",
    myMiddleName: "Arnold",
    myLastName: "Burcham",
    fullName : function() {
        return this.myFirstName + " " + this.myMiddleName + " " + this.myLastName;
      },
    myGender: "Male",
    myBirthday: [["September 12, 1995"], [["09-12-95"], ["09/12/1995"]]],
    myBirthplace: "Tupelo, MS",
    myHometown: "Pickwick, TN",
    myParents: ["Arnold Wayne Burcham", "Cynthia Weiler Burcham"],
    myGrandParents: ["Ron Weiler", "Ann Weiler", "Bernice Woodruff"],
    mySiblings: ["Ross Wiiliam Burcham", "Blythe Ann Burcham"],
    myNativeLanguage: "English",
    myNativeCountry: ["USA", "United States of America", "North America"],
    myEyeColor: "Blue",
    myHairColor: "Blonde",
    mySexualPreference: "Heterosexual",
    myFavoriteFoods: ["Chicken", "Fish", [["Burritos", "Tacos"]], "Pizza", "Sushi", "Hibachi", "Burgers", "Shrimp", "Oysters"],
    myFavoriteDrinks: ["Dr. Pepper", "Sweet Tea", "Body Armor", "Starbucks Vanilla Mocha Coffee", "Gatorade", "Water"],
    myFavoriteAlcoholTypes:  ["Light-Beer", "Vodka", "Whiskey", "Sweet Wine"],
    myFavoriteCocktails: ["Vodka Red Bull", "Vegas Bombs", "Liquid Marijuana", "Green Tea Shots"],
    myFavoriteBeers: ["Michelob-ultra", "Bud-light", "Busch-light", "Corona", "Takate", "Pineapple Ale"],
    myFavoriteHobbies: ["Gaming", "Coding", "Golf", "Weed", "Alcohol", "Basketball", "Rapping", "Boating"],
    myFavoriteNumber: 0,
    myFavoriteColors: ["Black", "White", "Red", "Blue", "Purple", "Gold"],
    myFavoriteSports: ["Basketball", "Football", "Golf"],
    myFavoriteSongs: [],
    myFavoriteArtists: ["Post Malone", "Lil Baby", "Eminem", "Lil Wayne", "Far Out"],
    myFavoriteGenres: ["Hip-Hop", "EDM", "Dubstep", "Country"],
    myFavoriteVideoGames: ["Rocket League", "Black Ops 3", "Fortnite", "PGA2k21"],
    myFavoriteRocketLeagueCars: ["Dominus", "Skyline", "R3MIX", "Octane", "Fennec"],
    myFavoriteRocketLeagueMaps: ["Coliseum Dusk", "Champions Field Day", "Manning Field Dusk"],
    myFavoriteRamCharacters: ["Rick", "Morty", "Mr. PBH", "Birdperson", "Mr. Meseeks", "Evil Morty", "Jerry"],
    myFavoriteRamQuotes: ["Op, flat tire. In space?", "So what are you the devil?", "Sum-sum", "Is he bending his knees and squaring his shoulders straight? Oooo he's trying!"],
    myFavoriteMovies:  ["Remember the Titans", "Spongebob Squarepants The Movie", "Spiderman: No Way Home", "Man of Steel", [["Avengers Endgame", "Avengers Series"]], "Zack Snyder's Justice League", "Transformers Series", "Catch me if you can 1 & 2", "Inception"]
}

var currentVariables = {
    myCurrentAge: 26,
    myCurrentRelationshipStatus: "Single",
    myCurrentCity: "Cordova, TN",
    myCurrentEmployer: "Southern Valet",
    myCurrentOccupation: "Valet Driver", 
    myCurrentWage: "$600/week", 
    myEthnicity: ["Caucasion", "White"],
    myCurrentHeight: ["6'6", "78 inches", "1.9 meters"], 
    myCurrentWeight: "250lbs", 
}

// alert(laneBurcham.myFirstName + " " + laneBurcham.myLastName + " is " + currentVariables.myCurrentHeight[0] + " and " + currentVariables.myCurrentWeight + ".");    // reads/alerts to the screen "Lane Burcham is 6'6 and 250lbs."

const salaries = new Map([
    ["Lane", 1000000],
    ["Ross", 500000],
    ["Blythe", 250000]
])

// let text = "";
// salaries.forEach (function(value, key) {
//     text += key + " = " + value + "<br>";
// });
// document.querySelector("#dndtext").innerHTML = text;    // all of this code should change design and development text to the salaries variable values
// document.getElementById("dndtext").innerHtml = text; will suffice as well as the above function/code

// function myFunction()   {
//     let text = "Welcome to Paradoc's Website";
//     document.getElementById("ecommercetext").innerHTML = text;
// }

//                      footer

function print_current_page()    {
    window.print();
}
/*

<p id="demo"></p>

<script>
// Create a Set
const letters = new Set(["a","b","c"]);

// List all Elements
let text = "";                          FIRST YOUR CREATING THE VARIABLE TEXT TO EQUAL EMPTY STRING TO BE FILLED BY THE FUNCTION BELOW
letters.forEach (function(value, key) {      READS "FOR EACH LETTER IN THE LETTERS object/array SET LOOK FOR THE VALUE AND ONCE FOUND, "" = "" + THE VALUE OF EACH ITEM ITERATED + LINE BREAK" AND THIS WILL GIVE YOU YOUR VARIABLE TEXT TO EQUAL A VALUE FOR EACH ITERATION
  text += value + "<br>";
})

document.getElementById("demo").innerHTML = text;
</script> }

*/

/* Common HTML Events
Here is a list of some common HTML events:

Event	            Description

onchange	        An HTML element has been changed
onclick	            The user clicks an HTML element
onmouseover	        The user moves the mouse over an HTML element
onmouseout	        The user moves the mouse away from an HTML element
onkeydown	        The user pushes a keyboard key
onload	            The browser has finished loading the page */ 

// var table = new Tabulator("#example-table", {
//     height:"311px",
//     columns:[
//     {title:"Name", field:"name"},
//     {title:"Progress", field:"progress", sorter:"number"},
//     {title:"Gender", field:"gender"},
//     {title:"Rating", field:"rating"},
//     {title:"Favorite Color", field:"col"},
//     {title:"Date Of Birth", field:"dob", hozAlign:"center"},
//     ],
// });





















//                                   Math

// This JavaScript function always returns a random number between min (included) and max (excluded):

// Example
// function getRndInteger(min, max) {
//   return Math.floor(Math.random() * (max - min) ) + min;         function created to provide random number between the min and max numbers and round it down to the closest integer
// }

// This JavaScript function always returns a random number between min and max (both included):

// Example
// function getRndInteger(min, max) {
//   return Math.floor(Math.random() * (max - min + 1) ) + min;
// }

// Logical Operators
// Logical operators are used to determine the logic between variables or values.

// Given that x = 6 and y = 3, the table below explains the logical operators:

// Operator	Description	Example
// &&	    and	        (x < 10 && y > 1) is true	
// ||	    or	        (x == 5 || y == 5) is false	
// !	    not	        !(x == y) is true


// Conditional (Ternary) Operator //  In computer science, a ternary operator is an operator that takes three arguments. 
// JavaScript also contains a conditional operator that assigns a value to a variable based on some condition.

// Syntax
// variablename = (condition) ? value1:value2 
// Example
// let voteable = (age < 18) ? "Too young":"Old enough";

//  Case            Value
// "2" < "12"	    false	
// "2" > "12"	    true
// When comparing two strings, "2" will be greater than "12", because (alphabetically) 1 is less than 2.

// To secure a proper result, variables should be converted to the proper type before comparison:

// age = Number(age);
// if (isNaN(age)) {
//  voteable = "Input is not a number";
// } else {
//   voteable = (age < 18) ? "Too young" : "Old enough";
// }

// example of the "new" keyword, creating a blank object with this function

// function User(name, department) {
//     this.name = name;
//     this.department;
//     this.isAdmin = true;
// }

// const user1 = new User('Lane', 'Web Development');
// console.log(user1);

// Use switches for example like weekdays, months, years, greetings for time of day


// Sets

/*

<p id="demo"></p>

<script>
// Create a Set
const letters = new Set(["a","b","c"]);

// List all Elements
let text = "";                          FIRST YOUR CREATING THE VARIABLE TEXT TO EQUAL EMPTY STRING TO BE FILLED BY THE FUNCTION BELOW
letters.forEach (function(value) {      READS "FOR EACH LETTER IN THE LETTERS SET LOOK FOR THE VALUE AND ONCE FOUND, "" = "" + THE VALUE OF EACH ITEM ITERATED + LINE BREAK" AND THIS WILL GIVE YOU YOUR VARIABLE TEXT TO EQUAL A VALUE FOR EACH ITERATION
  text += value + "<br>";
})

document.getElementById("demo").innerHTML = text;
</script> }

*/



















//                                      Stopwatch code


window.onload = function () {
    var seconds = 00;
    var tens = 00;
    var appendTens = document.getElementById('tens');
    var appendSeconds = document.getElementById('seconds');

    var buttonStart = document.getElementById('button-start');
    var buttonStop = document.getElementById('button-stop');
    var buttonReset = document.getElementById('button-reset');
    var Interval ;

    buttonStart.onclick = function() {
        clearInterval(Interval);
            Interval = setInterval(startTimer, 10);
    }
        buttonStop.onclick = function() {
            clearInterval(Interval);
    }

    buttonReset.onclick = function() {
        clearInterval(Interval);
        tens = "00";
        seconds = "00";
        appendTens.innerHTML = tens;
        appendSeconds.innerHTML = seconds;
    }

    function startTimer ()  {
        tens++;

        if (tens <= 9){
            appendTens.innerHTML = "0" + tens;
        }

        if (tens > 9){
            appendTens.innerHTML = tens;
        }

        if(tens > 99)   {
            console.log("seconds");
            seconds++;
            appendSeconds.innerHTML = "0" + seconds;
            tens = 0;
            appendTens.innerHTML = "0" + 0;
        }

        if (seconds > 9){
            appendSeconds.innerHTML = seconds;
        }

    }


}



















//                              Calculator Javascript                   "use strict" might be hoisting globally here

"use strict";
var input = document.getElementById('input'), // input/ouput button
    number = document.querySelectorAll('.numbers div'), // number buttons
    operator = document.querySelectorAll('.operators div'), // operator buttons
    result = document.getElementById('result'), // equal button
    resultDisplayed = false; // flag to keep an eye on what output is displayed

// adding click handlers to number buttons      // displaying the numbers in the input box
for (var i = 0; i < number.length; i++) {
    number[i].addEventListener('click', function(e) {

        // storing current input string and its last character in variables - used later
        var currentString = input.innerHTML;
        var lastChar = currentString[currentString.length - 1];

        // if result is not displayed, just keep adding
        if (resultDisplayed === false)  {
            input.innerHTML += e.target.innerHTML;
        }   else if (resultDisplayed === true && lastChar === "+" || lastChar === "-" || lastChar === "x" || lastChar === "/")  {
            // if result is currently displayed and user pressed an operator
            // we need to keep on adding to the string for next operation
            resultDisplayed = false;
            input.innerHTML += e.target.innerHTML;
        }   else {
            // if result is currently displayed and user pressed a number
            // we need to clear the input string and add the new input to start the new operation
            resultDsiplayed = false;
            input.innerHTML = "";
            input.innerHTML += e.target.innerHTML;
        }
    });
}

// adding click handlers to number buttons
for (var i = 0; i < operator.length; i++)   {
    operator[i].addEventListener("click", function(e) {

        // storing current input string and its last character in variables - used later
        var currentString = input.innerHTML;
        var lastChar = currentString[currentString.length - 1];

        // if last character entered is an operator, replace it with the currently pressed one
        if (lastChar === "+" || lastChar === "-" || lastChar === "x" || lastChar === "/")   {
            var newString = currentString.substring(0, currentString.length - 1) + e.target.innerHTML;
            input.innerHTML = newString;
        }   else if (currentString.length == 0) {
            // if first key pressed is an operator, don't do anything
            console.log("Enter a number first");
        }   else {
            // else just add the operator pressed to the input
            input.innerHTML += e.target.innerHTML;
        }
    });
}

// on click of 'equal' button
result.addEventListener("click", function() {

    // this is the string that we will be processing eg. -10+26+33-56*34/23
    var inputString = input.innerHTML;

    // forming an array of numbers. eg for above string it will be: numbers = ["10", "26", "33", "56", "34", "23"]
    var numbers = inputString.split(/\+|\-|\x|\//g);        // may have to possibly add &multiply and &divide instead of x and /

    // forming an array of operators. for above string it will be operators = ["+", "+", "-", "*", "/"]
    // first we replace all the numbers and dot with empty string and then split
    var operators = inputString.replace(/[0-9]|\./g, "").split("");

    console.log(inputString);
    console.log(operators);
    console.log(numbers);
    console.log("------------------------------");

    // now we are looping through the array and doing one operation at a time.
    // first divide, then multiply, then subtraction and then addition
    // as we move we are altering the original numbers and operators array

    var divide = operators.indexOf("/");
    while (divide != -1)    {
        numbers.splice(divide, 2, numbers[divide] / numbers[divide + 1]);
        operators.splice(divide, 1);
        divide = operators.indexOf("/");
    }

    var multiply = operators.indexOf("x");
    while (multiply != -1)  {
        numbers.splice(multiply, 2, numbers[multiply] * numbers[multiply + 1]);
        operators.splice(multiply, 1);
        multiply = operators.indexOf("x");
    }

    var subtract = operators.indexOf("-");
    while (subtract != -1)  {
        numbers.splice(subtract, 2, numbers[subtract] - numbers[subtract + 1]);
        operators.splice(subtract, 1);
        subtract = operators.indexOf("-");
    }

    var add = operators.indexOf("+");
    while (add != -1)   {
        numbers.splice(add, 2, parseFloat(number[add]) + parseFloat(numbers[add + 1]));
        operators.splice(add, 1);
        add = operators.indexOf("+");
    }

    input.innerHTML = numbers[0];   // displaying the output

    resultDisplayed = true; // turning flag if result is displayed
});

// clearing the input on press of clear
clear.addEventListener("click", function() {
    input.innerHTML = "";
})
































