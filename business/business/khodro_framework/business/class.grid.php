<?php
  function connectToDb()
  {
      mysql_connect('localhost', 'root', '');
      mysql_select_db('eshop');
      mysql_query("SET NAMES UTF8");
  }
  
  //array('id' => 'ردیف',' email'=>'ایمیل')
  function createGrid($tablename, $fields)
  {
      connectToDb();
      if(isset($_POST['submitDelete']))
      {
          deleteRecord($_POST['hfRecordID'], $tablename);
      }
      $queryFields = '';
      
      $grid = '<table border="1"><tr>';
      
      foreach($fields as $index => $value)
      {
         if(end($fields) == $value)  
            $queryFields .= "$index "    ;
         else
            $queryFields .= "$index, "    ;
            
         $grid .= "<td>$value</td>";
      }
      $grid .= '<td>دستورات</td>';
      $grid .= '</tr>';
      
      
      $query = "SELECT $queryFields FROM $tablename";
      $result = mysql_query($query);
      
      while($radif = mysql_fetch_assoc($result))
      {
          $grid .= '<tr>';
          foreach($radif as $value)
          {
              $grid .= "<td>$value</td>";
          }
          $grid .= "
            <td>
                <form action='' method='post'>
                    <input type='hidden' value='$radif[id]' name='hfRecordID' />
                    <input onclick='return confirm(\"آیای از حذف رکورد مطمئنید?\")' type='submit' value='حذف' name='submitDelete'
                </form>                         
            </td>
          ";
          $grid .= '</tr>';
      }
      
      $colspan = count($fields) + 1;
      $allRecordCount = mysql_num_rows($result);
      $grid .= "<tr><td colspan='$colspan'>تعداد کل ردیف ها : $allRecordCount</td></tr>";
      $grid .= '</table>';
      
      
      echo $grid;
      
      
      
      
      
  }
  function deleteRecord($id, $table)
  {
      connectToDb();
      return mysql_query("DELETE FROM $table WHERE id = $id");
  }
  
?>