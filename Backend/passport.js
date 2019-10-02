const Jwtstrategy = require('passport-jwt').Strategy,
    ExtractJwt = require('passport-jwt').ExtractJwt;
const connection = require('./connection');
const User = require('./models/user');

const secret = process.env.SECRET
const mongoose = require('mongoose');

const opts = {};
opts.jwtFromRequest = ExtractJwt.fromAuthHeaderAsBearerToken();
opts.secretOrKey = 'your_jwt_secret';

module.exports = function (passport){

    passport.use(new Jwtstrategy(opts, function(jwt_payload, done){
        User.findUserbyId({_id: jwt_payload._doc._id}, function(err,user){
            if(err){
                return done(err, false);
            }
            if(user){
            return done(null, user);
            }else{
            return done(null, false);
            }
        });
    }));
}