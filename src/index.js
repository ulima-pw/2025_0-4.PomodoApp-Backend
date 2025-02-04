"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var dotenv_1 = require("dotenv");
dotenv_1.default.config();
var app = (0, express_1.default)();
var port = process.env.PORT || 3000;
app.listen(port, function () {
    console.log("[Server]: Servidor ejecutandose en puerto ".concat(port));
});
