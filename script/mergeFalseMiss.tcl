

























            set false [dict get $value1 "false"]
            set miss [dict get $value1 "miss"]


            dict set value "false" [expr $false + [dict get $value "false"]]
            dict set value "miss" [expr $miss + [dict get $value "miss"]]



