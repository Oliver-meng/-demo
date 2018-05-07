<?php
/**
 * Created by PhpStorm.
 * User: GHM
 * Date: 2018/5/4
 * Time: 11:07
 */

namespace app\home\model;


use app\common\model\CommonModel;

class Projects  extends  CommonModel
{
     protected  $table = 'projects';

     protected  $hidden = [
         'industry_id','status','power','last_operator','update_time'
     ];

    public function scopeStatus($query) {
        return $query->where('status',1);
    }

     public  static function  queryWhere($query, $where)
    {
        if (key_exists('industry_id',$where) && !empty($where['industry_id'])) {
            $query->where('industry_id',$where['industry_id']);
        }
    }

    public function getLinkAttr($value,$data) {
        $id = $data['id'];
        return  getDomain()."/projects/$id".'.'.config('url_html_suffix');
    }

    public function industry() {
        return $this->hasOne('ProjectIndustries','id','industry_id')->bind('industry_name');

    }

//    public function jobs() {
//
//
//    }

}