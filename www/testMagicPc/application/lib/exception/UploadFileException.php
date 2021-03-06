<?php
/*
|--------------------------------------------------------------------------
| Creator: SuYang
| Date: 2018/3/27 0027 13:35
|--------------------------------------------------------------------------
|                                                      说明
|--------------------------------------------------------------------------
*/

namespace app\lib\exception;

use app\lib\enum\ExceptionEnum;

class UploadFileException extends CommonException
{
    // HTTP 状态码
    protected $code = 400;
    // 错误消息
    protected $msg = 'Upload file exception';
    // 错误码 10000
    protected $errorCode = ExceptionEnum::UPLOAD_FILE;
    // 自定义的错误集
    protected $errorMsg = [
        14001 => [
            'code' => 400,
            'msg' => '上传失败'
        ],

        14002 => [
            'code' => 400,
            'msg' => '缺少文件类型'
        ],

        14003 => [
            'code' => 400,
            'msg' => '上传文件信息有误'
        ],

        14004 => [
            'code' => 400,
            'msg' => '上传文件类型错误'
        ],

        14005 => [
            'code' => 400,
            'msg' => '上传文件太大'
        ],
    ];

}