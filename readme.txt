+++++++++++++++++++++++++++++++++++++++++++++++
mmmm    mmm    mmm    mmm    mmmm   mmm   m mm  
#" "#  "   #  #   "  #   "  #" "#  #"  #  #"  # 
#   #  m"""#   """m   """m  #   #  #""""  #   # 
##m#"  "mm"#  "mmm"  "mmm"  "#m"#  "#mm"  #   # 
#                            m  #               
"                             ""
+++++++++++++++++++++++++++++++++++++++++++++++
Simple POSIX shell password generator using 
urandom. Generates 100 passwords and dumps them
in ~/password. Thanks to Ella-0 for POSIX shell
compatiblity, & NotGrey for the "make passwords
overwrite and only readable by you and root"
command, & Breadtard for implementating CHARSET
and LENGTH options
===============================================
To use: 
 git clone (insert repo here) passgen
To use without installing
 cd passgen
 ./passgen
To use & install
 cd passgen
 # mv passgen (somewhere in path)
 passgen
To remove
 # rm /path/to/passgen
To configure
 # (editor of choice) /path/to/passgen
===============================================
passgen currently accepts 4 arguments: 
help or -h     displays help message
where or -w    prints where passgen is.
-l=LENGTH      make passwords a certain length
-c=CHARSET     use a certain character set.
