axlCmdRegister("date" 'LastModifiedDate)
;
procedure(LastModifiedDate()
;
let((report) 												; comment if don't need a log file

report = outfile("./Last_Modified_Date.log" "w") 				; comment if don't need a log file

sym_name = axlGetVariable("_module")

db_LastModDate = fileTimeModified(sym_name)

LastModDate = timeToString(db_LastModDate)

fprintf(report "Symbol Name:%s\n" sym_name) 					; comment if don't need a log file
printf("Symbol Name: %s\n" sym_name)

fprintf(report "\t Last Modified Date & Time: %s\n" LastModDate) 	; comment if don't need a log file
printf("\t Design was Last Saved on: %s\t" LastModDate)
close(report) 												; comment if don't need a log file

);end let 												; comment if don't need a log file
);end procedure