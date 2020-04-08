// Call this file as node nat_dates.js <input a date> <If you want regular output, then put nothing else, or if you want Roam output, put "roam">
// Ex. node nat_dates.js "three days ago" => April 3rd, 2020
// Ex. node nat_dates.js "three days ago" roam => [[April 3rd, 2020]]

var chrono = require('chrono-node'); // For natural language date parsing

// Returns a given date number as an ordinaal date e.g. 1st, 2nd, 3rd...
function ordinalDay(d) {
  var ext = "";
  if (d > 3 && d < 21) ext='th';
  else if (d % 10 == 1) ext="st";
  else if (d % 10 == 2) ext="nd";
  else if (d % 10 == 3) ext="rd";
  else ext="th";

  return `${d}${ext}`;
}

function longFormat(date) {
  const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"][date.getMonth()];
  const day = ordinalDay(date.getDate());
  const year = date.getFullYear();

  var finalDate = `${month} ${day}, ${year}`;

  return finalDate;
}

function main() {

  var args = process.argv.slice(2); // First 2 args are just [node, <program name>]

  // Not doing error checking and extra package imports 
  // Because I want to remove any speed slowdowns in this script
  // I want this to be as fast as possible, so I'm willing to make micro optimizations

  const inputDate = args[0];
  const outputType = args[1];
  // Only parse dates going forward instead of using the nearest date
  var parsedDate = chrono.parseDate(inputDate, new Date(), { forwardDate: true });

  if (parsedDate == null) {
    console.log("date_parse_failed");
    process.exit(1);
  }

  var finalDate = null;
  if (outputType == "long") {
    finalDate = longFormat(parsedDate);
  }
  else if (outputType == "roam") {
    finalDate = longFormat(parsedDate);
    finalDate = `[[${finalDate}]]`;
  } 
  else if (outputType == "short") {
    finalDate = parsedDate.toLocaleString([], {year: "2-digit", month: "numeric", day: "numeric"});
  }

  process.stdout.write(finalDate); // Don't want to output a newline so using this

}

main();
