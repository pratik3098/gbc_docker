'use strict'
exports.getMongoAddress=function(obj){

    return `mongodb://${obj.username}:${obj.password}@${obj.host}:${obj.port}/${obj.name}`
}
