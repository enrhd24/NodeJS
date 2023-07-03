const express = require('express');
const router = express.Router();
const userController = require('../controllers');

router.get('/',userController.basicAPI);
router.get('/test',userController.testAPI);
router.get('/post_test',userController.postTestAPI);

module.exports = router;