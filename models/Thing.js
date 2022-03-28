/*
const mongoose = require('mongoose');

const thingSchema = mongoose.Schema({
  title: { type: String, required: true },
  description: { type: String, required: true },
  imageUrl: { type: String, required: true },
  userId: { type: String, required: true },
  price: { type: Number, required: true },
});

module.exports = mongoose.model('Thing', thingSchema);

*/
const Pool = require('pg').Pool;

const pool = new Pool({
    user: "npqvthisxioakn",
    host:"ec2-18-215-96-22.compute-1.amazonaws.com",
    database:"dda825ab0jjrog",
    password:"de35b8f8463439c71326de2a7cc1dc16691ecbcaf3e4d13d0e3244f2e5ccbb5f",
    port:5432,
});

module.exports = pool;