var dir = require('node-dir')
var path = require('path')
var fs = require('fs');
var async = require('async')
var mkdirp = require('mkdirp')

var classname = "Register"
var directory = ""

// print process.argv
process.argv.forEach(function(val, index, array) {
  console.log(index + ': ' + val);
  if(array.length != 6) {
    console.log("Error/nUsage: node app.js -d Directory -c ClassName")
    process.exit(1)
  }
  if(val == '-d') {
    directory = array[index+1]
  } else if( val == '-c') {
    classname = array[index+1]
  }

});

dir.readFiles(path.join(__dirname, '/templates'),
  { match: /.tmp$/,
    exclude: /^\./
  }, function(err, content, filename,  next) {
        if (err) throw err;
        // try to create a directory
        var relativePath = path.relative(path.join(__dirname, '/templates'), filename)
        mkdirp(directory + '/' + classname, function(err) {
          if (err) throw err;
          var extName = path.extname(filename)
          var writeFileName = relativePath.replace('___FILEBASENAMEASIDENTIFIER___', classname).replace(extName,'')
          writeFileName = directory + '/' + classname + '/' + writeFileName
          var fileDirName = path.dirname(writeFileName)
          console.log("file directory " + fileDirName)
          if (!fs.existsSync(fileDirName)){
            console.log("make directory " + fileDirName)
            fs.mkdirSync(fileDirName);
          }
          content = content.replace(/___FILEBASENAMEASIDENTIFIER___/g, classname);
          writeContent(writeFileName, content)
          next();
        });
    });


function writeContent(path, content) {
    fs.writeFile(path, content, function(err) {
        if(err) {
            return console.log(err);
        }
        console.log("Saved file at " + path);
    });
}
