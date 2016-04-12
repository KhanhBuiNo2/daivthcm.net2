<?php
namespace App\hmxxxxlllib;

use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;

class ClsCommon
{
    //phpinfo();

    public static $nameweb = 'VNPT-NET2';
    public static $showsession = 0; //1: show

    public static $page1 = 10;//it dong
    public static $page2 = 20;//nhieu dong

    public static $color_primary = '#337ab7';
    public static $color_success = '#5cb85c';
    public static $color_info = '#5bc0de';
    public static $color_warning = '#f0ad4e';
    public static $color_danger = '#d9534f';

    public static $excelcolor_fill = 'CCFF99';
    public static $excelcolor_border = 'EOEOEO';

    public static function CreateCookie($name, $value)
    {
        setcookie($name, $value, time() + 60 * 60 * 24 * 30);//Ton tai 1 nam
    }

    public static function DeleteCookie($name)
    {
        setcookie($name, '', time() - 3600);//Het hieu luc cach day 3600 giay
    }
    
    public static function ReadCookie($name)
    {
        if (isset($_COOKIE[$name])) {
            return $_COOKIE[$name];
        } else {
            return '';
        }
    }

    public static function datesql($strdate)//dd/MM/yyyy
    {
        if (strlen($strdate) == 10) {
            return substr($strdate, 6, 4) . '-' . substr($strdate, 3, 2) . '-' . substr($strdate, 0, 2);
        } else {
            return '';
        }
    }

    public static function sqldate($datetimeFromMysql)//yyyy-mm-dd hh:mm:ss
    {
        if (substr($datetimeFromMysql, 0, 4) != '0000') {
            return date('d/m/Y', strtotime($datetimeFromMysql));
        } else {
            return '';
        }
    }

    public static function getCurrentPageURL()
    {
        $pageURL = 'http';

        if (!empty($_SERVER['HTTPS'])) {
            if ($_SERVER['HTTPS'] == 'on') {
                $pageURL .= "s";
            }
        }

        $pageURL .= "://";

        if ($_SERVER["SERVER_PORT"] != "80") {
            $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
        } else {
            $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
        }

        return $pageURL;
    }

    public static function get_current_weekday()
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $weekday = date("l");
        $weekday = strtolower($weekday);
        switch ($weekday) {
            case 'monday':
                $weekday = 'Thứ hai';
                break;
            case 'tuesday':
                $weekday = 'Thứ ba';
                break;
            case 'wednesday':
                $weekday = 'Thứ tư';
                break;
            case 'thursday':
                $weekday = 'Thứ năm';
                break;
            case 'friday':
                $weekday = 'Thứ sáu';
                break;
            case 'saturday':
                $weekday = 'Thứ bảy';
                break;
            default:
                $weekday = 'Chủ nhật';
                break;
        }
        return $weekday . ', ' . date('d/m/Y H:i:s');
    }

    public static function paginateArray($data, $perPage)
    {
        $page = Paginator::resolveCurrentPage();
        $total = count($data);
        $results = array_slice($data, ($page - 1) * $perPage, $perPage);

        return new LengthAwarePaginator($results, $total, $perPage, $page, [
            'path' => Paginator::resolveCurrentPath(),
        ]);
    }

}






