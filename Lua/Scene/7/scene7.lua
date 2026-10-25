scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 4096.0, z = 4096.0},
    born_pos = {x = 281.22, y = 144.887, z = 912.909},
    born_rot = {x = 0.0, y = 0.0, z = 0.0},
    die_y = 105,
    vision_anchor = {x = -3000.0, z = -3000.0}
}

local tbl = {}
local n = 7002
local v = 7003
local n2 = 7004
local n3 = 7005
local n4 = 7006
local n5 = 7007
local n6 = 7008
local n7 = 7009
local n8 = 7998
tbl[1] = 7001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
blocks = tbl

block_rects = {
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}},
    {min = {x = 1024.0, z = 0.0}, max = {x = 2048.0, z = 1024.0}},
    {min = {x = 1024.0, z = -1024.0}, max = {x = 2048.0, z = 0.0}},
    {min = {x = 0.0, z = 1024.0}, max = {x = 1024.0, z = 2048.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = 1024.0}, max = {x = 0.0, z = 2048.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
