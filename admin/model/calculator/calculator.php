<?php
class Modelcalculatorcalculator extends Model {
	
	public function edit($data) {
		
		$this->db->query("UPDATE `" . DB_PREFIX . "calculator` SET status=1");

		
		foreach ($data['calculator'] as $rows) {
				
			foreach ($rows as $row) {
				
				if((int)$row['id'] > 0){
					
					$sql = "UPDATE `" . DB_PREFIX . "calculator` SET
								group_id='".(int)$row['group_id']."',
								sub_group_id='".(int)$row['sub_group_id']."',
								`key`='".$this->db->escape($row['key'])."',
								name='".$this->db->escape($row['name'])."',
								price='".(float)$row['price']."',
								mera='".$this->db->escape($row['mera'])."',
								koef='".(float)$row['koef']."',
								plus='".(float)$row['plus']."',
								sort='".(int)$row['sort']."',
								operation='".(int)$row['operation']."',
								status=0						
								WHERE id=".$row['id']."";
				}else{
					$sql = "INSERT INTO `" . DB_PREFIX . "calculator` SET
								group_id='".(int)$row['group_id']."',
								sub_group_id='".(int)$row['sub_group_id']."',
								`key`='".$this->db->escape($row['key'])."',
								name='".$this->db->escape($row['name'])."',
								price='".(float)$row['price']."',
								mera='".$this->db->escape($row['mera'])."',
								koef='".(float)$row['koef']."',
								plus='".(float)$row['plus']."',
								sort='".(int)$row['sort']."',
								operation='".(int)$row['operation']."',
								status=0";
					
				}
				//echo '<br>'.$sql;
				$this->db->query($sql);
			}
		}
		
		$this->db->query("DELETE FROM `" . DB_PREFIX . "calculator` WHERE status=1");
	

	}

	public function get() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "calculator ORDER BY group_id, sub_group_id, sort, name");

		return $query->rows;
	}

}
