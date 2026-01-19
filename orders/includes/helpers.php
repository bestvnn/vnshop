<?php
/**
 * Author: Tieu_Vu
 * 
 * Name: Create Or Update DB
 * @param string $table_name
 * @param int $id
 * @param array $data
 * 
 */
function createOrUpdate($table_name,$id,$data){
	global $_db;
	$data_value = "";
	foreach($data as $k=>$v){
		$data_value.=",".$k."='".$v."'";
	}
	$data_return = substr($data_value,1);
	if($id!=''){
		$query = $_db->exec_query("UPDATE $table_name SET $data_return WHERE id=$id");		
	}else{		
		$query = $_db->exec_query("INSERT INTO $table_name SET $data_return");		
	}
	return $query;
}

/**
 * Author: Tieu_Vu
 * 
 * Name: Select DB
 * @param string $table_name
 * @param string $select
 * @param array $parameter
 * @param string $order_name
 * @param string $order_value
 * @param integer $limit
 * 
 */
function getData($table_name,$select,$parameter,$sql,$order_name,$order_value,$limit){
	global $_db;	
	if(!empty($parameter)){
		$parameter_value = "";
		foreach($parameter as $k=>$v){
			$parameter_value.=",".$k."='".$v."'";
		}
		$data_parameter = substr($parameter_value,1);
		if($limit!=''){			
			if($order_name!='' && $order_value!=''){
				$query = $_db->query("SELECT $select FROM $table_name WHERE $data_parameter ".$sql." order by $order_name $order_value limit $limit")->fetch_array();
			}else{							
				$query = $_db->query("SELECT $select FROM $table_name WHERE $data_parameter $sql limit $limit")->fetch_array();
			}
		}else{
			if($order_name!='' && $order_value!=''){
				$query = $_db->query("SELECT $select FROM $table_name WHERE $data_parameter ".$sql." order by $order_name $order_value")->fetch_array();
			}else{
				$query = $_db->query("SELECT $select FROM $table_name WHERE $data_parameter")->fetch_array();
			}
		}
	}else{
		if($limit!=''){	
			if($order_name!='' && $order_value!=''){
				$query = $_db->query("SELECT $select FROM $table_name order by $order_name $order_value limit $limit")->fetch_array();
			}else{
				$query = $_db->query("SELECT $select FROM $table_name limit $limit")->fetch_array();
			}	
		}else{
			if($order_name!='' && $order_value!=''){
				$query = $_db->query("SELECT $select FROM $table_name order by $order_name $order_value")->fetch_array();
			}else{
				$query = $_db->query("SELECT $select FROM $table_name")->fetch_array();
			}	
		}
	}
	return $query;
}

/**
 * Author: Tieu_Vu
 * 
 * Name: Get Table By Id
 * @param string $table_name
 * @param string $select
 * @param integer $id
 * 
 */
function getInfoById($table_name,$select,$id){
	global $_db;
	$query = $_db->query("SELECT $select FROM $table_name WHERE id=$id limit 1")->fetch();
	return $query;
}

/**
 * Author: Tieu_Vu
 * 
 * Name: Show Only 1 record
 * @param string $table_name
 * @param string $select
 * 
 */
function getTableByFirst($table_name,$select){
	global $_db;
	$query = $_db->query("SELECT $select FROM $table_name limit order by id DESC 1")->fetch();
	return $query;
}
?>