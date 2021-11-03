var fs = require('fs');
var output;
var lineReader = require('readline').createInterface({
    input: fs.createReadStream(__dirname + '/file')
});

var output = fs.createWriteStream(__dirname + '/output.txt');


lineReader.on('line', function (line) {
    var array = line.split(',');
    var toWrite = "";

    if (array.length <= 4) {
        for (var i = 0 ; i < array.length ; i++) {
            toWrite += array[i] + ",";
        }
    } else {
        for (var i = 0 ; i < 4 ; i++) {
            toWrite += array[i] + ",";
        }
    }

    toWrite = toWrite.slice(0,-1);
    toWrite += "\r\n";

    output.write(toWrite)

});
