<?php

  $filesArr = array();
  $count = 1;
  foreach (glob("*.csv") as $filename) {
        $filesArr[$count] = $filename;
        $count++;

  }



  require 'connect.php';

  $connect = connect();

  foreach($filesArr as $tmpFile){
    if(substr($tmpFile,(strlen($tmpFile)-6),2) == "LC"){
      $sql = "LOAD DATA INFILE '". $tmpFile ."' INTO TABLE dblc
      FIELDS TERMINATED BY '|' LINES TERMINATED BY '\r\n'
      (Date,Company,Day,Week,Month,Year,Plant,Time,Truck,Excavator,Loads,Area,Material,Time_Lost,Truck_Type,Estimated_Tons,Cubes,Shift,Haul_To,Month_Period,Year_Period,Material_Type,Haul_Distance,Team,Haul_Category)";
      if($result = mysqli_query($connect,$sql))
      {
        rename($tmpFile,'History/'.$tmpFile);
      }
    }
    else if (substr($tmpFile,(strlen($tmpFile)-6),2) == "DT"){

    }
    else if (substr($tmpFile,(strlen($tmpFile)-6),2) == "HM"){
      $sql = "LOAD DATA INFILE '". $tmpFile ."' INTO TABLE dbhm
      FIELDS TERMINATED BY '|' LINES TERMINATED BY '\r\n'
      (Date,Company,Day,Week,Month,Year,Plant,Type,Equipment,BOS,EOS,Total_Runtime,Shift,Month_Period,Year_Period,Team,Bud_Time)";
      if($result = mysqli_query($connect,$sql))
      {
        rename($tmpFile,'History/'.$tmpFile);
      }
    }
    else if (substr($tmpFile,(strlen($tmpFile)-6),2) == "DC"){
      $sql = "LOAD DATA INFILE '". $tmpFile ."' INTO TABLE dbdc
      FIELDS TERMINATED BY '|' LINES TERMINATED BY '\r\n'
      (Date,Company,Day,Week,Month,Year,Plant,Time,Dozer,Area,Material,Dozing_Time,Perc_Worked,Cubes,Shift,Haul_To,Month_Period,Year_Period,Team)";
      if($result = mysqli_query($connect,$sql))
      {
        rename($tmpFile,'History/'.$tmpFile);
      }
    }
  }
?>
