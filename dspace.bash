if [[ $BASH_VERSINFO -lt 4 ]]; then
    echo "This completion script requires bash 4.0 or newer (current is $BASH_VERSION)"
    exit 1
fi

__complgen_match () {
    [[ $# -lt 2 ]] && return 1
    local ignore_case=$1
    local prefix=$2
    [[ -z $prefix ]] && cat
    if [[ $ignore_case = on ]]; then
        prefix=${prefix,,}
        prefix=$(printf '%q' "$prefix")
        while read line; do
            [[ ${line,,} = ${prefix}* ]] && echo $line
        done
    else
        prefix=$(printf '%q' "$prefix")
        while read line; do
            [[ $line = ${prefix}* ]] && echo $line
        done
    fi
}

_dspace_cmd_0 () {
    compgen -A file "$1"
}

_dspace () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completion system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    declare -a literals=(bitstore-migrate --source -a --destination -b --delete -d --help -h --print -p --size -s checker --continuous -L --looping -l --handle -b --count -c --duration --prune --verbose -v checker-emailer -a -d -m -c -u -n -h classpath cleanup community-filiator --set --remote -r --child --parent create-administrator --language --email -e --first -f --last --password curate --eperson --id -i --parameter --queue -q --reporter --scope object curation open --task -t noop profileformats requiredmetadata checklinks registerdoi --taskfile -T --verbose database test info status migrate repair skip validate update-sequences clean doi-organiser --delete-all --delete-doi --filter --list --quiet --register-all --register-doi --reserve-doi --reserve-all --update-all -u --update-doi dsprop --first --module -m --property --raw -? export --type ITEM COLLECTION --id --migrate --number -n --exclude-bitstreams -x --zip -z filter-media --force --identifier --maximum --plugins --quiet --skip generate-sitemaps --no_htmlmap --delete --no_sitemaps harvest --address --collection --eperson --ping -g --oai_set_id --metadata_format --reimport -o --purge --purgeCollections -P --run --reset -R --setup --start -S --type 0 1 2 3 import --add --collection --delete --eperson --mapfile --notify --template --quiet --replace --resume --source --url --validate --workflow -w --exclude-bitstreams --zip index-authority index-discovery --build --clean --delete --force --index --remove --spellchecker --type ClaimedTask Collection Community Item PoolTask XmlWorkflowItem WorkspaceItem MetadataField LDNMessageEntity itemupdate --addmetadata --addbitstreams -A --deletemetadata --deletebitstreams -D --eperson --filter-properties -F --itemfield --provenance --source --test --verbose make-handle-config metadata-export --all --file --id --output-format csv bibtex ris metadata-import --email --file --notify --silent --template --validate-only --workflow migrate-embargo --adjust --check --id --list --dryrun --quiet --verbose oai import clean-cache -c -v packager --all --disseminate --eperson --force-replace --identifier --keep-existing -k --option --parent --restore --submit --type --no-user-interaction --install process-cleaner --completed --failed --runing rdfizer --convert-all --delete --delete-all --identifiers --dry-run --stdout --verbose read registry-loader -bitstream -metadata structure-builder -k --export --eperson --output -f -h update-handle-prefix user --add --delete --list --modify -M --email --netid --password --givenname --surname --telephone --language --requireCertificate --canLogin -C --newEmail --newNetid -I --newPassword dspace validate-date version)
    declare -a regexes=()
    declare -A literal_transitions=()
    declare -A nontail_transitions=()
    literal_transitions[0]="([0]=1 [13]=2 [26]=3 [34]=4 [35]=4 [36]=5 [42]=6 [50]=7 [72]=8 [82]=9 [95]=10 [102]=11 [114]=12 [121]=13 [125]=14 [149]=15 [167]=4 [168]=16 [186]=17 [201]=4 [202]=18 [210]=19 [218]=20 [226]=21 [231]=22 [246]=23 [250]=24 [258]=25 [259]=26 [262]=27 [269]=28 [270]=29 [292]=4)"
    literal_transitions[1]="([1]=122 [2]=122 [3]=122 [4]=122 [5]=123 [6]=123 [7]=123 [8]=123 [9]=123 [10]=123 [11]=124 [12]=124)"
    literal_transitions[2]="([2]=39 [6]=40 [7]=40 [8]=40 [10]=41 [14]=40 [15]=40 [16]=40 [17]=40 [18]=39 [19]=42 [20]=40 [21]=40 [22]=40 [23]=41 [24]=40 [25]=40)"
    literal_transitions[3]="([27]=89 [28]=89 [29]=89 [30]=89 [31]=89 [32]=89 [268]=89)"
    literal_transitions[5]="([7]=43 [8]=43 [10]=44 [12]=43 [21]=44 [37]=43 [38]=43 [39]=43 [40]=44 [41]=44)"
    literal_transitions[6]="([7]=34 [8]=34 [10]=35 [17]=36 [21]=37 [43]=37 [44]=38 [45]=38 [46]=36 [47]=36 [48]=36 [49]=35)"
    literal_transitions[7]="([7]=90 [8]=90 [10]=91 [12]=92 [25]=90 [39]=93 [45]=94 [51]=94 [52]=95 [53]=95 [54]=91 [55]=96 [56]=96 [57]=93 [58]=92 [62]=97 [63]=97 [69]=93 [70]=93 [71]=90)"
    literal_transitions[8]="([73]=4 [74]=4 [75]=4 [76]=4 [77]=4 [78]=103 [79]=4 [80]=4 [81]=4)"
    literal_transitions[9]="([6]=110 [7]=110 [8]=110 [12]=110 [17]=110 [39]=110 [56]=110 [83]=110 [84]=111 [85]=112 [86]=110 [87]=110 [88]=110 [89]=113 [90]=113 [91]=110 [92]=110 [93]=110 [94]=113)"
    literal_transitions[10]="([7]=78 [8]=78 [10]=79 [39]=78 [47]=78 [96]=78 [97]=80 [98]=80 [99]=79 [100]=78 [101]=78)"
    literal_transitions[11]="([7]=98 [8]=98 [53]=99 [63]=100 [98]=98 [103]=100 [106]=99 [107]=98 [108]=101 [109]=101 [110]=98 [111]=98 [112]=102 [113]=102)"
    literal_transitions[12]="([7]=114 [8]=114 [10]=115 [12]=116 [47]=114 [53]=117 [56]=114 [98]=118 [115]=114 [116]=117 [117]=118 [118]=115 [119]=114 [120]=116)"
    literal_transitions[13]="([4]=48 [6]=48 [7]=48 [8]=48 [12]=48 [122]=48 [123]=48 [124]=48)"
    literal_transitions[14]="([2]=70 [7]=71 [8]=71 [10]=71 [12]=71 [21]=72 [39]=71 [45]=73 [53]=74 [63]=75 [98]=76 [126]=70 [127]=72 [128]=73 [129]=71 [130]=71 [131]=74 [132]=76 [133]=71 [134]=71 [135]=71 [136]=71 [137]=71 [138]=71 [139]=71 [140]=71 [141]=71 [142]=71 [143]=71 [144]=75)"
    literal_transitions[15]="([2]=53 [6]=53 [7]=53 [8]=53 [10]=53 [12]=54 [21]=55 [25]=53 [39]=53 [45]=56 [56]=53 [93]=57 [98]=54 [109]=53 [111]=53 [113]=54 [140]=53 [150]=53 [151]=55 [152]=53 [153]=56 [154]=54 [155]=53 [156]=53 [157]=53 [158]=53 [159]=53 [160]=54 [161]=57 [162]=53 [163]=53 [164]=53 [165]=53 [166]=54)"
    literal_transitions[16]="([4]=119 [6]=119 [7]=119 [8]=119 [12]=119 [21]=119 [39]=120 [47]=119 [53]=120 [63]=121 [169]=119 [170]=119 [171]=119 [172]=119 [173]=120 [174]=120 [175]=119 [176]=121)"
    literal_transitions[17]="([2]=104 [6]=104 [7]=105 [8]=105 [12]=106 [25]=105 [45]=107 [53]=104 [63]=105 [137]=105 [187]=104 [188]=105 [189]=105 [190]=104 [191]=108 [192]=108 [193]=107 [194]=109 [195]=109 [196]=104 [197]=105 [198]=106 [199]=105 [200]=105)"
    literal_transitions[18]="([2]=49 [7]=49 [8]=49 [47]=50 [53]=51 [134]=52 [203]=49 [204]=50 [205]=51 [206]=52)"
    literal_transitions[19]="([7]=30 [8]=30 [12]=30 [25]=30 [45]=31 [47]=32 [63]=30 [109]=30 [164]=30 [211]=31 [212]=32 [213]=30 [214]=30 [215]=30 [216]=30 [217]=30)"
    literal_transitions[20]="([2]=68 [7]=68 [8]=68 [17]=68 [21]=68 [25]=68 [53]=69 [56]=68 [109]=68 [219]=68 [220]=68 [221]=69 [222]=68 [223]=68 [224]=68 [225]=68)"
    literal_transitions[21]="([227]=84 [228]=84)"
    literal_transitions[22]="([2]=85 [6]=85 [7]=85 [8]=85 [10]=86 [12]=85 [39]=85 [45]=87 [47]=85 [53]=86 [63]=85 [93]=85 [134]=88 [164]=85 [232]=85 [233]=85 [234]=87 [235]=85 [236]=86 [237]=85 [263]=85 [239]=88 [240]=86 [241]=85 [242]=85 [243]=85 [244]=85 [245]=85)"
    literal_transitions[23]="([7]=33 [8]=33 [21]=33 [39]=33 [47]=33 [247]=33 [248]=33 [249]=33)"
    literal_transitions[24]="([7]=81 [8]=81 [21]=81 [25]=81 [53]=82 [109]=81 [134]=81 [251]=81 [252]=83 [253]=81 [254]=82 [255]=81 [256]=81 [257]=81)"
    literal_transitions[26]="([260]=25 [261]=25)"
    literal_transitions[27]="([7]=45 [45]=46 [101]=45 [111]=45 [134]=47 [263]=45 [264]=45 [265]=46 [266]=47 [267]=47 [268]=45)"
    literal_transitions[29]="([2]=58 [6]=58 [7]=59 [8]=59 [10]=60 [12]=61 [17]=58 [21]=58 [53]=62 [63]=63 [98]=62 [109]=64 [130]=61 [164]=60 [271]=58 [272]=58 [273]=58 [274]=58 [275]=58 [276]=62 [277]=64 [278]=60 [279]=61 [280]=61 [281]=63 [282]=65 [283]=58 [284]=58 [285]=58 [286]=62 [287]=64 [288]=64 [289]=60)"
    literal_transitions[30]="([7]=30 [8]=30 [12]=30 [25]=30 [45]=31 [47]=32 [63]=30 [109]=30 [164]=30 [211]=31 [212]=32 [213]=30 [214]=30 [215]=30 [216]=30 [217]=30)"
    literal_transitions[33]="([7]=33 [8]=33 [21]=33 [39]=33 [47]=33 [247]=33 [248]=33 [249]=33)"
    literal_transitions[34]="([7]=34 [8]=34 [10]=35 [17]=36 [21]=37 [43]=37 [44]=38 [45]=38 [46]=36 [47]=36 [48]=36 [49]=35)"
    literal_transitions[40]="([2]=39 [6]=40 [7]=40 [8]=40 [10]=41 [14]=40 [15]=40 [16]=40 [17]=40 [18]=39 [19]=42 [20]=40 [21]=40 [22]=40 [23]=41 [24]=40 [25]=40)"
    literal_transitions[43]="([7]=43 [8]=43 [10]=44 [12]=43 [21]=44 [37]=43 [38]=43 [39]=43 [40]=44 [41]=44)"
    literal_transitions[45]="([7]=45 [45]=46 [101]=45 [111]=45 [134]=47 [263]=45 [264]=45 [265]=46 [266]=47 [267]=47 [268]=45)"
    literal_transitions[48]="([4]=48 [6]=48 [7]=48 [8]=48 [12]=48 [122]=48 [123]=48 [124]=48)"
    literal_transitions[49]="([2]=49 [7]=49 [8]=49 [47]=50 [53]=51 [134]=52 [203]=49 [204]=50 [205]=51 [206]=52)"
    literal_transitions[52]="([207]=49 [208]=49 [209]=49)"
    literal_transitions[53]="([2]=53 [6]=53 [7]=53 [8]=53 [10]=53 [12]=54 [21]=55 [25]=53 [39]=53 [45]=56 [56]=53 [93]=57 [98]=54 [109]=53 [111]=53 [113]=54 [140]=53 [150]=53 [151]=55 [152]=53 [153]=56 [154]=54 [155]=53 [156]=53 [157]=53 [158]=53 [159]=53 [160]=54 [161]=57 [162]=53 [163]=53 [164]=53 [165]=53 [166]=54)"
    literal_transitions[58]="([2]=58 [6]=58 [7]=59 [8]=59 [10]=60 [12]=61 [17]=58 [21]=58 [53]=62 [63]=63 [98]=62 [109]=64 [130]=61 [164]=60 [271]=58 [272]=58 [273]=58 [274]=58 [275]=58 [276]=62 [277]=64 [278]=60 [279]=61 [280]=61 [281]=63 [282]=65 [283]=58 [284]=58 [285]=58 [286]=62 [287]=64 [288]=64 [289]=60)"
    literal_transitions[59]="([290]=66)"
    literal_transitions[66]="([291]=67)"
    literal_transitions[68]="([2]=68 [7]=68 [8]=68 [17]=68 [21]=68 [25]=68 [53]=69 [56]=68 [109]=68 [219]=68 [220]=68 [221]=69 [222]=68 [223]=68 [224]=68 [225]=68)"
    literal_transitions[71]="([2]=70 [7]=71 [8]=71 [10]=71 [12]=71 [21]=72 [39]=71 [45]=73 [53]=74 [63]=75 [98]=76 [126]=70 [127]=72 [128]=73 [129]=71 [130]=71 [131]=74 [132]=76 [133]=71 [134]=71 [135]=71 [136]=71 [137]=71 [138]=71 [139]=71 [140]=71 [141]=71 [142]=71 [143]=71 [144]=75)"
    literal_transitions[75]="([145]=71 [146]=71 [147]=71 [148]=71)"
    literal_transitions[78]="([7]=78 [8]=78 [10]=79 [39]=78 [47]=78 [96]=78 [97]=80 [98]=80 [99]=79 [100]=78 [101]=78)"
    literal_transitions[81]="([7]=81 [8]=81 [21]=81 [25]=81 [53]=82 [109]=81 [134]=81 [251]=81 [252]=83 [253]=81 [254]=82 [255]=81 [256]=81 [257]=81)"
    literal_transitions[84]="([268]=4 [229]=4 [230]=4)"
    literal_transitions[85]="([2]=85 [6]=85 [7]=85 [8]=85 [10]=86 [12]=85 [39]=85 [45]=87 [47]=85 [53]=86 [63]=85 [93]=85 [134]=88 [164]=85 [232]=85 [233]=85 [234]=87 [235]=85 [236]=86 [237]=85 [263]=85 [239]=88 [240]=86 [241]=85 [242]=85 [243]=85 [244]=85 [245]=85)"
    literal_transitions[89]="([27]=89 [28]=89 [29]=89 [30]=89 [31]=89 [32]=89 [268]=89)"
    literal_transitions[90]="([7]=90 [8]=90 [10]=91 [12]=92 [25]=90 [39]=93 [45]=94 [51]=94 [52]=95 [53]=95 [54]=91 [55]=96 [56]=96 [57]=93 [58]=92 [62]=97 [63]=97 [69]=93 [70]=93 [71]=90)"
    literal_transitions[92]="([59]=90 [60]=90 [61]=90)"
    literal_transitions[97]="([64]=90 [65]=90 [66]=90 [67]=90 [68]=90)"
    literal_transitions[98]="([7]=98 [8]=98 [53]=99 [63]=100 [98]=98 [103]=100 [106]=99 [107]=98 [108]=101 [109]=101 [110]=98 [111]=98 [112]=102 [113]=102)"
    literal_transitions[100]="([104]=98 [105]=98)"
    literal_transitions[105]="([2]=104 [6]=104 [7]=105 [8]=105 [12]=106 [25]=105 [45]=107 [53]=104 [63]=105 [137]=105 [187]=104 [188]=105 [189]=105 [190]=104 [191]=108 [192]=108 [193]=107 [194]=109 [195]=109 [196]=104 [197]=105 [198]=106 [199]=105 [200]=105)"
    literal_transitions[110]="([6]=110 [7]=110 [8]=110 [12]=110 [17]=110 [39]=110 [56]=110 [83]=110 [84]=111 [85]=112 [86]=110 [87]=110 [88]=110 [89]=113 [90]=113 [91]=110 [92]=110 [93]=110 [94]=113)"
    literal_transitions[114]="([7]=114 [8]=114 [10]=115 [12]=116 [47]=114 [53]=117 [56]=114 [98]=118 [115]=114 [116]=117 [117]=118 [118]=115 [119]=114 [120]=116)"
    literal_transitions[119]="([4]=119 [6]=119 [7]=119 [8]=119 [12]=119 [21]=119 [39]=120 [47]=119 [53]=120 [63]=121 [169]=119 [170]=119 [171]=119 [172]=119 [173]=120 [174]=120 [175]=119 [176]=121)"
    literal_transitions[121]="([177]=119 [178]=119 [179]=119 [180]=119 [181]=119 [182]=119 [183]=119 [184]=119 [185]=119)"
    literal_transitions[123]="([1]=122 [2]=122 [3]=122 [4]=122 [5]=123 [6]=123 [7]=123 [8]=123 [9]=123 [10]=123 [11]=124 [12]=124)"
    declare -A match_anything_transitions=([39]=40 [25]=4 [37]=34 [41]=40 [36]=34 [46]=45 [56]=53 [54]=53 [62]=58 [63]=58 [64]=58 [67]=58 [65]=58 [69]=68 [44]=43 [70]=71 [76]=71 [74]=71 [72]=71 [73]=71 [28]=77 [77]=4 [35]=34 [79]=78 [80]=78 [82]=81 [83]=81 [86]=85 [87]=85 [85]=4 [88]=85 [94]=90 [95]=90 [96]=90 [91]=90 [93]=90 [42]=40 [99]=98 [102]=98 [101]=98 [51]=49 [103]=4 [31]=30 [47]=45 [55]=53 [60]=58 [108]=105 [109]=105 [104]=105 [107]=105 [106]=105 [50]=49 [113]=110 [111]=110 [112]=110 [57]=53 [61]=58 [115]=114 [117]=114 [116]=114 [118]=114 [120]=119 [32]=30 [122]=123 [124]=123 [38]=34)
    declare -A subword_transitions

    local state=0
    local word_index=1
    while [[ $word_index -lt $cword ]]; do
        local word=${words[$word_index]}

        if [[ -v "literal_transitions[$state]" ]]; then
            declare -A state_transitions
            eval "state_transitions=${literal_transitions[$state]}"

            local word_matched=0
            for literal_id in $(seq 0 $((${#literals[@]} - 1))); do
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

        if [[ -v "match_anything_transitions[$state]" ]]; then
            state=${match_anything_transitions[$state]}
            word_index=$((word_index + 1))
            continue
        fi

        return 1
    done

    declare -A literal_transitions_level_0=([6]="7 43 44 46 48 49" [15]="7 150 151 152 153 154 155 156 157 158 159 160 161 162 163 165 166" [53]="7 150 151 152 153 154 155 156 157 158 159 160 161 162 163 165 166" [75]="145 146 147 148" [49]="7 203 204 205 206" [23]="7 247 248 249" [52]="207 208 209" [2]="7 14 16 18 19 20 22 23 24" [123]="1 3 5 7 9 11" [33]="7 247 248 249" [8]="73 74 75 76 77 78 79 80 81" [1]="1 3 5 7 9 11" [121]="177 178 179 180 181 182 183 184 185" [43]="7 37 38 40 41" [78]="7 96 97 99 100 101" [90]="7 51 52 54 55 57 58 62 69 71" [58]="7 271 272 273 274 276 277 278 279 280 281 282 283 284 286 287 289" [98]="7 103 106 107 108 110 112" [66]="291" [71]="7 126 127 128 129 131 132 133 135 136 138 139 141 142 144" [21]="227 228" [3]="27 28 29 30 31 32 268" [40]="7 14 16 18 19 20 22 23 24" [10]="7 96 97 99 100 101" [48]="7 122 123 124" [26]="260 261" [92]="59 60 61" [45]="7 101 263 264 265 266 267" [0]="0 13 26 34 35 36 42 50 72 82 95 102 114 121 125 149 167 168 186 201 202 210 218 226 231 246 250 258 259 262 269 270 292" [84]="268 229 230" [85]="7 232 233 234 235 236 237 239 240 241 242 243 244 245" [105]="7 187 188 190 191 193 194 196 197 198 199 200" [119]="7 169 170 171 172 173 174 175 176" [20]="7 219 220 221 222 223 224 225" [17]="7 187 188 190 191 193 194 196 197 198 199 200" [18]="7 203 204 205 206" [81]="7 251 252 253 254 255 256 257" [97]="64 65 66 67 68" [24]="7 251 252 253 254 255 256 257" [9]="7 83 84 85 86 87 88 89 90 91 92 94" [29]="7 271 272 273 274 276 277 278 279 280 281 282 283 284 286 287 289" [13]="7 122 123 124" [14]="7 126 127 128 129 131 132 133 135 136 138 139 141 142 144" [89]="27 28 29 30 31 32 268" [7]="7 51 52 54 55 57 58 62 69 71" [59]="290" [34]="7 43 44 46 48 49" [5]="7 37 38 40 41" [19]="7 211 212 213 214 215 216 217" [22]="7 232 233 234 235 236 237 239 240 241 242 243 244 245" [100]="104 105" [12]="7 115 116 117 118 119 120" [30]="7 211 212 213 214 215 216 217" [11]="7 103 106 107 108 110 112" [110]="7 83 84 85 86 87 88 89 90 91 92 94" [68]="7 219 220 221 222 223 224 225" [27]="7 101 263 264 265 266 267" [16]="7 169 170 171 172 173 174 175 176" [114]="7 115 116 117 118 119 120")
    declare -A literal_transitions_level_1=([6]="8 10 17 21 45 47" [15]="2 6 8 10 12 21 25 39 45 56 93 98 109 111 113 140 164" [53]="2 6 8 10 12 21 25 39 45 56 93 98 109 111 113 140 164" [45]="45 111 134 268" [85]="2 6 8 10 12 39 45 47 53 63 93 134 164 263" [105]="2 6 8 12 25 45 53 63 137 189 192 195" [49]="2 8 47 53 134" [23]="8 21 39 47" [119]="4 6 8 12 21 39 47 53 63" [20]="2 8 17 21 25 53 56 109" [17]="2 6 8 12 25 45 53 63 137 189 192 195" [2]="2 6 8 10 15 17 21 25" [18]="2 8 47 53 134" [123]="2 4 6 8 10 12" [33]="8 21 39 47" [81]="8 21 25 53 109 134" [9]="6 8 12 17 39 56 93" [24]="8 21 25 53 109 134" [29]="2 6 8 10 12 17 21 53 63 98 109 130 164 275 285 288" [13]="4 6 8 12" [14]="2 8 10 12 21 39 45 53 63 98 130 134 137 140 143" [1]="2 4 6 8 10 12" [7]="8 10 12 25 39 45 53 56 63 70" [43]="8 10 12 21 39" [34]="8 10 17 21 45 47" [5]="8 10 12 21 39" [19]="8 12 25 45 47 63 109 164" [22]="2 6 8 10 12 39 45 47 53 63 93 134 164 263" [78]="8 10 39 47 98" [90]="8 10 12 25 39 45 53 56 63 70" [58]="2 6 8 10 12 17 21 53 63 98 109 130 164 275 285 288" [98]="8 53 63 98 109 111 113" [12]="8 10 12 47 53 56 98" [30]="8 12 25 45 47 63 109 164" [11]="8 53 63 98 109 111 113" [110]="6 8 12 17 39 56 93" [68]="2 8 17 21 25 53 56 109" [27]="45 111 134 268" [71]="2 8 10 12 21 39 45 53 63 98 130 134 137 140 143" [40]="2 6 8 10 15 17 21 25" [16]="4 6 8 12 21 39 47 53 63" [10]="8 10 39 47 98" [48]="4 6 8 12" [114]="8 10 12 47 53 56 98")
    declare -A subword_transitions_level_0=()
    declare -A subword_transitions_level_1=()
    declare -A commands_level_0=([106]="0" [32]="0" [85]="0" [102]="0" [25]="0" [54]="0" [50]="0" [93]="0" [47]="0" [41]="0")
    declare -A commands_level_1=()
    declare -A nontail_commands_level_0=()
    declare -A nontail_regexes_level_0=()
    declare -A nontail_commands_level_1=()
    declare -A nontail_regexes_level_1=()

    local -a candidates=()
    local -a matches=()
    local ignore_case=$(bind -v | grep completion-ignore-case | cut -d' ' -f3)
    local max_fallback_level=1
    local prefix="${words[$cword]}"
    for (( fallback_level=0; fallback_level <= max_fallback_level; fallback_level++ )) {
        eval "declare literal_transitions_name=literal_transitions_level_${fallback_level}"
        eval "declare -a transitions=(\${$literal_transitions_name[$state]})"
        for literal_id in "${transitions[@]}"; do
            local literal="${literals[$literal_id]}"
            candidates+=("$literal ")
        done
        if [[ ${#candidates[@]} -gt 0 ]]; then
            readarray -t matches < <(printf "%s\n" "${candidates[@]}" | __complgen_match "$ignore_case" "$prefix")
        fi

        eval "declare subword_transitions_name=subword_transitions_level_${fallback_level}"
        eval "declare -a transitions=(\${$subword_transitions_name[$state]})"
        for subword_id in "${transitions[@]}"; do
            readarray -t -O "${#matches[@]}" matches < <(_dspace_subword_$subword_id complete "$prefix")
        done

        eval "declare commands_name=commands_level_${fallback_level}"
        eval "declare -a transitions=(\${$commands_name[$state]})"
        for command_id in "${transitions[@]}"; do
            readarray -t candidates < <(_dspace_cmd_$command_id "$prefix" | cut -f1)
            if [[ ${#candidates[@]} -gt 0 ]]; then
                readarray -t -O "${#matches[@]}" matches < <(printf "%s\n" "${candidates[@]}" | __complgen_match "$ignore_case" "$prefix")
            fi
        done

        eval "declare commands_name=nontail_commands_level_${fallback_level}"
        eval "declare -a command_transitions=(\${$commands_name[$state]})"
        eval "declare regexes_name=nontail_regexes_level_${fallback_level}"
        eval "declare -a regexes_transitions=(\${$regexes_name[$state]})"
        for (( i = 0; i < ${#command_transitions[@]}; i++ )); do
            local command_id=${command_transitions[$i]}
            local regex_id=${regexes_transitions[$i]}
            local regex="^(${regexes[$regex_id]}).*"
            readarray -t output < <(_dspace_cmd_$command_id "$prefix" | cut -f1)
            declare -a candidates=()
            for line in ${output[@]}; do
                if [[ ${line} =~ $regex && -n ${BASH_REMATCH[1]} ]]; then
                    match="${BASH_REMATCH[1]}"
                    candidates+=("$match")
                fi
            done
            if [[ ${#candidates[@]} -gt 0 ]]; then
                readarray -t -O "${#matches[@]}" matches < <(printf "%s\n" "${candidates[@]}" | __complgen_match "$ignore_case" "$prefix")
            fi
        done

        if [[ ${#matches[@]} -gt 0 ]]; then
            local shortest_suffix="$prefix"
            for ((i=0; i < ${#COMP_WORDBREAKS}; i++)); do
                local char="${COMP_WORDBREAKS:$i:1}"
                local candidate=${prefix##*$char}
                if [[ ${#candidate} -lt ${#shortest_suffix} ]]; then
                    shortest_suffix=$candidate
                fi
            done
            local superfluous_prefix=""
            if [[ "$shortest_suffix" != "$prefix" ]]; then
                local superfluous_prefix=${prefix%$shortest_suffix}
            fi
            COMPREPLY=("${matches[@]#$superfluous_prefix}")
            break
        fi
    }

    return 0
}

complete -o nospace -F _dspace dspace
