$day = 3

if ( $day -eq 0 ) { 
    $result = 'Sunday'        
}
elseif ( $day -eq 1 ) { 
    $result = 'Monday'    
}
elseif ( $day -eq 2 ) { 
    $result = 'Tuesday'   
}
elseif ( $day -eq 3 ) { 
    $result = 'Wednesday' 
}
elseif ( $day -eq 4 ) { 
    $result = 'Thursday'  
}
elseif ( $day -eq 5 ) { 
    $result = 'Friday'    
}
elseif ( $day -eq 6 ) { 
    $result = 'Saturday'  
}

$result



$day = 5

$result = switch ( $day )
{
    0 { 'Sunday'    }
    1 { 'Monday'    }
    2 { 'Tuesday'   }
    3 { 'Wednesday' }
    4 { 'Thursday'  }
    5 { 'Friday'    }
    6 { 'Saturday'  }
}

$result