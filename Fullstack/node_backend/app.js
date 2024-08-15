const express = require('express');
const app = express();
const cors = require('cors');
const router = express.Router();

const port = 80;

router.get('/', function(_req,res){
  console.log('a get call was requested')
    res.send({message: "Hello from Node in Docker!"});
  });

app.use(cors());
app.use('/', router);

app.listen(port, function () {
  console.log('Example app listening on port 8081')
})