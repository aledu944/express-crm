import express from "express";
import controller from '../controllers/company.controller'

const router = express.Router();

router.get('/', controller.getCompanies );
router.get('/:id', controller.showCompany)
router.post('/', controller.createNewCompany)
router.delete('/:id', controller.deleteCompany)


export default router;