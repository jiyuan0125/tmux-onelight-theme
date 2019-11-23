#!/bin/bash
color_black="#494b52"
color_yellow="#dd5f23"
color_white="#f0f0f0"
color_green="#569f56"
color_grey="#d3d3d3"

time_format="%R"
date_format="%Y-%m-%d"

tmux set-option -gq status "on"
tmux set-option -gq status-justify "left"

tmux set-option -gq status-left-length "100"
tmux set-option -gq status-right-length "100"
tmux set-option -gq status-right-attr "none"

tmux set-option -gq message-style "bg=$color_white,fg=$onedark_black"
tmux set-option -gq message-command-style "bg=$color_white,fg=$color_black"

tmux set-option -gq status-attr "none"
tmux set-option -gq status-left-attr "none"
tmux set-option -gq status-style "bg=$color_white,fg=$color_black"

tmux set-option -gq pane-border-style "fg=$color_white"
tmux set-option -gq pane-active-border-style "fg=$color_black"

tmux set-window-option -gq mode-style "bg=$color_grey"

tmux set-window-option -gq window-status-fg $color_black
tmux set-window-option -gq window-status-bg $color_white
tmux set-window-option -gq window-status-attr "none"
tmux set-window-option -gq window-status-activity-bg $color_black
tmux set-window-option -gq window-status-activity-fg $color_white
tmux set-window-option -gq window-status-activity-attr "none"
tmux set-window-option -gq window-status-separator ""

tmux set-option -gq @prefix_highlight_fg "$color_white"
tmux set-option -gq @prefix_highlight_bg "$color_yellow"
tmux set-option -gq @prefix_highlight_copy_mode_attr "bg=$color_black,fg=$color_yellow"
tmux set-option -gq @prefix_highlight_output_prefix "« "
tmux set-option -gq @prefix_highlight_output_suffix " "

tmux set-option -gq status-right "#{prefix_highlight}#[fg=$color_grey,bg=$color_white]«#[fg=$color_black,bg=$color_grey] ${date_format} ${time_format} #[fg=$color_green,bg=$color_grey]«#[fg=$color_white,bg=$color_green] #h "
tmux set-option -gq status-left "#[fg=$color_white,bg=$color_yellow] #S #[fg=$color_grey,bg=$color_white]»"

tmux set-option -gq window-status-format "#[fg=$color_black,bg=$color_grey] #I » #W #[fg=$color_grey,bg=$color_white]»"
tmux set-option -gq window-status-current-format "#[fg=$color_white,bg=$color_green,bold] #I » #W #[fg=$color_grey,bg=$color_white]»"
