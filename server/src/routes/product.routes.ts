import { Router } from 'express';
import { protect, admin } from '../middleware/auth.middleware';
import { createProduct, getProductById, getProducts } from '../controllers/product.controller';

const router = Router();

router.route('/').get(getProducts).post(protect, admin, createProduct);
router.route('/:id').get(getProductById);

export default router;
