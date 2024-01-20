<?php
require_once("rpcl/rpcl.inc.php");
//Includes
use_unit("forms.inc.php");
use_unit("extctrls.inc.php");
use_unit("stdctrls.inc.php");
use_unit("dbtables.inc.php");
use_unit("db.inc.php");
use_unit("dbctrls.inc.php");


//Class definition
class Page1 extends Page
{
    public $dbverssat21 = null;
    public $tbver_pedido_venda1 = null;
    public $dsver_pedido_venda1 = null;
    public $data1 = null;
    public $tbver_cliente1 = null;
    public $dsver_cliente1 = null;
    public $nome1 = null;
    public $tbver_vendedor1 = null;
    public $dsver_vendedor1 = null;
    public $nome2 = null;
    public $Edit1 = null;
    public $Edit2 = null;
    public $Edit3 = null;
    public $DBPaginator1 = null;
    public $id_ped_venda1 = null;
    public $id1 = null;
    public $Label1 = null;

    function Label1Click($sender, $params)
    {

      $this->tbver_pedido_venda1->Locate('id_ped_venda',4);

    }


}

global $application;

global $Page1;

//Creates the form
$Page1=new Page1($application);

//Read from resource file
$Page1->loadResource(__FILE__);

//Shows the form
$Page1->show();

?>
