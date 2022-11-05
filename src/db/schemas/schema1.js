'use strict'
const mongoose=require('mongoose')
const {connection1}=require("../connections")
const validators=require("../validators.js")
const connection = mongoose.createConnection(connection1,{useNewUrlParser: true, useUnifiedTopology: true})


const schema = new mongoose.Schema({

    firstName: {
       type: String, 
       sparse: true, 
       trim: true, 
       required: [true, 'first name required'],
       immutable: true,
       validate: [validators.isFirstName, 'invalid  first name']
    },

    lastName: {
        type: String, 
        sparse: true, 
        trim: true, 
        required: [true, 'last name required'],
        immutable: true,
        validate: [validators.isLastName, 'invalid  last name']
     },

    timestamp: {
        type: Date, 
        default: Date.now(),
        immutable: true
    }

})
module.exports= connection.model('User' , schema)