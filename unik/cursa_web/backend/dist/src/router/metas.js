"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const db_1 = __importDefault(require("../db"));
const metas_1 = __importDefault(require("../queries/metas"));
const router = express_1.default.Router();
router.get('/meta-create', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const result = yield db_1.default.query(metas_1.default.createMetasTable());
        res.send({ message: 'Table successfully created' });
    }
    catch (_a) {
        res.status(400).send({ message: 'Something went wrong' });
    }
}));
router.get('/meta', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const result = yield db_1.default.query(metas_1.default.getMetas(+req.params.limit || undefined, +req.params.offset || undefined, +req.params.hero_id || undefined));
        res.status(200).send(result.rows);
    }
    catch (_b) {
        res.status(400).send({ message: 'Something went wrong' });
    }
}));
router.get('/meta/:id', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const result = yield db_1.default.query(metas_1.default.getMetaDetails(+req.params.id));
        if (!result.rows[0]) {
            res.status(404).send({ message: 'Not found' });
        }
        res.status(200).send(result.rows[0]);
    }
    catch (_c) {
        res.status(400).send({ message: 'Something went wrong' });
    }
}));
router.post('/meta', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const result = yield db_1.default.query(metas_1.default.createMeta(req.body));
        res.send({ message: `Successfully created ${result.rowCount} items` });
    }
    catch (_d) {
        res.status(400).send({ message: 'Something went wrong' });
    }
}));
router.patch('/meta/:id', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const result = yield db_1.default.query(metas_1.default.updateMeta(+req.params.id, req.body));
        res.send({ message: `Successfully updated ${result.rowCount} items` });
    }
    catch (_e) {
        res.status(400).send({ message: 'Something went wrong' });
    }
}));
router.delete('/meta/:id', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const result = yield db_1.default.query(metas_1.default.deleteMeta(+req.params.id));
        res.send({ message: `Successfully deleted ${result.rowCount} items` });
    }
    catch (_f) {
        res.status(400).send({ message: 'Something went wrong' });
    }
}));
exports.default = router;
