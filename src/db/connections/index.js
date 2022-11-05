'use strict'
const {getMongoAddress}=require("../utils.js")
const connection1=require("./connection1.json")
module.exports.connection1=getMongoAddress(connection1)

