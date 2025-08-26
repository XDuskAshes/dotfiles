# on a zero exit code:
# working directory ><>
# otherwise:
# [exit code] working diretory ><>
function fish_prompt -d " ~ ><>"
    set -l last_status $status
    set -l status_text
    if test $last_status -ne 0
        set status_text (set_color red)"[$last_status]"(set_color normal) ' '
    end
    string join '' -- $status_text (prompt_pwd) ' ><>' ' '
end
