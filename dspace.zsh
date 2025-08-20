#compdef dspace

_dspace_cmd_0 () {
    _path_files
}

_dspace () {
    declare -a literals=("bitstore-migrate" "--source" "-a" "--destination" "-b" "--delete" "-d" "--help" "-h" "--print" "-p" "--size" "-s" "checker" "--continuous" "-L" "--looping" "-l" "--handle" "-b" "--count" "-c" "--duration" "--prune" "--verbose" "-v" "checker-emailer" "-a" "-d" "-m" "-c" "-u" "-n" "-h" "classpath" "cleanup" "community-filiator" "--set" "--remote" "-r" "--child" "--parent" "create-administrator" "--language" "--email" "-e" "--first" "-f" "--last" "--password" "curate" "--eperson" "--id" "-i" "--parameter" "--queue" "-q" "--reporter" "--scope" "object" "curation" "open" "--task" "-t" "noop" "profileformats" "requiredmetadata" "checklinks" "registerdoi" "--taskfile" "-T" "--verbose" "database" "test" "info" "status" "migrate" "repair" "skip" "validate" "update-sequences" "clean" "doi-organiser" "--delete-all" "--delete-doi" "--filter" "--list" "--quiet" "--register-all" "--register-doi" "--reserve-doi" "--reserve-all" "--update-all" "-u" "--update-doi" "dsprop" "--first" "--module" "-m" "--property" "--raw" "-?" "export" "--type" "ITEM" "COLLECTION" "--id" "--migrate" "--number" "-n" "--exclude-bitstreams" "-x" "--zip" "-z" "filter-media" "--force" "--identifier" "--maximum" "--plugins" "--quiet" "--skip" "generate-sitemaps" "--no_htmlmap" "--delete" "--no_sitemaps" "harvest" "--address" "--collection" "--eperson" "--ping" "-g" "--oai_set_id" "--metadata_format" "--reimport" "-o" "--purge" "--purgeCollections" "-P" "--run" "--reset" "-R" "--setup" "--start" "-S" "--type" "0" "1" "2" "3" "import" "--add" "--collection" "--delete" "--eperson" "--mapfile" "--notify" "--template" "--quiet" "--replace" "--resume" "--source" "--url" "--validate" "--workflow" "-w" "--exclude-bitstreams" "--zip" "index-authority" "index-discovery" "--build" "--clean" "--delete" "--force" "--index" "--remove" "--spellchecker" "--type" "ClaimedTask" "Collection" "Community" "Item" "PoolTask" "XmlWorkflowItem" "WorkspaceItem" "MetadataField" "LDNMessageEntity" "itemupdate" "--addmetadata" "--addbitstreams" "-A" "--deletemetadata" "--deletebitstreams" "-D" "--eperson" "--filter-properties" "-F" "--itemfield" "--provenance" "--source" "--test" "--verbose" "make-handle-config" "metadata-export" "--all" "--file" "--id" "--output-format" "csv" "bibtex" "ris" "metadata-import" "--email" "--file" "--notify" "--silent" "--template" "--validate-only" "--workflow" "migrate-embargo" "--adjust" "--check" "--id" "--list" "--dryrun" "--quiet" "--verbose" "oai" "import" "clean-cache" "-c" "-v" "packager" "--all" "--disseminate" "--eperson" "--force-replace" "--identifier" "--keep-existing" "-k" "--option" "--parent" "--restore" "--submit" "--type" "--no-user-interaction" "--install" "process-cleaner" "--completed" "--failed" "--runing" "rdfizer" "--convert-all" "--delete" "--delete-all" "--identifiers" "--dry-run" "--stdout" "--verbose" "read" "registry-loader" "-bitstream" "-metadata" "structure-builder" "-k" "--export" "--eperson" "--output" "-f" "-h" "update-handle-prefix" "user" "--add" "--delete" "--list" "--modify" "-M" "--email" "--netid" "--password" "--givenname" "--surname" "--telephone" "--language" "--requireCertificate" "--canLogin" "-C" "--newEmail" "--newNetid" "-I" "--newPassword" "dspace" "validate-date" "version")
    declare -A descrs=()
    descrs[0]="Migrate all files (bitstreams) from one assetstore (bitstore) to another"
    descrs[1]="Source assetstore store_number (to lose content)"
    descrs[2]="Destination assetstore store_number (to gain content)"
    descrs[3]="Delete file from losing assetstore. (Default: Keep bitstream in old assetstore)"
    descrs[4]="Help"
    descrs[5]="Print out current assetstore information"
    descrs[6]="Batch commit size. (Default: 1, commit after each file transfer)"
    descrs[7]="Run the checksum checker"
    descrs[8]="Loop continuously through the bitstreams"
    descrs[9]="Loop once through bitstreams"
    descrs[10]="Specify a handle to check"
    descrs[11]="Space separated list of bitstream IDs"
    descrs[12]="Check count"
    descrs[13]="Checking duration"
    descrs[14]="Prune old results"
    descrs[15]="Report all processing"
    descrs[16]="Send all the results"
    descrs[17]="Send E-mail report for all bitstreams set as deleted for today"
    descrs[18]="Send E-mail report for all bitstreams not found in assetstore for today"
    descrs[19]="Send E-mail report for all bitstreams where checksum has been changed for today"
    descrs[20]="Send the Unchecked bitstream report"
    descrs[21]="Send E-mail report for all bitstreams set to longer be processed for today"
    descrs[22]="Calculate and display the DSpace classpath"
    descrs[23]="Remove deleted bitstreams from the assetstore"
    descrs[24]="Tool to manage community and sub-community relationships"
    descrs[25]="Set a parent/child relationship"
    descrs[26]="Remove a parent/child relationship"
    descrs[27]="Child community"
    descrs[28]="Parent community"
    descrs[29]="Create a DSpace administrator account"
    descrs[30]="Administrator language"
    descrs[31]="Administrator email address"
    descrs[32]="Administrator first name"
    descrs[33]="Administrator last name"
    descrs[34]="Administrator password"
    descrs[35]="Perform curation tasks on DSpace objects"
    descrs[36]="Email address of curating eperson"
    descrs[37]="Id (handle) of object to perform task on, or 'all' to perform on whole repository"
    descrs[38]="A task parameter 'NAME=VALUE'"
    descrs[39]="Name of task queue to process"
    descrs[40]="Path to desired report file"
    descrs[41]="Transaction scope to impose"
    descrs[42]="Curation task name"
    descrs[43]="File containing curation task names"
    descrs[44]="Report activity to stdout"
    descrs[45]="Performs a test connection to database to validate connection settings"
    descrs[46]="Describe basic info/status about database, including validating the compatibility of this database"
    descrs[47]="Migrate the database to the latest version"
    descrs[48]="Attempt to repair any previously failed database migrations or checksum mismatches"
    descrs[49]="Validate current database's migration status"
    descrs[50]="Update database sequences after running AIP ingest"
    descrs[51]="DESTROY all data and tables in database (WARNING there is no going back!)"
    descrs[52]="Transmit information about DOIs to the registration agency"
    descrs[53]="Perform online deletion for all identifiers queued for deletion"
    descrs[54]="Delete a specified identifier"
    descrs[55]="Use the specified filter name instead of the provider's filter"
    descrs[56]="List all objects to be reserved, registered, deleted or updated"
    descrs[57]="Turn the command line output off"
    descrs[58]="Perform online registration for all identifiers queued for registration"
    descrs[59]="Register a specified identifier"
    descrs[60]="Reserve a specified identifier online"
    descrs[61]="Perform online reservation for all identifiers queued for reservation"
    descrs[62]="Perform online metadata update for all identifiers queued for metadata update"
    descrs[63]="Update online an object"
    descrs[64]="Display the value of a DSpace configuration property"
    descrs[65]="Display only the first value of an array property"
    descrs[66]="Name of the module in which property exists"
    descrs[67]="Name of the desired property"
    descrs[68]="Do not do property substitution on the value"
    descrs[69]="Export items or collections"
    descrs[70]="Type of export"
    descrs[71]="ID or handle of thing to export"
    descrs[72]="Export for migration"
    descrs[73]="Sequence number to begin exporting items with"
    descrs[74]="Do not export bitstreams"
    descrs[75]="Export as zip file to path"
    descrs[76]="Perform the media filtering to extract full text from documents and to create thumbnails"
    descrs[77]="Force all bitstreams to be processed"
    descrs[78]="Only process bitstreams belonging to the provided handle"
    descrs[79]="Process no more than maximum items"
    descrs[80]="Only run the specified Media Filter plugins (comma separated)"
    descrs[81]="Do not print anything except in the event of errors"
    descrs[82]="Skip bitstreams belonging to the identifier(s), comma separated"
    descrs[83]="Generate search engine and html sitemaps"
    descrs[84]="Do not generate a basic HTML sitemap"
    descrs[85]="Delete sitemaps dir and its contents"
    descrs[86]="Do not generate sitemaps.org protocol sitemap"
    descrs[87]="Manage the OAI-PMH harvesting of external collections"
    descrs[88]="Address of the OAI-PMH server"
    descrs[89]="Harvesting collection"
    descrs[90]="Email address of the Eperson"
    descrs[91]="Test the OAI server and set"
    descrs[92]="Id of the PMH set for the harvested collection"
    descrs[93]="Name of the desired metadata format for harvesting"
    descrs[94]="Reimport all items in the collection (equivalent to -p -r)"
    descrs[95]="Delete all items in the collection"
    descrs[96]="Purge all harvestable collections"
    descrs[97]="Run the standard harvest procedure"
    descrs[98]="Reset harvest status on all collections"
    descrs[99]="Set the collection up for harvesting"
    descrs[100]="Start the harvest loop"
    descrs[101]="Type of harvesting"
    descrs[102]="No harvesting"
    descrs[103]="Metadata only"
    descrs[104]="Metadata and bitstream references"
    descrs[105]="Metadata and bitstreams"
    descrs[106]="Import items or collections"
    descrs[107]="Add items to DSpace"
    descrs[108]="Destination collection(s)"
    descrs[109]="Delete items listed in mapfile"
    descrs[110]="Email address of eperson doing the importing"
    descrs[111]="Mapfile for items"
    descrs[112]="Send notification emails"
    descrs[113]="Apply the collection template"
    descrs[114]="Don't display metadata"
    descrs[115]="Replace items listed in mapfile"
    descrs[116]="Resume a failed import"
    descrs[117]="Source of items"
    descrs[118]="URL of zip file"
    descrs[119]="Test run (do not actually import items)"
    descrs[120]="Send submission through collection's workflow"
    descrs[121]="Do not load or expect content bitstreams"
    descrs[122]="Name of zip file"
    descrs[123]="Import authorities and keep SOLR authority index up to date"
    descrs[124]="Update Discovery (Solr) search and browse Index"
    descrs[125]="(Re)build index, wiping out current one if it exists"
    descrs[126]="Clean existing index, removing documents no longer in the DB"
    descrs[127]="Delete all records from existing index"
    descrs[128]="If updating existing index, force each handle to be reindexed even if up-to-date"
    descrs[129]="Add or update object (handle or UUID)"
    descrs[130]="Remove an object (handle or UUID)"
    descrs[131]="Rebuild the spellchecker"
    descrs[132]="Reindex only specific type of indexable object"
    descrs[133]="Item update tool for altering metadata and bitstream content in items"
    descrs[134]="Add metadata specified for each item (semicolon separated)"
    descrs[135]="Add bitstreams as specified for each item"
    descrs[136]="Delete metadata specified for each item"
    descrs[137]="Delete bitstreams as specified for each item"
    descrs[138]="Email address of eperson doing the update"
    descrs[139]="Filter class name (only for deleting bitstream)"
    descrs[140]="Metadata field containing item identifier (default: dc.identifier.uri)"
    descrs[141]="Suppress altering provenance field for bitstream changes"
    descrs[142]="Root directory of source DSpace archive"
    descrs[143]="Verbose logging"
    descrs[144]="Run the handle server simple setup command"
    descrs[145]="Export metadata for batch editing"
    descrs[146]="Include all metadata fields that are not normally changed (e.g. provenance)"
    descrs[147]="Destination to write the file"
    descrs[148]="ID or handle of thing to export (item, collection, or community)"
    descrs[149]="Output format of metadata"
    descrs[150]="Import metadata after batch editing"
    descrs[151]="Email address or user ID of user (required if adding new items)"
    descrs[152]="Source file"
    descrs[153]="Send notification emails on new items using workflow"
    descrs[154]="Silent operation (use with caution)"
    descrs[155]="When adding items, use the collection template"
    descrs[156]="Just validate the CSV, don't run the import"
    descrs[157]="When adding items, use the collection workflow"
    descrs[158]="Embargo manager tool used to migrate old version of Embargo to the new one included in dspace3"
    descrs[159]="Adjust bitstreams policies"
    descrs[160]="Do not lift any embargoes, only check status of embargoed items"
    descrs[161]="Process only these items (by ID)"
    descrs[162]="Only lift embargoes, do not check the status"
    descrs[163]="Do not change anything, print messages instead"
    descrs[164]="Do not print anything except for errors"
    descrs[165]="Print a line describing action taken for each embargoed Item found"
    descrs[166]="OAI Manager Script"
    descrs[167]="Import DSpace items into OAI index and cache system"
    descrs[168]="Clean the OAI cached responses"
    descrs[169]="Clear index (import only)"
    descrs[170]="Verbose output"
    descrs[171]="Execute a packager"
    descrs[172]="Also recursively ingrest any child packages (e.g. all items in collection)"
    descrs[173]="Disseminate package (output)"
    descrs[174]="Email address of the eperson doing importing"
    descrs[175]="Replace already existing objects found during a restore (-r) instead of error"
    descrs[176]="Object to disseminate"
    descrs[177]="Keep already existing objects found during a restore (-r) instead of error"
    descrs[178]="Packager option to pass to plugin, name=value"
    descrs[179]="Handle of parent community or collection to ingest object"
    descrs[180]="Ingest in restore mode; restore missing object based on package contents"
    descrs[181]="Submission package (input)"
    descrs[182]="Package type or MIME type"
    descrs[183]="Skip over user interaction"
    descrs[184]="Disable workflow; install immediately without going through collection's workflow"
    descrs[185]="Delete old Processes from the system"
    descrs[186]="Delete process with completed status (default)"
    descrs[187]="Delete process with failed status"
    descrs[188]="Delete process with running status"
    descrs[189]="Tool to convert contents to RDF"
    descrs[190]="Convert all DSpace Objects that are readable anonymously"
    descrs[191]="Delete previously converted data"
    descrs[192]="Delete all converted data from the triplestore"
    descrs[193]="Only convert these Objects"
    descrs[194]="Don't send any commands or data to the triplestore"
    descrs[195]="Print all converted data to stdout as turtle"
    descrs[196]="Print verbose information to stderr while converting"
    descrs[197]="Execute a stream of commands from a file or pipe"
    descrs[198]="Load entries into a registry"
    descrs[199]="Build DSpace community and collection structure"
    descrs[200]="Export the current structure as XML"
    descrs[201]="Email address of the eperson doing the operation"
    descrs[202]="Output XML file"
    descrs[203]="Source XML file"
    descrs[204]="Update handle records and metadata when moving from one Handle prefix to another"
    descrs[205]="Create, List, Update, Delete EPerson (user) records"
    descrs[206]="Create a new EPerson"
    descrs[207]="Delete an existing EPerson"
    descrs[208]="List EPersons"
    descrs[209]="Modify an EPerson"
    descrs[210]="Email address for the EPerson (existing, if modifying)"
    descrs[211]="netid (e.g. from an external directory service; existing, if modifying)"
    descrs[212]="Password of the created EPerson"
    descrs[213]="First or given name of the EPerson"
    descrs[214]="Last or surname of the EPerson"
    descrs[215]="Telephone number for the EPerson"
    descrs[216]="Preferred language for the EPerson"
    descrs[217]="Require X.509 certificate"
    descrs[218]="Enable or disable account"
    descrs[219]="New email address for modifying EPerson"
    descrs[220]="New netid for modifying EPerson"
    descrs[221]="New password for modifying EPerson"
    descrs[222]="Test date-time format rules"
    descrs[223]="Show DSpace version and other troubleshooting information"
    declare -A descr_id_from_literal_id=([1]=0 [2]=1 [4]=2 [6]=3 [8]=4 [10]=5 [12]=6 [14]=7 [15]=8 [17]=9 [19]=10 [20]=11 [21]=12 [23]=13 [24]=14 [25]=15 [28]=16 [29]=17 [30]=18 [31]=19 [32]=20 [33]=21 [34]=4 [35]=22 [36]=23 [37]=24 [38]=25 [39]=26 [41]=27 [42]=28 [43]=29 [44]=30 [45]=31 [47]=32 [49]=33 [50]=34 [51]=35 [52]=36 [53]=37 [55]=38 [56]=39 [58]=40 [59]=41 [63]=42 [70]=43 [72]=44 [74]=45 [75]=46 [76]=46 [77]=47 [78]=48 [80]=49 [81]=50 [82]=51 [83]=52 [84]=53 [85]=54 [86]=55 [87]=56 [88]=57 [89]=58 [90]=59 [91]=60 [92]=61 [93]=62 [95]=63 [96]=64 [97]=65 [98]=66 [100]=67 [101]=68 [102]=4 [103]=69 [104]=70 [107]=71 [108]=72 [109]=73 [111]=74 [113]=75 [115]=76 [116]=77 [117]=78 [118]=79 [119]=80 [120]=81 [121]=82 [122]=83 [123]=84 [124]=85 [125]=86 [126]=87 [127]=88 [128]=89 [129]=90 [130]=91 [132]=92 [133]=93 [134]=94 [136]=95 [137]=96 [139]=97 [140]=98 [142]=99 [143]=100 [145]=101 [146]=102 [147]=103 [148]=104 [149]=105 [150]=106 [151]=107 [152]=108 [153]=109 [154]=110 [155]=111 [156]=112 [157]=113 [158]=114 [159]=115 [160]=116 [161]=117 [162]=118 [163]=119 [164]=120 [166]=121 [167]=122 [168]=123 [169]=124 [170]=125 [171]=126 [172]=127 [173]=128 [174]=129 [175]=130 [176]=131 [177]=132 [187]=133 [188]=134 [189]=135 [191]=136 [192]=137 [194]=138 [195]=139 [197]=140 [198]=141 [199]=142 [200]=119 [201]=143 [202]=144 [203]=145 [204]=146 [205]=147 [206]=148 [207]=149 [211]=150 [212]=151 [213]=152 [214]=153 [215]=154 [216]=155 [217]=156 [218]=157 [219]=158 [220]=159 [221]=160 [222]=161 [223]=162 [224]=163 [225]=164 [226]=165 [227]=166 [228]=167 [229]=168 [230]=169 [231]=170 [232]=171 [233]=172 [234]=173 [235]=174 [236]=175 [237]=176 [238]=177 [240]=178 [241]=179 [242]=180 [243]=181 [244]=182 [245]=183 [246]=184 [247]=185 [248]=186 [249]=187 [250]=188 [251]=189 [252]=190 [253]=191 [254]=192 [255]=193 [256]=194 [257]=195 [258]=196 [259]=197 [260]=198 [263]=199 [265]=200 [266]=201 [267]=202 [268]=203 [269]=4 [270]=204 [271]=205 [272]=206 [273]=207 [274]=208 [275]=209 [277]=210 [278]=211 [279]=212 [280]=213 [281]=214 [282]=215 [283]=216 [284]=217 [285]=218 [287]=219 [288]=220 [290]=221 [292]=222 [293]=223)
    declare -a regexes=()
    declare -A literal_transitions=()
    literal_transitions[1]="([1]=2 [14]=3 [27]=4 [35]=5 [36]=5 [37]=6 [43]=7 [51]=8 [73]=9 [83]=10 [96]=11 [103]=12 [115]=13 [122]=14 [126]=15 [150]=16 [168]=5 [169]=17 [187]=18 [202]=5 [203]=19 [211]=20 [219]=21 [227]=22 [232]=23 [247]=24 [251]=25 [259]=26 [260]=27 [263]=28 [270]=29 [271]=30 [293]=5)"
    literal_transitions[2]="([2]=123 [3]=123 [4]=123 [5]=123 [6]=124 [7]=124 [8]=124 [9]=124 [10]=124 [11]=124 [12]=125 [13]=125)"
    literal_transitions[3]="([3]=40 [7]=41 [8]=41 [9]=41 [11]=42 [15]=41 [16]=41 [17]=41 [18]=41 [19]=40 [20]=43 [21]=41 [22]=41 [23]=41 [24]=42 [25]=41 [26]=41)"
    literal_transitions[4]="([28]=90 [29]=90 [30]=90 [31]=90 [32]=90 [33]=90 [269]=90)"
    literal_transitions[6]="([8]=44 [9]=44 [11]=45 [13]=44 [22]=45 [38]=44 [39]=44 [40]=44 [41]=45 [42]=45)"
    literal_transitions[7]="([8]=35 [9]=35 [11]=36 [18]=37 [22]=38 [44]=38 [45]=39 [46]=39 [47]=37 [48]=37 [49]=37 [50]=36)"
    literal_transitions[8]="([8]=91 [9]=91 [11]=92 [13]=93 [26]=91 [40]=94 [46]=95 [52]=95 [53]=96 [54]=96 [55]=92 [56]=97 [57]=97 [58]=94 [59]=93 [63]=98 [64]=98 [70]=94 [71]=94 [72]=91)"
    literal_transitions[9]="([74]=5 [75]=5 [76]=5 [77]=5 [78]=5 [79]=104 [80]=5 [81]=5 [82]=5)"
    literal_transitions[10]="([7]=111 [8]=111 [9]=111 [13]=111 [18]=111 [40]=111 [57]=111 [84]=111 [85]=112 [86]=113 [87]=111 [88]=111 [89]=111 [90]=114 [91]=114 [92]=111 [93]=111 [94]=111 [95]=114)"
    literal_transitions[11]="([8]=79 [9]=79 [11]=80 [40]=79 [48]=79 [97]=79 [98]=81 [99]=81 [100]=80 [101]=79 [102]=79)"
    literal_transitions[12]="([8]=99 [9]=99 [54]=100 [64]=101 [99]=99 [104]=101 [107]=100 [108]=99 [109]=102 [110]=102 [111]=99 [112]=99 [113]=103 [114]=103)"
    literal_transitions[13]="([8]=115 [9]=115 [11]=116 [13]=117 [48]=115 [54]=118 [57]=115 [99]=119 [116]=115 [117]=118 [118]=119 [119]=116 [120]=115 [121]=117)"
    literal_transitions[14]="([5]=49 [7]=49 [8]=49 [9]=49 [13]=49 [123]=49 [124]=49 [125]=49)"
    literal_transitions[15]="([3]=71 [8]=72 [9]=72 [11]=72 [13]=72 [22]=73 [40]=72 [46]=74 [54]=75 [64]=76 [99]=77 [127]=71 [128]=73 [129]=74 [130]=72 [131]=72 [132]=75 [133]=77 [134]=72 [135]=72 [136]=72 [137]=72 [138]=72 [139]=72 [140]=72 [141]=72 [142]=72 [143]=72 [144]=72 [145]=76)"
    literal_transitions[16]="([3]=54 [7]=54 [8]=54 [9]=54 [11]=54 [13]=55 [22]=56 [26]=54 [40]=54 [46]=57 [57]=54 [94]=58 [99]=55 [110]=54 [112]=54 [114]=55 [141]=54 [151]=54 [152]=56 [153]=54 [154]=57 [155]=55 [156]=54 [157]=54 [158]=54 [159]=54 [160]=54 [161]=55 [162]=58 [163]=54 [164]=54 [165]=54 [166]=54 [167]=55)"
    literal_transitions[17]="([5]=120 [7]=120 [8]=120 [9]=120 [13]=120 [22]=120 [40]=121 [48]=120 [54]=121 [64]=122 [170]=120 [171]=120 [172]=120 [173]=120 [174]=121 [175]=121 [176]=120 [177]=122)"
    literal_transitions[18]="([3]=105 [7]=105 [8]=106 [9]=106 [13]=107 [26]=106 [46]=108 [54]=105 [64]=106 [138]=106 [188]=105 [189]=106 [190]=106 [191]=105 [192]=109 [193]=109 [194]=108 [195]=110 [196]=110 [197]=105 [198]=106 [199]=107 [200]=106 [201]=106)"
    literal_transitions[19]="([3]=50 [8]=50 [9]=50 [48]=51 [54]=52 [135]=53 [204]=50 [205]=51 [206]=52 [207]=53)"
    literal_transitions[20]="([8]=31 [9]=31 [13]=31 [26]=31 [46]=32 [48]=33 [64]=31 [110]=31 [165]=31 [212]=32 [213]=33 [214]=31 [215]=31 [216]=31 [217]=31 [218]=31)"
    literal_transitions[21]="([3]=69 [8]=69 [9]=69 [18]=69 [22]=69 [26]=69 [54]=70 [57]=69 [110]=69 [220]=69 [221]=69 [222]=70 [223]=69 [224]=69 [225]=69 [226]=69)"
    literal_transitions[22]="([228]=85 [229]=85)"
    literal_transitions[23]="([3]=86 [7]=86 [8]=86 [9]=86 [11]=87 [13]=86 [40]=86 [46]=88 [48]=86 [54]=87 [64]=86 [94]=86 [135]=89 [165]=86 [233]=86 [234]=86 [235]=88 [236]=86 [237]=87 [238]=86 [264]=86 [240]=89 [241]=87 [242]=86 [243]=86 [244]=86 [245]=86 [246]=86)"
    literal_transitions[24]="([8]=34 [9]=34 [22]=34 [40]=34 [48]=34 [248]=34 [249]=34 [250]=34)"
    literal_transitions[25]="([8]=82 [9]=82 [22]=82 [26]=82 [54]=83 [110]=82 [135]=82 [252]=82 [253]=84 [254]=82 [255]=83 [256]=82 [257]=82 [258]=82)"
    literal_transitions[27]="([261]=26 [262]=26)"
    literal_transitions[28]="([8]=46 [46]=47 [102]=46 [112]=46 [135]=48 [264]=46 [265]=46 [266]=47 [267]=48 [268]=48 [269]=46)"
    literal_transitions[30]="([3]=59 [7]=59 [8]=60 [9]=60 [11]=61 [13]=62 [18]=59 [22]=59 [54]=63 [64]=64 [99]=63 [110]=65 [131]=62 [165]=61 [272]=59 [273]=59 [274]=59 [275]=59 [276]=59 [277]=63 [278]=65 [279]=61 [280]=62 [281]=62 [282]=64 [283]=66 [284]=59 [285]=59 [286]=59 [287]=63 [288]=65 [289]=65 [290]=61)"
    literal_transitions[31]="([8]=31 [9]=31 [13]=31 [26]=31 [46]=32 [48]=33 [64]=31 [110]=31 [165]=31 [212]=32 [213]=33 [214]=31 [215]=31 [216]=31 [217]=31 [218]=31)"
    literal_transitions[34]="([8]=34 [9]=34 [22]=34 [40]=34 [48]=34 [248]=34 [249]=34 [250]=34)"
    literal_transitions[35]="([8]=35 [9]=35 [11]=36 [18]=37 [22]=38 [44]=38 [45]=39 [46]=39 [47]=37 [48]=37 [49]=37 [50]=36)"
    literal_transitions[41]="([3]=40 [7]=41 [8]=41 [9]=41 [11]=42 [15]=41 [16]=41 [17]=41 [18]=41 [19]=40 [20]=43 [21]=41 [22]=41 [23]=41 [24]=42 [25]=41 [26]=41)"
    literal_transitions[44]="([8]=44 [9]=44 [11]=45 [13]=44 [22]=45 [38]=44 [39]=44 [40]=44 [41]=45 [42]=45)"
    literal_transitions[46]="([8]=46 [46]=47 [102]=46 [112]=46 [135]=48 [264]=46 [265]=46 [266]=47 [267]=48 [268]=48 [269]=46)"
    literal_transitions[49]="([5]=49 [7]=49 [8]=49 [9]=49 [13]=49 [123]=49 [124]=49 [125]=49)"
    literal_transitions[50]="([3]=50 [8]=50 [9]=50 [48]=51 [54]=52 [135]=53 [204]=50 [205]=51 [206]=52 [207]=53)"
    literal_transitions[53]="([208]=50 [209]=50 [210]=50)"
    literal_transitions[54]="([3]=54 [7]=54 [8]=54 [9]=54 [11]=54 [13]=55 [22]=56 [26]=54 [40]=54 [46]=57 [57]=54 [94]=58 [99]=55 [110]=54 [112]=54 [114]=55 [141]=54 [151]=54 [152]=56 [153]=54 [154]=57 [155]=55 [156]=54 [157]=54 [158]=54 [159]=54 [160]=54 [161]=55 [162]=58 [163]=54 [164]=54 [165]=54 [166]=54 [167]=55)"
    literal_transitions[59]="([3]=59 [7]=59 [8]=60 [9]=60 [11]=61 [13]=62 [18]=59 [22]=59 [54]=63 [64]=64 [99]=63 [110]=65 [131]=62 [165]=61 [272]=59 [273]=59 [274]=59 [275]=59 [276]=59 [277]=63 [278]=65 [279]=61 [280]=62 [281]=62 [282]=64 [283]=66 [284]=59 [285]=59 [286]=59 [287]=63 [288]=65 [289]=65 [290]=61)"
    literal_transitions[60]="([291]=67)"
    literal_transitions[67]="([292]=68)"
    literal_transitions[69]="([3]=69 [8]=69 [9]=69 [18]=69 [22]=69 [26]=69 [54]=70 [57]=69 [110]=69 [220]=69 [221]=69 [222]=70 [223]=69 [224]=69 [225]=69 [226]=69)"
    literal_transitions[72]="([3]=71 [8]=72 [9]=72 [11]=72 [13]=72 [22]=73 [40]=72 [46]=74 [54]=75 [64]=76 [99]=77 [127]=71 [128]=73 [129]=74 [130]=72 [131]=72 [132]=75 [133]=77 [134]=72 [135]=72 [136]=72 [137]=72 [138]=72 [139]=72 [140]=72 [141]=72 [142]=72 [143]=72 [144]=72 [145]=76)"
    literal_transitions[76]="([146]=72 [147]=72 [148]=72 [149]=72)"
    literal_transitions[79]="([8]=79 [9]=79 [11]=80 [40]=79 [48]=79 [97]=79 [98]=81 [99]=81 [100]=80 [101]=79 [102]=79)"
    literal_transitions[82]="([8]=82 [9]=82 [22]=82 [26]=82 [54]=83 [110]=82 [135]=82 [252]=82 [253]=84 [254]=82 [255]=83 [256]=82 [257]=82 [258]=82)"
    literal_transitions[85]="([269]=5 [230]=5 [231]=5)"
    literal_transitions[86]="([3]=86 [7]=86 [8]=86 [9]=86 [11]=87 [13]=86 [40]=86 [46]=88 [48]=86 [54]=87 [64]=86 [94]=86 [135]=89 [165]=86 [233]=86 [234]=86 [235]=88 [236]=86 [237]=87 [238]=86 [264]=86 [240]=89 [241]=87 [242]=86 [243]=86 [244]=86 [245]=86 [246]=86)"
    literal_transitions[90]="([28]=90 [29]=90 [30]=90 [31]=90 [32]=90 [33]=90 [269]=90)"
    literal_transitions[91]="([8]=91 [9]=91 [11]=92 [13]=93 [26]=91 [40]=94 [46]=95 [52]=95 [53]=96 [54]=96 [55]=92 [56]=97 [57]=97 [58]=94 [59]=93 [63]=98 [64]=98 [70]=94 [71]=94 [72]=91)"
    literal_transitions[93]="([60]=91 [61]=91 [62]=91)"
    literal_transitions[98]="([65]=91 [66]=91 [67]=91 [68]=91 [69]=91)"
    literal_transitions[99]="([8]=99 [9]=99 [54]=100 [64]=101 [99]=99 [104]=101 [107]=100 [108]=99 [109]=102 [110]=102 [111]=99 [112]=99 [113]=103 [114]=103)"
    literal_transitions[101]="([105]=99 [106]=99)"
    literal_transitions[106]="([3]=105 [7]=105 [8]=106 [9]=106 [13]=107 [26]=106 [46]=108 [54]=105 [64]=106 [138]=106 [188]=105 [189]=106 [190]=106 [191]=105 [192]=109 [193]=109 [194]=108 [195]=110 [196]=110 [197]=105 [198]=106 [199]=107 [200]=106 [201]=106)"
    literal_transitions[111]="([7]=111 [8]=111 [9]=111 [13]=111 [18]=111 [40]=111 [57]=111 [84]=111 [85]=112 [86]=113 [87]=111 [88]=111 [89]=111 [90]=114 [91]=114 [92]=111 [93]=111 [94]=111 [95]=114)"
    literal_transitions[115]="([8]=115 [9]=115 [11]=116 [13]=117 [48]=115 [54]=118 [57]=115 [99]=119 [116]=115 [117]=118 [118]=119 [119]=116 [120]=115 [121]=117)"
    literal_transitions[120]="([5]=120 [7]=120 [8]=120 [9]=120 [13]=120 [22]=120 [40]=121 [48]=120 [54]=121 [64]=122 [170]=120 [171]=120 [172]=120 [173]=120 [174]=121 [175]=121 [176]=120 [177]=122)"
    literal_transitions[122]="([178]=120 [179]=120 [180]=120 [181]=120 [182]=120 [183]=120 [184]=120 [185]=120 [186]=120)"
    literal_transitions[124]="([2]=123 [3]=123 [4]=123 [5]=123 [6]=124 [7]=124 [8]=124 [9]=124 [10]=124 [11]=124 [12]=125 [13]=125)"
    declare -A nontail_transitions=()
    declare -A match_anything_transitions=([40]=41 [26]=5 [38]=35 [42]=41 [37]=35 [47]=46 [57]=54 [55]=54 [63]=59 [64]=59 [65]=59 [68]=59 [66]=59 [70]=69 [45]=44 [71]=72 [77]=72 [75]=72 [73]=72 [74]=72 [29]=78 [78]=5 [36]=35 [80]=79 [81]=79 [83]=82 [84]=82 [87]=86 [88]=86 [86]=5 [89]=86 [95]=91 [96]=91 [97]=91 [92]=91 [94]=91 [43]=41 [100]=99 [103]=99 [102]=99 [52]=50 [104]=5 [32]=31 [48]=46 [56]=54 [61]=59 [109]=106 [110]=106 [105]=106 [108]=106 [107]=106 [51]=50 [114]=111 [112]=111 [113]=111 [58]=54 [62]=59 [116]=115 [118]=115 [117]=115 [119]=115 [121]=120 [33]=31 [123]=124 [125]=124 [39]=35)
    declare -A subword_transitions=()

    declare state=1
    declare word_index=2
    while [[ $word_index -lt $CURRENT ]]; do
        if [[ -v "literal_transitions[$state]" ]]; then
            eval "declare -A state_transitions=${literal_transitions[$state]}"

            declare word=${words[$word_index]}
            declare word_matched=0
            for ((literal_id = 1; literal_id <= $#literals; literal_id++)); do
                if [[ ${literals[$literal_id]} = "$word" ]]; then
                    if [[ -v "state_transitions[$literal_id]" ]]; then
                        state=${state_transitions[$literal_id]}
                        word_index=$((word_index + 1))
                        word_matched=1
                        break
                    fi
                fi
            done
            if [[ $word_matched -ne 0 ]]; then
                continue
            fi
        fi

        if [[ -v "nontail_transitions[$state]" ]]; then
            eval "declare -A state_nontails=${nontail_transitions[$state]}"
            declare nontail_matched=0
            for regex_id in "${(k)state_nontails}"; do
                declare regex="^(${regexes[$regex_id]}).*"
                if [[ ${subword} =~ $regex && -n ${match[1]} ]]; then
                    match="${match[1]}"
                    match_len=${#match}
                    char_index=$((char_index + match_len))
                    state=${state_nontails[$regex_id]}
                    nontail_matched=1
                    break
                fi
            done
            if [[ $nontail_matched -ne 0 ]]; then
                continue
            fi
        fi


        if [[ -v "match_anything_transitions[$state]" ]]; then
            state=${match_anything_transitions[$state]}
            word_index=$((word_index + 1))
            continue
        fi

        return 1
    done

    declare -A literal_transitions_level_0=([7]="8 44 45 47 49 50" [16]="8 151 152 153 154 155 156 157 158 159 160 161 162 163 164 166 167" [54]="8 151 152 153 154 155 156 157 158 159 160 161 162 163 164 166 167" [76]="146 147 148 149" [50]="8 204 205 206 207" [24]="8 248 249 250" [53]="208 209 210" [3]="8 15 17 19 20 21 23 24 25" [124]="2 4 6 8 10 12" [34]="8 248 249 250" [9]="74 75 76 77 78 79 80 81 82" [2]="2 4 6 8 10 12" [122]="178 179 180 181 182 183 184 185 186" [44]="8 38 39 41 42" [79]="8 97 98 100 101 102" [91]="8 52 53 55 56 58 59 63 70 72" [59]="8 272 273 274 275 277 278 279 280 281 282 283 284 285 287 288 290" [99]="8 104 107 108 109 111 113" [67]="292" [72]="8 127 128 129 130 132 133 134 136 137 139 140 142 143 145" [22]="228 229" [4]="28 29 30 31 32 33 269" [41]="8 15 17 19 20 21 23 24 25" [11]="8 97 98 100 101 102" [49]="8 123 124 125" [27]="261 262" [93]="60 61 62" [46]="8 102 264 265 266 267 268" [1]="1 14 27 35 36 37 43 51 73 83 96 103 115 122 126 150 168 169 187 202 203 211 219 227 232 247 251 259 260 263 270 271 293" [85]="269 230 231" [86]="8 233 234 235 236 237 238 240 241 242 243 244 245 246" [106]="8 188 189 191 192 194 195 197 198 199 200 201" [120]="8 170 171 172 173 174 175 176 177" [21]="8 220 221 222 223 224 225 226" [18]="8 188 189 191 192 194 195 197 198 199 200 201" [19]="8 204 205 206 207" [82]="8 252 253 254 255 256 257 258" [98]="65 66 67 68 69" [25]="8 252 253 254 255 256 257 258" [10]="8 84 85 86 87 88 89 90 91 92 93 95" [30]="8 272 273 274 275 277 278 279 280 281 282 283 284 285 287 288 290" [14]="8 123 124 125" [15]="8 127 128 129 130 132 133 134 136 137 139 140 142 143 145" [90]="28 29 30 31 32 33 269" [8]="8 52 53 55 56 58 59 63 70 72" [60]="291" [35]="8 44 45 47 49 50" [6]="8 38 39 41 42" [20]="8 212 213 214 215 216 217 218" [23]="8 233 234 235 236 237 238 240 241 242 243 244 245 246" [101]="105 106" [13]="8 116 117 118 119 120 121" [31]="8 212 213 214 215 216 217 218" [12]="8 104 107 108 109 111 113" [111]="8 84 85 86 87 88 89 90 91 92 93 95" [69]="8 220 221 222 223 224 225 226" [28]="8 102 264 265 266 267 268" [17]="8 170 171 172 173 174 175 176 177" [115]="8 116 117 118 119 120 121")
    declare -A literal_transitions_level_1=([7]="9 11 18 22 46 48" [16]="3 7 9 11 13 22 26 40 46 57 94 99 110 112 114 141 165" [54]="3 7 9 11 13 22 26 40 46 57 94 99 110 112 114 141 165" [46]="46 112 135 269" [86]="3 7 9 11 13 40 46 48 54 64 94 135 165 264" [106]="3 7 9 13 26 46 54 64 138 190 193 196" [50]="3 9 48 54 135" [24]="9 22 40 48" [120]="5 7 9 13 22 40 48 54 64" [21]="3 9 18 22 26 54 57 110" [18]="3 7 9 13 26 46 54 64 138 190 193 196" [3]="3 7 9 11 16 18 22 26" [19]="3 9 48 54 135" [124]="3 5 7 9 11 13" [34]="9 22 40 48" [82]="9 22 26 54 110 135" [10]="7 9 13 18 40 57 94" [25]="9 22 26 54 110 135" [30]="3 7 9 11 13 18 22 54 64 99 110 131 165 276 286 289" [14]="5 7 9 13" [15]="3 9 11 13 22 40 46 54 64 99 131 135 138 141 144" [2]="3 5 7 9 11 13" [8]="9 11 13 26 40 46 54 57 64 71" [44]="9 11 13 22 40" [35]="9 11 18 22 46 48" [6]="9 11 13 22 40" [20]="9 13 26 46 48 64 110 165" [23]="3 7 9 11 13 40 46 48 54 64 94 135 165 264" [79]="9 11 40 48 99" [91]="9 11 13 26 40 46 54 57 64 71" [59]="3 7 9 11 13 18 22 54 64 99 110 131 165 276 286 289" [99]="9 54 64 99 110 112 114" [13]="9 11 13 48 54 57 99" [31]="9 13 26 46 48 64 110 165" [12]="9 54 64 99 110 112 114" [111]="7 9 13 18 40 57 94" [69]="3 9 18 22 26 54 57 110" [28]="46 112 135 269" [72]="3 9 11 13 22 40 46 54 64 99 131 135 138 141 144" [41]="3 7 9 11 16 18 22 26" [17]="5 7 9 13 22 40 48 54 64" [11]="9 11 40 48 99" [49]="5 7 9 13" [115]="9 11 13 48 54 57 99")
    declare -A subword_transitions_level_0=()
    declare -A subword_transitions_level_1=()
    declare -A commands_level_0=()
    declare -A commands_level_1=()
    declare -A nontail_commands_level_0=()
    declare -A nontail_regexes_level_0=()
    declare -A nontail_commands_level_1=()
    declare -A nontail_regexes_level_1=()
    declare -A specialized_commands_level_0=([107]="0" [33]="0" [86]="0" [103]="0" [26]="0" [55]="0" [51]="0" [94]="0" [48]="0" [42]="0")
    declare -A specialized_commands_level_1=()

    declare max_fallback_level=1
    for (( fallback_level=0; fallback_level <= max_fallback_level; fallback_level++ )); do
        completions_no_description_trailing_space=()
        completions_no_description_no_trailing_space=()
        completions_trailing_space=()
        suffixes_trailing_space=()
        descriptions_trailing_space=()
        completions_no_trailing_space=()
        suffixes_no_trailing_space=()
        descriptions_no_trailing_space=()
        matches=()

        declare literal_transitions_name=literal_transitions_level_${fallback_level}
        eval "declare initializer=\${${literal_transitions_name}[$state]}"
        eval "declare -a transitions=($initializer)"
        for literal_id in "${transitions[@]}"; do
            if [[ -v "descr_id_from_literal_id[$literal_id]" ]]; then
                declare descr_id=$descr_id_from_literal_id[$literal_id]
                completions_trailing_space+=("${literals[$literal_id]}")
                suffixes_trailing_space+=("${literals[$literal_id]}")
                descriptions_trailing_space+=("${descrs[$descr_id]}")
            else
                completions_no_description_trailing_space+=("${literals[$literal_id]}")
            fi
        done

        declare subword_transitions_name=subword_transitions_level_${fallback_level}
        eval "declare initializer=\${${subword_transitions_name}[$state]}"
        eval "declare -a transitions=($initializer)"
        for subword_id in "${transitions[@]}"; do
            _dspace_subword_${subword_id} complete "${words[$CURRENT]}"
            completions_no_description_trailing_space+=("${subword_completions_no_description_trailing_space[@]}")
            completions_trailing_space+=("${subword_completions_trailing_space[@]}")
            completions_no_trailing_space+=("${subword_completions_no_trailing_space[@]}")
            suffixes_no_trailing_space+=("${subword_suffixes_no_trailing_space[@]}")
            suffixes_trailing_space+=("${subword_suffixes_trailing_space[@]}")
            descriptions_trailing_space+=("${subword_descriptions_trailing_space[@]}")
            descriptions_no_trailing_space+=("${subword_descriptions_no_trailing_space[@]}")
        done

        declare commands_name=commands_level_${fallback_level}
        eval "declare initializer=\${${commands_name}[$state]}"
        eval "declare -a transitions=($initializer)"
        for command_id in "${transitions[@]}"; do
            declare output=$(_dspace_cmd_${command_id} "${words[$CURRENT]}")
            declare -a command_completions=("${(@f)output}")
            for line in ${command_completions[@]}; do
                declare parts=(${(@s:	:)line})
                if [[ -v "parts[2]" ]]; then
                    completions_trailing_space+=("${parts[1]}")
                    suffixes_trailing_space+=("${parts[1]}")
                    descriptions_trailing_space+=("${parts[2]}")
                else
                    completions_no_description_trailing_space+=("${parts[1]}")
                fi
            done
        done

        declare commands_name=nontail_commands_level_${fallback_level}
        eval "declare command_initializer=\${${commands_name}[$state]}"
        eval "declare -a command_transitions=($command_initializer)"
        declare regexes_name=nontail_regexes_level_${fallback_level}
        eval "declare regexes_initializer=\${${regexes_name}[$state]}"
        eval "declare -a regexes_transitions=($regexes_initializer)"
        for (( i=1; i <= ${#command_transitions[@]}; i++ )); do
            declare command_id=${command_transitions[$i]}
            declare regex_id=${regexes_transitions[$i]}
            declare regex="^(${regexes[$regex_id]}).*"
            declare output=$(_dspace_cmd_${command_id} "${words[$CURRENT]}")
            declare -a command_completions=("${(@f)output}")
            for line in ${command_completions[@]}; do
                declare parts=(${(@s:	:)line})
                if [[ ${parts[1]} =~ $regex && -n ${match[1]} ]]; then
                    parts[1]=${match[1]}
                    if [[ -v "parts[2]" ]]; then
                        completions_trailing_space+=("${parts[1]}")
                        suffixes_trailing_space+=("${parts[1]}")
                        descriptions_trailing_space+=("${parts[2]}")
                    else
                        completions_no_description_trailing_space+=("${parts[1]}")
                    fi
                fi
            done
        done

        declare specialized_commands_name=specialized_commands_level_${fallback_level}
        eval "declare initializer=\${${specialized_commands_name}[$state]}"
        eval "declare -a transitions=($initializer)"
        for command_id in "${transitions[@]}"; do
            _dspace_cmd_${command_id} ${words[$CURRENT]}
        done

        declare maxlen=0
        for suffix in ${suffixes_trailing_space[@]}; do
            if [[ ${#suffix} -gt $maxlen ]]; then
                maxlen=${#suffix}
            fi
        done
        for suffix in ${suffixes_no_trailing_space[@]}; do
            if [[ ${#suffix} -gt $maxlen ]]; then
                maxlen=${#suffix}
            fi
        done

        for ((i = 1; i <= $#suffixes_trailing_space; i++)); do
            if [[ -z ${descriptions_trailing_space[$i]} ]]; then
                descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}}"
            else
                descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}} -- ${descriptions_trailing_space[$i]}"
            fi
        done

        for ((i = 1; i <= $#suffixes_no_trailing_space; i++)); do
            if [[ -z ${descriptions_no_trailing_space[$i]} ]]; then
                descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}}"
            else
                descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}} -- ${descriptions_no_trailing_space[$i]}"
            fi
        done

        compadd -O m -a completions_no_description_trailing_space; matches+=("${m[@]}")
        compadd -O m -a completions_no_description_no_trailing_space; matches+=("${m[@]}")
        compadd -O m -a completions_trailing_space; matches+=("${m[@]}")
        compadd -O m -a completions_no_trailing_space; matches+=("${m[@]}")

        if [[ ${#matches} -gt 0 ]]; then
            compadd -Q -a completions_no_description_trailing_space
            compadd -Q -S ' ' -a completions_no_description_no_trailing_space
            compadd -l -Q -a -d descriptions_trailing_space completions_trailing_space
            compadd -l -Q -S '' -a -d descriptions_no_trailing_space completions_no_trailing_space
            return 0
        fi
    done
}

if [[ $ZSH_EVAL_CONTEXT =~ :file$ ]]; then
    compdef _dspace dspace
else
    _dspace
fi
