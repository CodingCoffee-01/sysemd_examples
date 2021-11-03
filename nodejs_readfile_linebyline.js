const readline = require('readline');

const readInterface = readline.createInterface({
        input: fs.createReadStream('name.txt'),
        output: process.stdout,
        console: false
    });

 for await (const line of readInterface) {
        console.log(line);
    }
//or
readInterface.on('line', function(line) {
    console.log(line);
});
