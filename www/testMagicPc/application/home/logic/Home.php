<?php
/**
 * Created by PhpStorm.
 * User: GHM
 * Date: 2018/5/4
 * Time: 11:00
 */

namespace app\home\logic;


use app\home\model\Projects;

class Home
{
     public function homeProject() {

         return Projects::where(['status'=> 1])->order('id','DESC')->limit(3)->select()->append(['link'])->toArray();

     }

     public function  homeActivity() {

//         return Activit
     }
}