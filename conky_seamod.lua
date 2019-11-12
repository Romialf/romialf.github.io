#==============================================================================
#                               conkyrc_seamod
# Date    : 05/02/2012
# Author  : SeaJey
# Version : v0.1
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# This version is a modification of conkyrc_lunatico wich is modification of conkyrc_orange
# 
# conkyrc_orange:    http://gnome-look.org/content/show.php?content=137503&forumpage=0
# conkyrc_lunatico:  http://gnome-look.org/content/show.php?content=142884
#==============================================================================

background yes
update_interval 1

cpu_avg_samples 1
net_avg_samples 2
temperature_unit celsius

double_buffer yes
no_buffers yes
text_buffer_size 2048

gap_x 0
gap_y 0
minimum_size 200 900
maximum_width 350

own_window yes
own_window_type normal
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
own_window_colour 000000
own_window_argb_visual yes
own_window_argb_value 0

border_inner_margin 0
border_outer_margin 0
alignment top_right


draw_shades yes
draw_outline no
draw_borders no
draw_graph_borders no

override_utf8_locale yes
use_xft yes
xftfont caviar dreams:size=10
xftalpha 0.5
uppercase no

# Defining colors
default_color FFFFFF
# Shades of Gray
color1 00ffff
color2 ff0000
color3 77F02B
# Orange
color4 EF5A29
# Green
color5 F0D42B

# Loading lua script for drawning rings
lua_load ./seamod_rings.lua
lua_draw_hook_post main

## System information using conky capabilities

# Header with base system info
own_window_argb_value 0
own_window_colour 000000


TEXT
${offset 20}${offset 150}${color1}${font Bitstream Charter:pixelsize=45}${time %H:%M}${font}${voffset -84}${offset -184}${voffset 95}${font GE Inspira:pixelsize=25}${time %a},${color FFA300}${time %d} ${color 4}${font GE Inspira:pixelsize=22}${time  %b} ${time %Y}
${offset 30} ${font Ubuntu:size=60,weight:bold}${color4}SYSTEM ${hr 2}
${offset 15}${font Ubuntu:size=10,weight:normal}${color 3}$sysname $kernel
${offset 15}${font Ubuntu:size=10,weight:normal}${color3}$nodename
${offset 15}${font Ubuntu:size=10,weight:normal}${color1}Uptime: $uptime
# Showing CPU Graph
#${offset 20}
${offset 140}${cpugraph 40,183 4B1B0C F02BE8}${voffset -25}
${offset 60}${font Ubuntu:size=10,weight:bold}${color5}CPU ${cpu cpu0}%
# Showing TOP 5 CPU-consumers
${offset 105}${font Ubuntu:size=10,weight:normal}${color4}${top name 1}${alignr}${top cpu 1}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color1}${top name 2}${alignr}${top cpu 2}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color2}${top name 3}${alignr}${top cpu 3}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color3}${top name 4}${alignr}${top cpu 4}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color5}${top name 5}${alignr}${top cpu 5}%
#Showing memory part with TOP 5
#${offset 20}
${offset 140}${memgraph 70, 183 4B1B0C 2BD7F0}${voffset -25}
${offset 20}${font Ubuntu:size=10,weight:bold}${color 5}RAM:${mem mem0}
${offset 105}${font Ubuntu:size=10,weight:normal}${color4}${top_mem name 1}${alignr}${top_mem mem 1}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color1}${top_mem name 2}${alignr}${top_mem mem 2}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color2}${top_mem name 3}${alignr}${top_mem mem 3}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color3}${top_mem name 4}${alignr}${top_mem mem 4}%
${offset 105}${font Ubuntu:size=10,weight:normal}${color5}${top_mem name 4}${alignr}${top_mem mem 5}%

# Showing disk partitions: root, home and Data
#${offset 28}
#${offset 90}${font Ubuntu:size=10,weight:bold}${color 5}DISKS
#${offset 120}${diskiograph 33,183 666666 666666}${voffset -30}
#${voffset 20}
#${offset 15}${font Ubuntu:size=9,weight:bold}${color1}Free: ${font Ubuntu:size=9,weight:normal}${fs_free /}
#${alignr}${font Ubuntu:size=9,weight:bold}Used: ${font Ubuntu:size=9,weight:normal}${fs_used /}
#${offset 15}${font Ubuntu:size=9,weight:bold}${color1}Free: ${font Ubuntu:size=9,weight:normal}${fs_free /home}${alignr}${font Ubuntu:size=9,weight:bold}Used: ${font Ubuntu:size=9,weight:normal}${fs_used /home}
#${offset 15}${font Ubuntu:size=9,weight:bold}${color1}Free: ${font Ubuntu:size=9,weight:normal}${fs_free /media/Data}${alignr}${font Ubuntu:size=9,weight:bold}Used: ${font Ubuntu:size=9,weight:normal}${fs_used /media/Data}

# Network data (my desktop have only LAN). ETHERNET ring is mostly useless but looks pretty, main info is in the graphs
#${offset 33}
${font Ubuntu:size=10,weight:bold}${color4}INTERNET : ${color3}${addrs wlp2s0}
${offset 30}             
${offset 15}${color1}${font Ubuntu:size=9,weight:bold}Up: ${alignr}${font Ubuntu:size=9,weight:normal}$color2${upspeed wlp2s0} / ${totalup wlp2s0}
${offset 40}${upspeedgraph wlp2s0 40,285 4B1B0C FF5C2B 100 -l}
${offset 15}${color1}${font Ubuntu:size=9,weight:bold}Down: ${alignr}${font Ubuntu:size=9,weight:normal}$color2${downspeed wlp2s0} / ${totaldown wlp2s0}
${offset 40}${downspeedgraph wlp2s0 40,285 324D23 77B753 100 -l}

${color 2}Find ${color2}me${color5} on${color1} GitHub :
${color4}https:${color1}//GitHub.com/${color3}Romialf/ 
${color4}${hr 2}


