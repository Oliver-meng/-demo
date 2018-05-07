<?php
/**
 * Created by PhpStorm.
 * User: GHM
 * Date: 2018/5/4
 * Time: 13:44
 */

namespace app\home\model;


use app\common\model\CommonModel;

class Activity extends CommonModel
{
    protected  $table = 'activities';

    protected  $hidden = [
        'provincial','city','applyer','status','power','last_operator','update_time'
    ];

    protected  $append =['link'];

    public function  scopeStatus($query) {

        return $query->where('status',1);
    }
    public  function  scopeShow($query) {
        return $query->where('status','in',[1,4]);
    }

    public static  function  queryWhere($query, $where)
    {
        if (key_exists('city',$where)&& !empty($where['city'])) {
            $query->where('city',$where['city']);
        }
    }
}