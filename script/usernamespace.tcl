



























































    WARN






    WARN









    WARN









































































































































































































    #################################################################################################
    ## 过程名称：addPrint
    ## 过程功能：添加需要打印到控制台的报错
    ## 入口参数：无
    ## 出口参数：无
    ## 其他说明：无
    ## 使用样例：无
    #################################################################################################
    proc addPrint {args} {
        variable printLevel
        variable addPrintFlag
        set addPrintFlag 1
        if {$args == "all"} {
            set printLevel [list "debug" "info" "notice" "warn" "error" "critical"]
        } elseif {[llength $args] == 0} {
            set printLevel [list "notice" "critical" "debug"]
        } else {
            foreach item $args {
                lappend printLevel $item
            }
        }
    }
    #################################################################################################
    ## 过程名称：write_log
    ## 过程功能：执行生成的 tcl 文件
    ## 入口参数：
    ## 出口参数：无
    ## 其他说明：
    ##      debug/info/notice/warn/error：如果有文件输出在文件中，但是 log 文件文件中只出现 debug/info/warn/error这几中错误类型；
    ##                                              输出在控制台上时出现颜色
    ##      其他的都是只输出在控制台，输出在控制台上时出现颜色
    ## 使用样例：无
    #################################################################################################
    proc writeLog {log msg level} {
        variable logMutex
        variable printLevel ;# 是否需要打印到控制台 -> all:全部打印 为空则全部不打印；为报错等级则答应相应的信息
        variable addPrintFlag
        variable debugPrint
        set servicename ${::userlog::log}::servicename
        # 获取打印的错误的信息的名字
        set loglevel [lindex [info level [expr [info level]-2]] 0]
        # puts $loglevel
        # 所有的报错等级都需要输出到 log 文件中；但是只能 info debug warn error fault 能输出到 文件中
        if {[regexp -nocase {^(debug|info|notice|warn|error|critical)$} $level] == 1 && [regexp {red|green|blue|grey|yellow} $loglevel] == 0} {
            if {$level == "notice"} {
                set logStr "\[info\] $msg"
            } elseif {$level == "critical"} {
                set logStr "\[fault\] $msg"
            } else {
                set logStr "\[$level\] $msg"
            }
            set stdoutFile "[clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]: \[[idToDecimal]\] $logStr"
            thread::rwmutex wlock $logMutex
            fileutil::appendToFile $::userlog::logfile "$stdoutFile\n"
            thread::rwmutex unlock $logMutex
            # 是否需要答应的报错
            if {$level in $printLevel} {
                printColors $level "[clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]: $logStr"
            }
        }
        # 打印 debug 信息、并打印颜色
        if {[regexp {red|green|blue|grey|yellow} $loglevel] == 1 && [info exists debugPrint] == 1 && $debugPrint == 1} {
            printColors $level $msg
        }
    }


































































































































































































    proc adjustListOrder {lists args} {
        foreach item $args {
            set first [lindex $lists [lindex $item 0]]
            set second [lindex $lists [lindex $item 1]]
            set lists [lreplace $lists [lindex $item 1] [lindex $item 1] $first]
            set lists [lreplace $lists [lindex $item 0] [lindex $item 0] $second]
        }
        return $lists
    }




















