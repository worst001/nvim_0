var fs = require('fs')
var xml2js = require('xml2js')

var parser = new xml2js.Parser()
var arguments = process.argv.splice(2)
var filename = arguments[0]
var name = filename.split(".")[0]
var exportname = name + '.json'
fs.readFile('./' + filename, function(err, data) {
    parser.parseString(data, function (err, result) {
        console.dir(JSON.stringify(result))
        var jsonResult = JSON.stringify(result)
        fs.writeFile('./' + exportname, jsonResult, (err) => {
            if (err) throw err
            console.log('The file has been saved')
        })
    })
})
