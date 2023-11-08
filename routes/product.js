const express = require('express');
const router = express.Router();
const {Getdata,UpdateData,GetProductName} = require('../controllers/product')

// Retrieve tasks
// router.get('/',Getdata)
router.get('/brand',GetProductName)
router.put('/update/:id',UpdateData)


module.exports = router;