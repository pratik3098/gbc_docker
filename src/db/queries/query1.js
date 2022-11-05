'use strict'
const schema=require("../schemas/schema1.js")

exports.addUser=function(firstName, lastName, callback){
    schema.create({firstName, lastName}, callback)
}



exports.deleteUser=function(firstName, lastName, callback){
    schema.deleteOne({firstName, lastName}, callback)
}