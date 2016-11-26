<?php
class Source_Product_ProductFlat extends \Eloquent
{
    protected $primaryKey = 'id';
    protected $guarded = ['id'];
    protected $table='product_flat';
    public  $timestamps = false;

    /**
     * ----------------------------------
     *  一对一关联产品flat表关联flatdetail表
     * ----------------------------------
     */
    public function productFlatToFlatDetail()
    {
        return $this->belongsTo( 'Source_Product_ProductFlatDetail', 'entity_id', 'entity_id' );
    }

    /**
     * ----------------------------------
     *  一对一关联产品库存表
     * ----------------------------------
     */
    public function productFlatToStock()
    {
        return $this->belongsTo( 'Source_Product_ProductEntityStock', 'entity_id', 'entity_id' );
    }

    /**
     * ----------------------------------
     *  一对一关联供应商
     * ----------------------------------
     */
    public function productFlatToSupplier()
    {
        return $this->belongsTo( 'Source_Product_ProductEntitySupplier', 'entity_id', 'entity_id' );
    }
}