<?php
	/**
	 * Designed and Developed by : Prateek Chouhan
	 * This main model will be CRUD center for this application all main queries will br executed from here only.
	 */
	class Main_model extends CI_Model {
		
		public function selectQuery($tableName , $whereArray , $selectData="")
		{
			if(!empty($selectData))
			{
				$this->db->select($selectData);
			}
			$this->db->where($whereArray);
			$query = $this->db->get($tableName);
			return $query->result_array();
		}
		public function updateQuery($tableName , $tableData , $whereArray)
		{
			$this->db->where($whereArray);
			$this->db->update($tableName, $tableData); 
		}
		public function insertQuery($tableName , $tableData)
		{
			$this->db->insert($tableName, $tableData);
			return $this->db->insert_id();
		}
		public function deleteQuery($tableName , $whereArray)
		{
			$this->db->where($whereArray);
			$this->db->delete($tableName);
		}
		public function joinSelectQuery($table1  ,$table2 , $joinClause , $whereClause , $orderByClause , $selectData)
		{
			$this->db->select($selectData);
			$this->db->from($table1);
			$this->db->join($table2, $joinClause);
			if(!empty($whereClause))
			{
				$this->db->where($whereClause);
			}
			if(!empty($orderByClause))
			{
				$this->db->order_by($orderByClause);
			}
			$query = $this->db->get();
			return $query->result_array();
		}
		public function joinSelectQuery2($table1  ,$table2 ,$table3, $joinClause1, $joinClause2, $whereClause , $orderByClause , $selectData)
		{
			$this->db->select($selectData);
			$this->db->from($table1);
			$this->db->join($table2, $joinClause1);
			$this->db->join($table3, $joinClause2);
			if(!empty($whereClause))
			{
				$this->db->where($whereClause);
			}
			if(!empty($orderByClause))
			{
				$this->db->order_by($orderByClause);
			}
			$query = $this->db->get();
			return $query->result_array();
		}
	}	
?>