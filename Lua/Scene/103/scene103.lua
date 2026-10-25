scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 4096.0, z = 4096.0},
    born_pos = {x = -214.0, y = 77.0, z = 10.0},
    born_rot = {x = 0.0, y = 41.6, z = 0.0},
    die_y = -800,
    vision_anchor = {x = -3000.0, z = -3000.0}
}

local tbl = {}
local n = 910302
local v = 910303
local n2 = 910304
local n3 = 910305
local n4 = 910399
tbl[1] = 910301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
blocks = tbl

block_rects = {
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = -1024.0, z = 1024.0}, max = {x = 0.0, z = 2048.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
