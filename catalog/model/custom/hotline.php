<?php
class ModelCustomHotline extends Model {

    /**
     * Get last 5 orders from DB
     * @param int $limit
     * @return mixed
     */
    public function getOrders($limit = 5) {

        $ordersProducts = $this->db->query("SELECT product_id,name,model,price,quantity FROM " . DB_PREFIX . "order_product ORDER BY order_id,order_product_id DESC LIMIT ".(int)$limit);

        return $ordersProducts;
    }
}
