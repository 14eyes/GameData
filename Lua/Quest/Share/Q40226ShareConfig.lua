main_id = 40226
local tbl = {}
local n = 4022602
tbl[1] = 4022601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl2 = {}
local str = "201204016,1"
tbl2[1] = "1204"
tbl2[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl2
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
v.SERVER = server
cancel_action = v
rewind_data = {["4022601"] = {}, ["4022602"] = {}}

quest_data = {
    ["4022601"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_152:8.846,1.351,9.881]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 4, scene_id = 3, pos = "[3_360700257:1434.887,208.062,9298.141,0.000,253.710,0.000]"}}
    },
    ["4022602"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700240:1412.849,204.349,9295.525]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 8, scene_id = 3, pos = "[3_360700257:1434.887,208.062,9298.141,0.000,253.710,0.000]"}}
    }
}
