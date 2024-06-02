"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const body_parser_1 = __importDefault(require("body-parser"));
const heroes_1 = __importDefault(require("./src/router/heroes"));
const metas_1 = __importDefault(require("./src/router/metas"));
const cors_1 = __importDefault(require("cors"));
const app = (0, express_1.default)();
const PORT = 1337;
app.use(body_parser_1.default.urlencoded({ extended: false }));
app.use(body_parser_1.default.json());
app.use((0, cors_1.default)());
app.use(heroes_1.default);
app.use(metas_1.default);
app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}`);
});
