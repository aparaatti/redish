local gears = require("gears")
local fs = gears.filesystem

--------------------------
-- Awesome Redish theme --
--------------------------

local VERTICAL_BAR = true

local theme_name = "Redish"
local theme_path = fs.get_dir("config") .. 'themes/' .. theme_name:lower()
local awesome_default = fs.get_themes_dir() .. 'default'

local redish    = {
    normal_brd      = "#990044",
    normal_bg       = "#331111",
    focus_bg        = "#332222",
    normal_fg       = "#874538",
    focus_fg        = "#aa8888",
    highlight       = "#990044",
    tl_border_focus = "#220000",
    urgent_bg       = "#c70036",
    urgent_fg       = "#331111",
    dark_red        = "#331111",
    gab             = 2,
    border          = 0,
    border_tasklist = (function() if VERTICAL_BAR then return 1 else return 0 end end)(),
    wallpaper       = theme_path .. "/wallpaper/redish_joy.svg",
    tasklist_shape  = function(cr, width, height)
                          gears.shape.partially_rounded_rect(cr, width,
                          height, not VERTICAL_BAR, VERTICAL_BAR, true, false, 4)
                      end,
    tasklist_spacing = (function() if VERTICAL_BAR then return 2 else return 0 end end)()
}

--- Choose your flavour: -------------------------------------------------------

-- local variant = redish
local variant = redish

--- fonts ----------------------------------------------------------------------

variant.font_name = "FiraCodeRegular"
variant.font_name_notification = "FantasqueSansMono"

--------- create theme ---------------------------------------------------------

return {
    vertical = VERTICAL_BAR,
    -- fonts --
    font          = variant.font_name .. " 10",
    tasklist_font = variant.font_name .. " 7",
    prompt_font = variant.font_name .. " 7",
    notification_font = variant.font_name_notification .. " 8",

    -- bg --
    bg_normal     = variant.normal_bg,
    bg_focus      = variant.focus_bg,
    bg_urgent     = variant.urgent_bg,
    bg_minimize   = variant.normal_bg,
    bg_systray    = variant.normal_bg,
    prompt_bg = variant.normal_bg,
    prompt_bg_cursor = variant.normal_bg,

    -- fg --
    fg_normal     = variant.normal_fg,
    fg_focus      = variant.focus_fg,
    fg_urgent     = variant.urgent_fg,
    fg_minimize   = variant.normal_fg,
    prompt_fg = variant.urgent_bg,
    prompt_fg_cursor = variant.urgent_bg,

    -- gab/border --
    useless_gap   = variant.gab,
    border_width  = variant.border,
    border_normal = variant.normal_brd,
    border_focus  = variant.focus_fg, -- variant_mapper.highlight
    border_marked = variant.urgent_bg,

    -- tasklist --
    tasklist_disable_icon = false,
    tasklist_disable_task_name = false,
    tasklist_align = 'center',
    tasklist_bg_image_normal = variant.dark_red,
    tasklist_bg_normal = variant.dark_red,
    tasklist_fg_normal = variant.highlight,

    tasklist_shape = variant.tasklist_shape,
    tasklist_shape_border_width = variant.border_tasklist,
    tasklist_shape_border_color = variant.dark_red,
    tasklist_shape_border_color_focus = variant.dark_red,
    tasklist_shape_border_color_urgent = variant.focus_fg,

    -- taglist --
    taglist_border_focus = variant.tl_border_focus,

    -- notifications --
    notification_bg = variant.focus_bg,
    notification_bg_urgent = variant.highlight,
    notification_fg = variant.focus_fg,
    notification_border_width = 5,
    notification_border_color = variant.highlight,
    notification_height = 100,

    -- menu --
    menu_submenu                              = "",
    menu_height                               = 20,

    -- images --
    wallpaper = variant.wallpaper,
    icon_theme                                = nil,
    awesome_icon                              = nil,
    menu_submenu_icon                         = awesome_default .. "/submenu.png",

    titlebar_close_button_normal              = awesome_default .. "/titlebar/close_normal.png",
    titlebar_close_button_focus               = awesome_default .. "/titlebar/close_focus.png",
    titlebar_minimize_button_normal           = awesome_default .. "/titlebar/minimize_normal.png",
    titlebar_minimize_button_focus            = awesome_default .. "/titlebar/minimize_focus.png",
    titlebar_ontop_button_normal_inactive     = awesome_default .. "/titlebar/ontop_normal_inactive.png",
    titlebar_ontop_button_focus_inactive      = awesome_default .. "/titlebar/ontop_focus_inactive.png",
    titlebar_ontop_button_normal_active       = awesome_default .. "/titlebar/ontop_normal_active.png",
    titlebar_ontop_button_focus_active        = awesome_default .. "/titlebar/ontop_focus_active.png",
    titlebar_sticky_button_normal_inactive    = awesome_default .. "/titlebar/sticky_normal_inactive.png",
    titlebar_sticky_button_focus_inactive     = awesome_default .. "/titlebar/sticky_focus_inactive.png",
    titlebar_sticky_button_normal_active      = awesome_default .. "/titlebar/sticky_normal_active.png",
    titlebar_sticky_button_focus_active       = awesome_default .. "/titlebar/sticky_focus_active.png",
    titlebar_floating_button_normal_inactive  = awesome_default .. "/titlebar/floating_normal_inactive.png",
    titlebar_floating_button_focus_inactive   = awesome_default .. "/titlebar/floating_focus_inactive.png",
    titlebar_floating_button_normal_active    = awesome_default .. "/titlebar/floating_normal_active.png",
    titlebar_floating_button_focus_active     = awesome_default .. "/titlebar/floating_focus_active.png",
    titlebar_maximized_button_normal_inactive = awesome_default .. "/titlebar/maximized_normal_inactive.png",
    titlebar_maximized_button_focus_inactive  = awesome_default .. "/titlebar/maximized_focus_inactive.png",
    titlebar_maximized_button_normal_active   = awesome_default .. "/titlebar/maximized_normal_active.png",
    titlebar_maximized_button_focus_active    = awesome_default .. "/titlebar/maximized_focus_active.png",

    -- local --
    layout_tile                               = theme_path .. "/layouts/tilew.png",
    layout_max                                = theme_path .. "/layouts/maxw.png",
    layout_fairh                              = theme_path .. "/layouts/fairhw.png",
    layout_fullscreen                         = theme_path .. "/layouts/fullscreenw.png",
    layout_spiral                             = theme_path.. "/layouts/spiralw.png",
    layout_cornerne                           = theme_path .. "/layouts/cornernew.png",

    -- default --
    layout_fairv                              = awesome_default .. "/layouts/fairvw.png",
    layout_floating                           = awesome_default .. "/layouts/floatingw.png",
    layout_magnifier                          = awesome_default .. "/layouts/magnifierw.png",
    layout_tilebottom                         = awesome_default .. "/layouts/tilebottomw.png",
    layout_tileleft                           = awesome_default .. "/layouts/tileleftw.png",
    layout_tiletop                            = awesome_default .. "/layouts/tiletopw.png",
    layout_dwindle                            = awesome_default .. "/layouts/dwindlew.png",
    layout_cornernw                           = awesome_default .. "/layouts/cornernww.png",
    layout_cornersw                           = awesome_default .. "/layouts/cornersww.png",
    layout_cornerse                           = awesome_default .. "/layouts/cornersew.png",
}
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
