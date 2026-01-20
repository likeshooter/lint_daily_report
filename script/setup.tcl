set ::compare::setup(E0233) [dict create check_rule yes \
                        check_severity no \
                        check_dir yes process_design_dir [list absolutePath] process_design_dir_3rd [list absolutePath] \
                        check_object yes process_object_lint [list ignoreObjectSpace get_canonical_obj ignoreHiercolon slashesReplaceDots] process_object_3rd [list ignoreHiercolon ignoreObjectSpace splitSquareBrackets] \
                        check_line_number yes process_line_number [list] process_line_number_3rd [list]]

E0125 check_dir no   check_line_number no
    process_object_3rd [list fix_E0125_s_obj


    E0239 check_dir no     fix_E0239_e_obj


    E0243 check_dir no     fix_E0243_e_obj


    HDL_1163/1370/1742 check_object no


inside.tcl中的enmoid改成ennoid


symReset修改成 synReset

160 lappend __msg "[format {%s: $-8s} ennoid $::compare::ennoid]"
162 lappend __msg "[format {%s: $-6s} $key [llength $value]]"
170  "pass" "" "" "" "" 


