<?php
<object class="Page1" name="Page1" baseclass="Page">
  <property name="Background"></property>
  <property name="Caption">Page1</property>
  <property name="DocType">dtNone</property>
  <property name="Height">551</property>
  <property name="IsMaster">0</property>
  <property name="Name">Page1</property>
  <property name="Width">746</property>
  <object class="Label" name="data1" >
    <property name="Caption">data1</property>
    <property name="DataField">data</property>
    <property name="Datasource">dsver_pedido_venda1</property>
    <property name="Height">13</property>
    <property name="Left">76</property>
    <property name="Name">data1</property>
    <property name="Top">24</property>
    <property name="Width">75</property>
  </object>
  <object class="Label" name="nome1" >
    <property name="Caption">nome1</property>
    <property name="DataField">nome</property>
    <property name="Datasource">dsver_cliente1</property>
    <property name="Height">13</property>
    <property name="Left">390</property>
    <property name="Name">nome1</property>
    <property name="Top">24</property>
    <property name="Width">75</property>
  </object>
  <object class="Label" name="nome2" >
    <property name="Caption">nome2</property>
    <property name="DataField">nome</property>
    <property name="Datasource">dsver_vendedor1</property>
    <property name="Height">13</property>
    <property name="Left">236</property>
    <property name="Name">nome2</property>
    <property name="Top">24</property>
    <property name="Width">75</property>
  </object>
  <object class="Edit" name="Edit1" >
    <property name="DataField">data</property>
    <property name="DataSource">dsver_pedido_venda1</property>
    <property name="Height">21</property>
    <property name="Left">76</property>
    <property name="Name">Edit1</property>
    <property name="Top">37</property>
    <property name="Width">121</property>
  </object>
  <object class="Edit" name="Edit2" >
    <property name="DataField">nome</property>
    <property name="DataSource">dsver_vendedor1</property>
    <property name="Height">21</property>
    <property name="Left">236</property>
    <property name="Name">Edit2</property>
    <property name="Top">37</property>
    <property name="Width">121</property>
  </object>
  <object class="Edit" name="Edit3" >
    <property name="DataField">nome</property>
    <property name="DataSource">dsver_cliente1</property>
    <property name="Height">21</property>
    <property name="Left">390</property>
    <property name="Name">Edit3</property>
    <property name="Top">37</property>
    <property name="Width">121</property>
  </object>
  <object class="DBPaginator" name="DBPaginator1" >
    <property name="DataSource">dsver_pedido_venda1</property>
    <property name="Height">30</property>
    <property name="Left">185</property>
    <property name="Name">DBPaginator1</property>
    <property name="Top">132</property>
    <property name="Width">300</property>
  </object>
  <object class="Label" name="id_ped_venda1" >
    <property name="Caption">id_ped_venda1</property>
    <property name="DataField">id_ped_venda</property>
    <property name="Datasource">dsver_pedido_venda1</property>
    <property name="Height">13</property>
    <property name="Left">15</property>
    <property name="Name">id_ped_venda1</property>
    <property name="Top">42</property>
    <property name="Width">51</property>
  </object>
  <object class="Label" name="id1" >
    <property name="Caption">id1</property>
    <property name="DataField">id</property>
    <property name="Datasource">dsver_vendedor1</property>
    <property name="Height">13</property>
    <property name="Left">325</property>
    <property name="Name">id1</property>
    <property name="Top">24</property>
    <property name="Width">19</property>
  </object>
  <object class="Label" name="Label1" >
    <property name="Caption">Label1</property>
    <property name="Height">13</property>
    <property name="Left">192</property>
    <property name="Name">Label1</property>
    <property name="Top">248</property>
    <property name="Width">75</property>
    <property name="OnClick">Label1Click</property>
  </object>
  <object class="Database" name="dbverssat21" >
        <property name="Left">50</property>
        <property name="Top">120</property>
    <property name="Connected">1</property>
    <property name="DatabaseName">verssat2</property>
    <property name="Host">192.168.1.109</property>
    <property name="Name">dbverssat21</property>
    <property name="UserName">verssat2</property>
    <property name="UserPassword">titanic</property>
  </object>
  <object class="Table" name="tbver_pedido_venda1" >
        <property name="Left">74</property>
        <property name="Top">42</property>
    <property name="Active">1</property>
    <property name="Database">dbverssat21</property>
    <property name="MasterFields">a:0:{}</property>
    <property name="MasterSource"></property>
    <property name="Name">tbver_pedido_venda1</property>
    <property name="OrderField">id_ped_venda</property>
    <property name="TableName">ver_pedido_venda</property>
  </object>
  <object class="Datasource" name="dsver_pedido_venda1" >
        <property name="Left">146</property>
        <property name="Top">28</property>
    <property name="Dataset">tbver_pedido_venda1</property>
    <property name="Name">dsver_pedido_venda1</property>
  </object>
  <object class="Table" name="tbver_cliente1" >
        <property name="Left">396</property>
        <property name="Top">43</property>
    <property name="Active">1</property>
    <property name="Database">dbverssat21</property>
    <property name="MasterFields">a:0:{}</property>
    <property name="MasterSource"></property>
    <property name="Name">tbver_cliente1</property>
    <property name="TableName">ver_cliente</property>
  </object>
  <object class="Datasource" name="dsver_cliente1" >
        <property name="Left">452</property>
        <property name="Top">37</property>
    <property name="Dataset">tbver_cliente1</property>
    <property name="Name">dsver_cliente1</property>
  </object>
  <object class="Table" name="tbver_vendedor1" >
        <property name="Left">250</property>
        <property name="Top">42</property>
    <property name="Active">1</property>
    <property name="Database">dbverssat21</property>
    <property name="MasterFields"><![CDATA[a:1:{s:2:&quot;id&quot;;s:11:&quot;fk_vendedor&quot;;}]]></property>
    <property name="MasterSource"></property>
    <property name="Name">tbver_vendedor1</property>
    <property name="TableName">ver_vendedor</property>
  </object>
  <object class="Datasource" name="dsver_vendedor1" >
        <property name="Left">322</property>
        <property name="Top">28</property>
    <property name="Dataset">tbver_vendedor1</property>
    <property name="Name">dsver_vendedor1</property>
  </object>
</object>
?>
