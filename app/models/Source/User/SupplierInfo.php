<?php
/**
 *
 * 供应用户
 *
 */

class Source_User_SupplierInfo extends \Eloquent
{
    protected $table = 'supplier_info';
    protected $primaryKey = 'id';
    use SoftDeletingTrait;
    protected $dates = ['deleted_at'];
    public $timestamps = true;
    protected $guarded = ['id'];

    /**
     * ----------------------------------
     *  一对一关联品牌
     * ----------------------------------
     */
    public function supplierToBrand()
    {
        return $this->hasMany( 'Source_Product_ProductBrand', 'pid', 'id' );
    }
}