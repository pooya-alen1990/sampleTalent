<?php

    // HTML Handler Class
    // Generate HTML Elements And Fill them with Database Data
    class HtmlHandler
    {


        public static function comboBox($table, $titleField, $valueField, $elementName, $cssClass = '',$onclick='', $whereClause = '')
        {
            //$records = HTML::comboBox($table); 
            //DatabaseHandler::Execute("SET NAMES UTF8;");
            
            $sql = "SELECT * FROM $table $whereClause";

            $records = DatabaseHandler::GetAll($sql);
            DatabaseHandler::Close();
            $options = '';
           // print_r($records);
            foreach($records as $value)
            {
                //echo '*' . $value["title"] . '*';
                $val = $value["title"];
                $id = $value["$valueField"];
                $options .= "<option id='$elementName$id' name='$elementName'  value='$id'>$val</option>";
            }
            //print_r($options);
            $result = <<<_END
           <select class="$cssClass" name="$elementName" size="1" id="$elementName" onchange='$onclick'>
           
              $options
           </select>      
_END;
            return $result;
        }
        public static function comboBoxBootStrap($table, $titleField, $valueField, $elementName, $onclick='', $whereClause = '')
        {
            //$records = HTML::comboBox($table); 
            DatabaseHandler::Execute("SET NAMES UTF8;");
            $sql = "SELECT * FROM $table $whereClause";

            $records = DatabaseHandler::GetAll($sql);
            DatabaseHandler::Close();
            $options = '';
            foreach($records as $value)
            {
                $val = $value["$titleField"];
                $id = $value["$valueField"];
                $options .= "<option id='$id' name='$elementName' onclick='$onclick' value='$id'>$val</option>";
            }
            //print_r($options);
            $result = <<<_END
           <select name="$elementName" size="1" id="$elementName">
           <option></option>
              $options
           </select>      
_END;
            return $result;
        }

        public static function radioButtonGroup($radios, $elementName)
        {
            // $radios is an ASSOC array contanis name, value, title
            $radioButtons = '';
            foreach($radios as $item)
            {
                $val = $item['value'];
                $text = $item['text'];
                $radioButtons .= "<label><input type='radio' name='$elementName' value='$val' />$text</label>";
            }
            return $radioButtons;
        }


        public static function checkBox($table, $idField , $titleField ,$elementName, $whereClause = '',$cssClass = '',$onClick='')
        {
            DatabaseHandler::Execute("SET NAMES UTF8;");
            $sql = "SELECT * FROM $table $whereClause";

            $records = DatabaseHandler::GetAll($sql);
            DatabaseHandler::Close();
            $checkBox = '';
            foreach($records as $item)
            {
                $id = $item[$idField];
                $text = $item[$titleField];
                $checkBox .= "<label class='$cssClass'><input type='checkbox' name='$elementName' id='$elementName$id' value='$id' />$text</label>";
            }
            return $checkBox;
        }
        public static function lightBox($popUpID, $popUpWidth  = '400', $popUpTitle, $form )
        {
            $popUpWidth .= 'px';
            $offDiv = "<div class='lightbox'></div>";
            $popUp =  <<<_END
            <div style='width:$popUpWidth' class="popUpOuter" id="$popUpID">
            <div class='closePopUp' onclick="closePopUp('$popUpID')">X</div>
                <p class="popUpTitle">$popUpTitle</p>
                <div class="popUpInner">$form</div>
            </div>
_END;
            return $offDiv . $popUp;
        }


    }
?>
