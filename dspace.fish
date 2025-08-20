function _dspace_cmd_0
    set 1 $argv[1]
    __fish_complete_path "$1"
end

function __complgen_match
    set prefix $argv[1]

    set candidates
    set descriptions
    while read c
        set a (string split --max 1 -- "	" $c)
        set --append candidates $a[1]
        if set --query a[2]
            set --append descriptions $a[2]
        else
            set --append descriptions ""
        end
    end

    if test -z "$candidates"
        return 1
    end

    set escaped_prefix (string escape --style=regex -- $prefix)
    set regex "^$escaped_prefix.*"

    set matches_case_sensitive
    set descriptions_case_sensitive
    for i in (seq 1 (count $candidates))
        if string match --regex --quiet --entire -- $regex $candidates[$i]
            set --append matches_case_sensitive $candidates[$i]
            set --append descriptions_case_sensitive $descriptions[$i]
        end
    end

    if set --query matches_case_sensitive[1]
        for i in (seq 1 (count $matches_case_sensitive))
            printf '%s	%s\n' $matches_case_sensitive[$i] $descriptions_case_sensitive[$i]
        end
        return 0
    end

    set matches_case_insensitive
    set descriptions_case_insensitive
    for i in (seq 1 (count $candidates))
        if string match --regex --quiet --ignore-case --entire -- $regex $candidates[$i]
            set --append matches_case_insensitive $candidates[$i]
            set --append descriptions_case_insensitive $descriptions[$i]
        end
    end

    if set --query matches_case_insensitive[1]
        for i in (seq 1 (count $matches_case_insensitive))
            printf '%s	%s\n' $matches_case_insensitive[$i] $descriptions_case_insensitive[$i]
        end
        return 0
    end

    return 1
end


function _dspace
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set literals bitstore-migrate --source -a --destination -b --delete -d --help -h --print -p --size -s checker --continuous -L --looping -l --handle -b --count -c --duration --prune --verbose -v checker-emailer -a -d -m -c -u -n -h classpath cleanup community-filiator --set --remote -r --child --parent create-administrator --language --email -e --first -f --last --password curate --eperson --id -i --parameter --queue -q --reporter --scope object curation open --task -t noop profileformats requiredmetadata checklinks registerdoi --taskfile -T --verbose database test info status migrate repair skip validate update-sequences clean doi-organiser --delete-all --delete-doi --filter --list --quiet --register-all --register-doi --reserve-doi --reserve-all --update-all -u --update-doi dsprop --first --module -m --property --raw -? export --type ITEM COLLECTION --id --migrate --number -n --exclude-bitstreams -x --zip -z filter-media --force --identifier --maximum --plugins --quiet --skip generate-sitemaps --no_htmlmap --delete --no_sitemaps harvest --address --collection --eperson --ping -g --oai_set_id --metadata_format --reimport -o --purge --purgeCollections -P --run --reset -R --setup --start -S --type 0 1 2 3 import --add --collection --delete --eperson --mapfile --notify --template --quiet --replace --resume --source --url --validate --workflow -w --exclude-bitstreams --zip index-authority index-discovery --build --clean --delete --force --index --remove --spellchecker --type ClaimedTask Collection Community Item PoolTask XmlWorkflowItem WorkspaceItem MetadataField LDNMessageEntity itemupdate --addmetadata --addbitstreams -A --deletemetadata --deletebitstreams -D --eperson --filter-properties -F --itemfield --provenance --source --test --verbose make-handle-config metadata-export --all --file --id --output-format csv bibtex ris metadata-import --email --file --notify --silent --template --validate-only --workflow migrate-embargo --adjust --check --id --list --dryrun --quiet --verbose oai import clean-cache -c -v packager --all --disseminate --eperson --force-replace --identifier --keep-existing -k --option --parent --restore --submit --type --no-user-interaction --install process-cleaner --completed --failed --runing rdfizer --convert-all --delete --delete-all --identifiers --dry-run --stdout --verbose read registry-loader -bitstream -metadata structure-builder -k --export --eperson --output -f -h update-handle-prefix user --add --delete --list --modify -M --email --netid --password --givenname --surname --telephone --language --requireCertificate --canLogin -C --newEmail --newNetid -I --newPassword dspace validate-date version

    set descrs
    set descrs[1] "Migrate all files (bitstreams) from one assetstore (bitstore) to another"
    set descrs[2] "Source assetstore store_number (to lose content)"
    set descrs[3] "Destination assetstore store_number (to gain content)"
    set descrs[4] "Delete file from losing assetstore. (Default: Keep bitstream in old assetstore)"
    set descrs[5] Help
    set descrs[6] "Print out current assetstore information"
    set descrs[7] "Batch commit size. (Default: 1, commit after each file transfer)"
    set descrs[8] "Run the checksum checker"
    set descrs[9] "Loop continuously through the bitstreams"
    set descrs[10] "Loop once through bitstreams"
    set descrs[11] "Specify a handle to check"
    set descrs[12] "Space separated list of bitstream IDs"
    set descrs[13] "Check count"
    set descrs[14] "Checking duration"
    set descrs[15] "Prune old results"
    set descrs[16] "Report all processing"
    set descrs[17] "Send all the results"
    set descrs[18] "Send E-mail report for all bitstreams set as deleted for today"
    set descrs[19] "Send E-mail report for all bitstreams not found in assetstore for today"
    set descrs[20] "Send E-mail report for all bitstreams where checksum has been changed for today"
    set descrs[21] "Send the Unchecked bitstream report"
    set descrs[22] "Send E-mail report for all bitstreams set to longer be processed for today"
    set descrs[23] "Calculate and display the DSpace classpath"
    set descrs[24] "Remove deleted bitstreams from the assetstore"
    set descrs[25] "Tool to manage community and sub-community relationships"
    set descrs[26] "Set a parent/child relationship"
    set descrs[27] "Remove a parent/child relationship"
    set descrs[28] "Child community"
    set descrs[29] "Parent community"
    set descrs[30] "Create a DSpace administrator account"
    set descrs[31] "Administrator language"
    set descrs[32] "Administrator email address"
    set descrs[33] "Administrator first name"
    set descrs[34] "Administrator last name"
    set descrs[35] "Administrator password"
    set descrs[36] "Perform curation tasks on DSpace objects"
    set descrs[37] "Email address of curating eperson"
    set descrs[38] "Id (handle) of object to perform task on, or 'all' to perform on whole repository"
    set descrs[39] "A task parameter 'NAME=VALUE'"
    set descrs[40] "Name of task queue to process"
    set descrs[41] "Path to desired report file"
    set descrs[42] "Transaction scope to impose"
    set descrs[43] "Curation task name"
    set descrs[44] "File containing curation task names"
    set descrs[45] "Report activity to stdout"
    set descrs[46] "Performs a test connection to database to validate connection settings"
    set descrs[47] "Describe basic info/status about database, including validating the compatibility of this database"
    set descrs[48] "Migrate the database to the latest version"
    set descrs[49] "Attempt to repair any previously failed database migrations or checksum mismatches"
    set descrs[50] "Validate current database's migration status"
    set descrs[51] "Update database sequences after running AIP ingest"
    set descrs[52] "DESTROY all data and tables in database (WARNING there is no going back!)"
    set descrs[53] "Transmit information about DOIs to the registration agency"
    set descrs[54] "Perform online deletion for all identifiers queued for deletion"
    set descrs[55] "Delete a specified identifier"
    set descrs[56] "Use the specified filter name instead of the provider's filter"
    set descrs[57] "List all objects to be reserved, registered, deleted or updated"
    set descrs[58] "Turn the command line output off"
    set descrs[59] "Perform online registration for all identifiers queued for registration"
    set descrs[60] "Register a specified identifier"
    set descrs[61] "Reserve a specified identifier online"
    set descrs[62] "Perform online reservation for all identifiers queued for reservation"
    set descrs[63] "Perform online metadata update for all identifiers queued for metadata update"
    set descrs[64] "Update online an object"
    set descrs[65] "Display the value of a DSpace configuration property"
    set descrs[66] "Display only the first value of an array property"
    set descrs[67] "Name of the module in which property exists"
    set descrs[68] "Name of the desired property"
    set descrs[69] "Do not do property substitution on the value"
    set descrs[70] "Export items or collections"
    set descrs[71] "Type of export"
    set descrs[72] "ID or handle of thing to export"
    set descrs[73] "Export for migration"
    set descrs[74] "Sequence number to begin exporting items with"
    set descrs[75] "Do not export bitstreams"
    set descrs[76] "Export as zip file to path"
    set descrs[77] "Perform the media filtering to extract full text from documents and to create thumbnails"
    set descrs[78] "Force all bitstreams to be processed"
    set descrs[79] "Only process bitstreams belonging to the provided handle"
    set descrs[80] "Process no more than maximum items"
    set descrs[81] "Only run the specified Media Filter plugins (comma separated)"
    set descrs[82] "Do not print anything except in the event of errors"
    set descrs[83] "Skip bitstreams belonging to the identifier(s), comma separated"
    set descrs[84] "Generate search engine and html sitemaps"
    set descrs[85] "Do not generate a basic HTML sitemap"
    set descrs[86] "Delete sitemaps dir and its contents"
    set descrs[87] "Do not generate sitemaps.org protocol sitemap"
    set descrs[88] "Manage the OAI-PMH harvesting of external collections"
    set descrs[89] "Address of the OAI-PMH server"
    set descrs[90] "Harvesting collection"
    set descrs[91] "Email address of the Eperson"
    set descrs[92] "Test the OAI server and set"
    set descrs[93] "Id of the PMH set for the harvested collection"
    set descrs[94] "Name of the desired metadata format for harvesting"
    set descrs[95] "Reimport all items in the collection (equivalent to -p -r)"
    set descrs[96] "Delete all items in the collection"
    set descrs[97] "Purge all harvestable collections"
    set descrs[98] "Run the standard harvest procedure"
    set descrs[99] "Reset harvest status on all collections"
    set descrs[100] "Set the collection up for harvesting"
    set descrs[101] "Start the harvest loop"
    set descrs[102] "Type of harvesting"
    set descrs[103] "No harvesting"
    set descrs[104] "Metadata only"
    set descrs[105] "Metadata and bitstream references"
    set descrs[106] "Metadata and bitstreams"
    set descrs[107] "Import items or collections"
    set descrs[108] "Add items to DSpace"
    set descrs[109] "Destination collection(s)"
    set descrs[110] "Delete items listed in mapfile"
    set descrs[111] "Email address of eperson doing the importing"
    set descrs[112] "Mapfile for items"
    set descrs[113] "Send notification emails"
    set descrs[114] "Apply the collection template"
    set descrs[115] "Don't display metadata"
    set descrs[116] "Replace items listed in mapfile"
    set descrs[117] "Resume a failed import"
    set descrs[118] "Source of items"
    set descrs[119] "URL of zip file"
    set descrs[120] "Test run (do not actually import items)"
    set descrs[121] "Send submission through collection's workflow"
    set descrs[122] "Do not load or expect content bitstreams"
    set descrs[123] "Name of zip file"
    set descrs[124] "Import authorities and keep SOLR authority index up to date"
    set descrs[125] "Update Discovery (Solr) search and browse Index"
    set descrs[126] "(Re)build index, wiping out current one if it exists"
    set descrs[127] "Clean existing index, removing documents no longer in the DB"
    set descrs[128] "Delete all records from existing index"
    set descrs[129] "If updating existing index, force each handle to be reindexed even if up-to-date"
    set descrs[130] "Add or update object (handle or UUID)"
    set descrs[131] "Remove an object (handle or UUID)"
    set descrs[132] "Rebuild the spellchecker"
    set descrs[133] "Reindex only specific type of indexable object"
    set descrs[134] "Item update tool for altering metadata and bitstream content in items"
    set descrs[135] "Add metadata specified for each item (semicolon separated)"
    set descrs[136] "Add bitstreams as specified for each item"
    set descrs[137] "Delete metadata specified for each item"
    set descrs[138] "Delete bitstreams as specified for each item"
    set descrs[139] "Email address of eperson doing the update"
    set descrs[140] "Filter class name (only for deleting bitstream)"
    set descrs[141] "Metadata field containing item identifier (default: dc.identifier.uri)"
    set descrs[142] "Suppress altering provenance field for bitstream changes"
    set descrs[143] "Root directory of source DSpace archive"
    set descrs[144] "Verbose logging"
    set descrs[145] "Run the handle server simple setup command"
    set descrs[146] "Export metadata for batch editing"
    set descrs[147] "Include all metadata fields that are not normally changed (e.g. provenance)"
    set descrs[148] "Destination to write the file"
    set descrs[149] "ID or handle of thing to export (item, collection, or community)"
    set descrs[150] "Output format of metadata"
    set descrs[151] "Import metadata after batch editing"
    set descrs[152] "Email address or user ID of user (required if adding new items)"
    set descrs[153] "Source file"
    set descrs[154] "Send notification emails on new items using workflow"
    set descrs[155] "Silent operation (use with caution)"
    set descrs[156] "When adding items, use the collection template"
    set descrs[157] "Just validate the CSV, don't run the import"
    set descrs[158] "When adding items, use the collection workflow"
    set descrs[159] "Embargo manager tool used to migrate old version of Embargo to the new one included in dspace3"
    set descrs[160] "Adjust bitstreams policies"
    set descrs[161] "Do not lift any embargoes, only check status of embargoed items"
    set descrs[162] "Process only these items (by ID)"
    set descrs[163] "Only lift embargoes, do not check the status"
    set descrs[164] "Do not change anything, print messages instead"
    set descrs[165] "Do not print anything except for errors"
    set descrs[166] "Print a line describing action taken for each embargoed Item found"
    set descrs[167] "OAI Manager Script"
    set descrs[168] "Import DSpace items into OAI index and cache system"
    set descrs[169] "Clean the OAI cached responses"
    set descrs[170] "Clear index (import only)"
    set descrs[171] "Verbose output"
    set descrs[172] "Execute a packager"
    set descrs[173] "Also recursively ingrest any child packages (e.g. all items in collection)"
    set descrs[174] "Disseminate package (output)"
    set descrs[175] "Email address of the eperson doing importing"
    set descrs[176] "Replace already existing objects found during a restore (-r) instead of error"
    set descrs[177] "Object to disseminate"
    set descrs[178] "Keep already existing objects found during a restore (-r) instead of error"
    set descrs[179] "Packager option to pass to plugin, name=value"
    set descrs[180] "Handle of parent community or collection to ingest object"
    set descrs[181] "Ingest in restore mode; restore missing object based on package contents"
    set descrs[182] "Submission package (input)"
    set descrs[183] "Package type or MIME type"
    set descrs[184] "Skip over user interaction"
    set descrs[185] "Disable workflow; install immediately without going through collection's workflow"
    set descrs[186] "Delete old Processes from the system"
    set descrs[187] "Delete process with completed status (default)"
    set descrs[188] "Delete process with failed status"
    set descrs[189] "Delete process with running status"
    set descrs[190] "Tool to convert contents to RDF"
    set descrs[191] "Convert all DSpace Objects that are readable anonymously"
    set descrs[192] "Delete previously converted data"
    set descrs[193] "Delete all converted data from the triplestore"
    set descrs[194] "Only convert these Objects"
    set descrs[195] "Don't send any commands or data to the triplestore"
    set descrs[196] "Print all converted data to stdout as turtle"
    set descrs[197] "Print verbose information to stderr while converting"
    set descrs[198] "Execute a stream of commands from a file or pipe"
    set descrs[199] "Load entries into a registry"
    set descrs[200] "Build DSpace community and collection structure"
    set descrs[201] "Export the current structure as XML"
    set descrs[202] "Email address of the eperson doing the operation"
    set descrs[203] "Output XML file"
    set descrs[204] "Source XML file"
    set descrs[205] "Update handle records and metadata when moving from one Handle prefix to another"
    set descrs[206] "Create, List, Update, Delete EPerson (user) records"
    set descrs[207] "Create a new EPerson"
    set descrs[208] "Delete an existing EPerson"
    set descrs[209] "List EPersons"
    set descrs[210] "Modify an EPerson"
    set descrs[211] "Email address for the EPerson (existing, if modifying)"
    set descrs[212] "netid (e.g. from an external directory service; existing, if modifying)"
    set descrs[213] "Password of the created EPerson"
    set descrs[214] "First or given name of the EPerson"
    set descrs[215] "Last or surname of the EPerson"
    set descrs[216] "Telephone number for the EPerson"
    set descrs[217] "Preferred language for the EPerson"
    set descrs[218] "Require X.509 certificate"
    set descrs[219] "Enable or disable account"
    set descrs[220] "New email address for modifying EPerson"
    set descrs[221] "New netid for modifying EPerson"
    set descrs[222] "New password for modifying EPerson"
    set descrs[223] "Test date-time format rules"
    set descrs[224] "Show DSpace version and other troubleshooting information"
    set descr_literal_ids 1 2 4 6 8 10 12 14 15 17 19 20 21 23 24 25 28 29 30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 47 49 50 51 52 53 55 56 58 59 63 70 72 74 75 76 77 78 80 81 82 83 84 85 86 87 88 89 90 91 92 93 95 96 97 98 100 101 102 103 104 107 108 109 111 113 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 132 133 134 136 137 139 140 142 143 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 166 167 168 169 170 171 172 173 174 175 176 177 187 188 189 191 192 194 195 197 198 199 200 201 202 203 204 205 206 207 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 263 265 266 267 268 269 270 271 272 273 274 275 277 278 279 280 281 282 283 284 285 287 288 290 292 293
    set descr_ids 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 5 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 5 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 120 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 5 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224
    set regexes 
    set literal_transitions_inputs
    set nontail_transitions
    set literal_transitions_inputs[1] "1 14 27 35 36 37 43 51 73 83 96 103 115 122 126 150 168 169 187 202 203 211 219 227 232 247 251 259 260 263 270 271 293"
    set literal_transitions_tos[1] "2 3 4 5 5 6 7 8 9 10 11 12 13 14 15 16 5 17 18 5 19 20 21 22 23 24 25 26 27 28 29 30 5"
    set literal_transitions_inputs[2] "2 3 4 5 6 7 8 9 10 11 12 13"
    set literal_transitions_tos[2] "123 123 123 123 124 124 124 124 124 124 125 125"
    set literal_transitions_inputs[3] "3 7 8 9 11 15 16 17 18 19 20 21 22 23 24 25 26"
    set literal_transitions_tos[3] "40 41 41 41 42 41 41 41 41 40 43 41 41 41 42 41 41"
    set literal_transitions_inputs[4] "28 29 30 31 32 33 269"
    set literal_transitions_tos[4] "90 90 90 90 90 90 90"
    set literal_transitions_inputs[6] "8 9 11 13 22 38 39 40 41 42"
    set literal_transitions_tos[6] "44 44 45 44 45 44 44 44 45 45"
    set literal_transitions_inputs[7] "8 9 11 18 22 44 45 46 47 48 49 50"
    set literal_transitions_tos[7] "35 35 36 37 38 38 39 39 37 37 37 36"
    set literal_transitions_inputs[8] "8 9 11 13 26 40 46 52 53 54 55 56 57 58 59 63 64 70 71 72"
    set literal_transitions_tos[8] "91 91 92 93 91 94 95 95 96 96 92 97 97 94 93 98 98 94 94 91"
    set literal_transitions_inputs[9] "74 75 76 77 78 79 80 81 82"
    set literal_transitions_tos[9] "5 5 5 5 5 104 5 5 5"
    set literal_transitions_inputs[10] "7 8 9 13 18 40 57 84 85 86 87 88 89 90 91 92 93 94 95"
    set literal_transitions_tos[10] "111 111 111 111 111 111 111 111 112 113 111 111 111 114 114 111 111 111 114"
    set literal_transitions_inputs[11] "8 9 11 40 48 97 98 99 100 101 102"
    set literal_transitions_tos[11] "79 79 80 79 79 79 81 81 80 79 79"
    set literal_transitions_inputs[12] "8 9 54 64 99 104 107 108 109 110 111 112 113 114"
    set literal_transitions_tos[12] "99 99 100 101 99 101 100 99 102 102 99 99 103 103"
    set literal_transitions_inputs[13] "8 9 11 13 48 54 57 99 116 117 118 119 120 121"
    set literal_transitions_tos[13] "115 115 116 117 115 118 115 119 115 118 119 116 115 117"
    set literal_transitions_inputs[14] "5 7 8 9 13 123 124 125"
    set literal_transitions_tos[14] "49 49 49 49 49 49 49 49"
    set literal_transitions_inputs[15] "3 8 9 11 13 22 40 46 54 64 99 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145"
    set literal_transitions_tos[15] "71 72 72 72 72 73 72 74 75 76 77 71 73 74 72 72 75 77 72 72 72 72 72 72 72 72 72 72 72 76"
    set literal_transitions_inputs[16] "3 7 8 9 11 13 22 26 40 46 57 94 99 110 112 114 141 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167"
    set literal_transitions_tos[16] "54 54 54 54 54 55 56 54 54 57 54 58 55 54 54 55 54 54 56 54 57 55 54 54 54 54 54 55 58 54 54 54 54 55"
    set literal_transitions_inputs[17] "5 7 8 9 13 22 40 48 54 64 170 171 172 173 174 175 176 177"
    set literal_transitions_tos[17] "120 120 120 120 120 120 121 120 121 122 120 120 120 120 121 121 120 122"
    set literal_transitions_inputs[18] "3 7 8 9 13 26 46 54 64 138 188 189 190 191 192 193 194 195 196 197 198 199 200 201"
    set literal_transitions_tos[18] "105 105 106 106 107 106 108 105 106 106 105 106 106 105 109 109 108 110 110 105 106 107 106 106"
    set literal_transitions_inputs[19] "3 8 9 48 54 135 204 205 206 207"
    set literal_transitions_tos[19] "50 50 50 51 52 53 50 51 52 53"
    set literal_transitions_inputs[20] "8 9 13 26 46 48 64 110 165 212 213 214 215 216 217 218"
    set literal_transitions_tos[20] "31 31 31 31 32 33 31 31 31 32 33 31 31 31 31 31"
    set literal_transitions_inputs[21] "3 8 9 18 22 26 54 57 110 220 221 222 223 224 225 226"
    set literal_transitions_tos[21] "69 69 69 69 69 69 70 69 69 69 69 70 69 69 69 69"
    set literal_transitions_inputs[22] "228 229"
    set literal_transitions_tos[22] "85 85"
    set literal_transitions_inputs[23] "3 7 8 9 11 13 40 46 48 54 64 94 135 165 233 234 235 236 237 238 264 240 241 242 243 244 245 246"
    set literal_transitions_tos[23] "86 86 86 86 87 86 86 88 86 87 86 86 89 86 86 86 88 86 87 86 86 89 87 86 86 86 86 86"
    set literal_transitions_inputs[24] "8 9 22 40 48 248 249 250"
    set literal_transitions_tos[24] "34 34 34 34 34 34 34 34"
    set literal_transitions_inputs[25] "8 9 22 26 54 110 135 252 253 254 255 256 257 258"
    set literal_transitions_tos[25] "82 82 82 82 83 82 82 82 84 82 83 82 82 82"
    set literal_transitions_inputs[27] "261 262"
    set literal_transitions_tos[27] "26 26"
    set literal_transitions_inputs[28] "8 46 102 112 135 264 265 266 267 268 269"
    set literal_transitions_tos[28] "46 47 46 46 48 46 46 47 48 48 46"
    set literal_transitions_inputs[30] "3 7 8 9 11 13 18 22 54 64 99 110 131 165 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290"
    set literal_transitions_tos[30] "59 59 60 60 61 62 59 59 63 64 63 65 62 61 59 59 59 59 59 63 65 61 62 62 64 66 59 59 59 63 65 65 61"
    set literal_transitions_inputs[31] "8 9 13 26 46 48 64 110 165 212 213 214 215 216 217 218"
    set literal_transitions_tos[31] "31 31 31 31 32 33 31 31 31 32 33 31 31 31 31 31"
    set literal_transitions_inputs[34] "8 9 22 40 48 248 249 250"
    set literal_transitions_tos[34] "34 34 34 34 34 34 34 34"
    set literal_transitions_inputs[35] "8 9 11 18 22 44 45 46 47 48 49 50"
    set literal_transitions_tos[35] "35 35 36 37 38 38 39 39 37 37 37 36"
    set literal_transitions_inputs[41] "3 7 8 9 11 15 16 17 18 19 20 21 22 23 24 25 26"
    set literal_transitions_tos[41] "40 41 41 41 42 41 41 41 41 40 43 41 41 41 42 41 41"
    set literal_transitions_inputs[44] "8 9 11 13 22 38 39 40 41 42"
    set literal_transitions_tos[44] "44 44 45 44 45 44 44 44 45 45"
    set literal_transitions_inputs[46] "8 46 102 112 135 264 265 266 267 268 269"
    set literal_transitions_tos[46] "46 47 46 46 48 46 46 47 48 48 46"
    set literal_transitions_inputs[49] "5 7 8 9 13 123 124 125"
    set literal_transitions_tos[49] "49 49 49 49 49 49 49 49"
    set literal_transitions_inputs[50] "3 8 9 48 54 135 204 205 206 207"
    set literal_transitions_tos[50] "50 50 50 51 52 53 50 51 52 53"
    set literal_transitions_inputs[53] "208 209 210"
    set literal_transitions_tos[53] "50 50 50"
    set literal_transitions_inputs[54] "3 7 8 9 11 13 22 26 40 46 57 94 99 110 112 114 141 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167"
    set literal_transitions_tos[54] "54 54 54 54 54 55 56 54 54 57 54 58 55 54 54 55 54 54 56 54 57 55 54 54 54 54 54 55 58 54 54 54 54 55"
    set literal_transitions_inputs[59] "3 7 8 9 11 13 18 22 54 64 99 110 131 165 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290"
    set literal_transitions_tos[59] "59 59 60 60 61 62 59 59 63 64 63 65 62 61 59 59 59 59 59 63 65 61 62 62 64 66 59 59 59 63 65 65 61"
    set literal_transitions_inputs[60] 291
    set literal_transitions_tos[60] 67
    set literal_transitions_inputs[67] 292
    set literal_transitions_tos[67] 68
    set literal_transitions_inputs[69] "3 8 9 18 22 26 54 57 110 220 221 222 223 224 225 226"
    set literal_transitions_tos[69] "69 69 69 69 69 69 70 69 69 69 69 70 69 69 69 69"
    set literal_transitions_inputs[72] "3 8 9 11 13 22 40 46 54 64 99 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145"
    set literal_transitions_tos[72] "71 72 72 72 72 73 72 74 75 76 77 71 73 74 72 72 75 77 72 72 72 72 72 72 72 72 72 72 72 76"
    set literal_transitions_inputs[76] "146 147 148 149"
    set literal_transitions_tos[76] "72 72 72 72"
    set literal_transitions_inputs[79] "8 9 11 40 48 97 98 99 100 101 102"
    set literal_transitions_tos[79] "79 79 80 79 79 79 81 81 80 79 79"
    set literal_transitions_inputs[82] "8 9 22 26 54 110 135 252 253 254 255 256 257 258"
    set literal_transitions_tos[82] "82 82 82 82 83 82 82 82 84 82 83 82 82 82"
    set literal_transitions_inputs[85] "269 230 231"
    set literal_transitions_tos[85] "5 5 5"
    set literal_transitions_inputs[86] "3 7 8 9 11 13 40 46 48 54 64 94 135 165 233 234 235 236 237 238 264 240 241 242 243 244 245 246"
    set literal_transitions_tos[86] "86 86 86 86 87 86 86 88 86 87 86 86 89 86 86 86 88 86 87 86 86 89 87 86 86 86 86 86"
    set literal_transitions_inputs[90] "28 29 30 31 32 33 269"
    set literal_transitions_tos[90] "90 90 90 90 90 90 90"
    set literal_transitions_inputs[91] "8 9 11 13 26 40 46 52 53 54 55 56 57 58 59 63 64 70 71 72"
    set literal_transitions_tos[91] "91 91 92 93 91 94 95 95 96 96 92 97 97 94 93 98 98 94 94 91"
    set literal_transitions_inputs[93] "60 61 62"
    set literal_transitions_tos[93] "91 91 91"
    set literal_transitions_inputs[98] "65 66 67 68 69"
    set literal_transitions_tos[98] "91 91 91 91 91"
    set literal_transitions_inputs[99] "8 9 54 64 99 104 107 108 109 110 111 112 113 114"
    set literal_transitions_tos[99] "99 99 100 101 99 101 100 99 102 102 99 99 103 103"
    set literal_transitions_inputs[101] "105 106"
    set literal_transitions_tos[101] "99 99"
    set literal_transitions_inputs[106] "3 7 8 9 13 26 46 54 64 138 188 189 190 191 192 193 194 195 196 197 198 199 200 201"
    set literal_transitions_tos[106] "105 105 106 106 107 106 108 105 106 106 105 106 106 105 109 109 108 110 110 105 106 107 106 106"
    set literal_transitions_inputs[111] "7 8 9 13 18 40 57 84 85 86 87 88 89 90 91 92 93 94 95"
    set literal_transitions_tos[111] "111 111 111 111 111 111 111 111 112 113 111 111 111 114 114 111 111 111 114"
    set literal_transitions_inputs[115] "8 9 11 13 48 54 57 99 116 117 118 119 120 121"
    set literal_transitions_tos[115] "115 115 116 117 115 118 115 119 115 118 119 116 115 117"
    set literal_transitions_inputs[120] "5 7 8 9 13 22 40 48 54 64 170 171 172 173 174 175 176 177"
    set literal_transitions_tos[120] "120 120 120 120 120 120 121 120 121 122 120 120 120 120 121 121 120 122"
    set literal_transitions_inputs[122] "178 179 180 181 182 183 184 185 186"
    set literal_transitions_tos[122] "120 120 120 120 120 120 120 120 120"
    set literal_transitions_inputs[124] "2 3 4 5 6 7 8 9 10 11 12 13"
    set literal_transitions_tos[124] "123 123 123 123 124 124 124 124 124 124 125 125"

    set match_anything_transitions_from 40 26 38 42 37 47 57 55 63 64 65 68 66 70 45 71 77 75 73 74 29 78 36 80 81 83 84 87 88 86 89 95 96 97 92 94 43 100 103 102 52 104 32 48 56 61 109 110 105 108 107 51 114 112 113 58 62 116 118 117 119 121 33 123 125 39
    set match_anything_transitions_to 41 5 35 41 35 46 54 54 59 59 59 59 59 69 44 72 72 72 72 72 78 5 35 79 79 82 82 86 86 5 86 91 91 91 91 91 41 99 99 99 50 5 31 46 54 59 106 106 106 106 106 50 111 111 111 54 59 115 115 115 115 120 31 124 124 35

    set state 1
    set word_index 2
    while test $word_index -lt $COMP_CWORD
        set -- word $COMP_WORDS[$word_index]

        if set --query literal_transitions_inputs[$state] && test -n $literal_transitions_inputs[$state]
            set inputs (string split ' ' $literal_transitions_inputs[$state])
            set tos (string split ' ' $literal_transitions_tos[$state])

            set literal_id (contains --index -- "$word" $literals)
            if test -n "$literal_id"
                set index (contains --index -- "$literal_id" $inputs)
                set state $tos[$index]
                set word_index (math $word_index + 1)
                continue
            end
        end

        if set --query match_anything_transitions_from[$state] && test -n $match_anything_transitions_from[$state]
            set index (contains --index -- "$state" $match_anything_transitions_from)
            set state $match_anything_transitions_to[$index]
            set word_index (math $word_index + 1)
            continue
        end

        return 1
    end

    set literal_froms_level_0 7 16 54 76 50 24 53 3 124 34 9 2 122 44 79 91 59 99 67 72 22 4 41 11 49 27 93 46 1 85 86 106 120 21 18 19 82 98 25 10 30 14 15 90 8 60 35 6 20 23 101 13 31 12 111 69 28 17 115
    set literal_inputs_level_0 "8 44 45 47 49 50|8 151 152 153 154 155 156 157 158 159 160 161 162 163 164 166 167|8 151 152 153 154 155 156 157 158 159 160 161 162 163 164 166 167|146 147 148 149|8 204 205 206 207|8 248 249 250|208 209 210|8 15 17 19 20 21 23 24 25|2 4 6 8 10 12|8 248 249 250|74 75 76 77 78 79 80 81 82|2 4 6 8 10 12|178 179 180 181 182 183 184 185 186|8 38 39 41 42|8 97 98 100 101 102|8 52 53 55 56 58 59 63 70 72|8 272 273 274 275 277 278 279 280 281 282 283 284 285 287 288 290|8 104 107 108 109 111 113|292|8 127 128 129 130 132 133 134 136 137 139 140 142 143 145|228 229|28 29 30 31 32 33 269|8 15 17 19 20 21 23 24 25|8 97 98 100 101 102|8 123 124 125|261 262|60 61 62|8 102 264 265 266 267 268|1 14 27 35 36 37 43 51 73 83 96 103 115 122 126 150 168 169 187 202 203 211 219 227 232 247 251 259 260 263 270 271 293|269 230 231|8 233 234 235 236 237 238 240 241 242 243 244 245 246|8 188 189 191 192 194 195 197 198 199 200 201|8 170 171 172 173 174 175 176 177|8 220 221 222 223 224 225 226|8 188 189 191 192 194 195 197 198 199 200 201|8 204 205 206 207|8 252 253 254 255 256 257 258|65 66 67 68 69|8 252 253 254 255 256 257 258|8 84 85 86 87 88 89 90 91 92 93 95|8 272 273 274 275 277 278 279 280 281 282 283 284 285 287 288 290|8 123 124 125|8 127 128 129 130 132 133 134 136 137 139 140 142 143 145|28 29 30 31 32 33 269|8 52 53 55 56 58 59 63 70 72|291|8 44 45 47 49 50|8 38 39 41 42|8 212 213 214 215 216 217 218|8 233 234 235 236 237 238 240 241 242 243 244 245 246|105 106|8 116 117 118 119 120 121|8 212 213 214 215 216 217 218|8 104 107 108 109 111 113|8 84 85 86 87 88 89 90 91 92 93 95|8 220 221 222 223 224 225 226|8 102 264 265 266 267 268|8 170 171 172 173 174 175 176 177|8 116 117 118 119 120 121"
    set literal_froms_level_1 7 16 54 46 86 106 50 24 120 21 18 3 19 124 34 82 10 25 30 14 15 2 8 44 35 6 20 23 79 91 59 99 13 31 12 111 69 28 72 41 17 11 49 115
    set literal_inputs_level_1 "9 11 18 22 46 48|3 7 9 11 13 22 26 40 46 57 94 99 110 112 114 141 165|3 7 9 11 13 22 26 40 46 57 94 99 110 112 114 141 165|46 112 135 269|3 7 9 11 13 40 46 48 54 64 94 135 165 264|3 7 9 13 26 46 54 64 138 190 193 196|3 9 48 54 135|9 22 40 48|5 7 9 13 22 40 48 54 64|3 9 18 22 26 54 57 110|3 7 9 13 26 46 54 64 138 190 193 196|3 7 9 11 16 18 22 26|3 9 48 54 135|3 5 7 9 11 13|9 22 40 48|9 22 26 54 110 135|7 9 13 18 40 57 94|9 22 26 54 110 135|3 7 9 11 13 18 22 54 64 99 110 131 165 276 286 289|5 7 9 13|3 9 11 13 22 40 46 54 64 99 131 135 138 141 144|3 5 7 9 11 13|9 11 13 26 40 46 54 57 64 71|9 11 13 22 40|9 11 18 22 46 48|9 11 13 22 40|9 13 26 46 48 64 110 165|3 7 9 11 13 40 46 48 54 64 94 135 165 264|9 11 40 48 99|9 11 13 26 40 46 54 57 64 71|3 7 9 11 13 18 22 54 64 99 110 131 165 276 286 289|9 54 64 99 110 112 114|9 11 13 48 54 57 99|9 13 26 46 48 64 110 165|9 54 64 99 110 112 114|7 9 13 18 40 57 94|3 9 18 22 26 54 57 110|46 112 135 269|3 9 11 13 22 40 46 54 64 99 131 135 138 141 144|3 7 9 11 16 18 22 26|5 7 9 13 22 40 48 54 64|9 11 40 48 99|5 7 9 13|9 11 13 48 54 57 99"
    set nontail_command_froms_level_0 
    set nontail_commands_level_0 
    set nontail_regexes_level_0 
    set nontail_command_froms_level_1 
    set nontail_commands_level_1 
    set nontail_regexes_level_1 
    set command_froms_level_0 107 33 86 103 26 55 51 94 48 42
    set commands_level_0 "0" "0" "0" "0" "0" "0" "0" "0" "0" "0"
    set command_froms_level_1 
    set commands_level_1 

    for fallback_level in (seq 0 1)
        set candidates
        set froms_name literal_froms_level_$fallback_level
        set froms $$froms_name
        set index (contains --index -- "$state" $froms)
        if test -n "$index"
            set level_inputs_name literal_inputs_level_$fallback_level
            set input_assoc_values (string split '|' $$level_inputs_name)
            set state_inputs (string split ' ' $input_assoc_values[$index])
            for literal_id in $state_inputs
                set descr_index (contains --index -- "$literal_id" $descr_literal_ids)
                if test -n "$descr_index"
                    set --append candidates (printf '%s\t%s\n' $literals[$literal_id] $descrs[$descr_ids[$descr_index]])
                else
                    set --append candidates (printf '%s\n' $literals[$literal_id])
                end
            end
        end

        set commands_name command_froms_level_$fallback_level
        set commands $$commands_name
        set index (contains --index -- "$state" $commands)
        if test -n "$index"
            set commands_name commands_level_$fallback_level
            set commands (string split ' ' $$commands_name)
            set function_id $commands[$index]
            set function_name _dspace_cmd_$function_id
            set --append candidates ($function_name "$COMP_WORDS[$COMP_CWORD]")
        end
        printf '%s\n' $candidates | __complgen_match $COMP_WORDS[$word_index] && return 0
    end
end

complete --erase dspace
complete --command dspace --no-files --arguments "(_dspace)"
