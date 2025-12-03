const express = require('express'); 
const app = express();
const router = express.Router();
const path = require('path');

app.use('/', router); 


router.get('/', function(req, res) { 
     res.sendFile(path.join(__dirname + '/index.html'));    
});
app.listen(process.env.port || 4000); 
console.log('Running at Port 4000');