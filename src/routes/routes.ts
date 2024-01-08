import express from 'express';
import CompanyRoutes from "./company.routes";
import ClientRoutes from "./client.routes";

const router = express.Router();

router.use('/companies', CompanyRoutes);
router.use('/clients', ClientRoutes);

export default router;