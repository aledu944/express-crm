import express from "express";
import controller from '../controllers/client.controller'

const router = express.Router();

router.get('/', controller.getClients );
router.get('/:id', controller.showClient)
router.post('/', controller.createNewClient)
router.put('/:id', controller.updateClient)
router.delete('/:id', controller.deleteClient)


export default router;