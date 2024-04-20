# create a process called killmenow 

exec { 'pkill' :
    path    => '/bin/',
    command => 'pkill -9 -f killmenow',
    }
