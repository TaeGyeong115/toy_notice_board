var express = require('express')
var router = express.Router()

router.use('/boards', require('./board'))
router.use('/comments', require('./comment'))
router.use('/health', (req, res) => {
  res.status(200).send('Ok');
});

module.exports = router
