<?php
/**
 * Created by PhpStorm.
 * User: GHM
 * Date: 2018/5/4
 * Time: 10:57
 */

namespace app\home\controller;

use app\home\logic\Home as  HomeLogic;

use app\common\controller\CommonController;

class Home extends CommonController
{
    public function __construct(HomeLogic  $homeLogic)
    {
        $this->logic = $homeLogic;

        parent::__construct();
    }

    public function  index()
    {


    }
}