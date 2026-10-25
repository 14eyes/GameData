main_id = 76031
local tbl = {}
local n = 7603106
local v = 7603102
local n2 = 7603103
local n3 = 7603104
local n4 = 7603105
tbl[1] = 7603101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133603042"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7603101"] = {},
    ["7603102"] = {},
    ["7603103"] = {},
    ["7603104"] = {},
    ["7603105"] = {},
    ["7603106"] = {}
}

quest_data = {
    ["7603101"] = {
        npcs = {
            {
                id = 15605,
                alias = "Npc15605",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13935:2063.039,108.970,11194.080]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11918:2147.112,111.998,11212.790,0.000,-141.749,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13935:2063.039,108.970,11194.080]"}}
    },
    ["7603102"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11918:2147.112,111.998,11212.790,0.000,-141.749,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11927:1811.225,239.501,10372.150,0.000,68.146,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7103,
                alias = "Npc7103",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13727:1812.242,239.524,10372.550,0.000,248.358,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7603103"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11918:2147.112,111.998,11212.790,0.000,-141.749,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11928:1738.279,225.231,10409.350,0.000,296.517,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7104,
                alias = "Npc7104",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13729:1736.671,225.256,10410.620,0.000,127.121,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7105,
                alias = "Npc7105",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13728:1736.150,225.113,10409.750,0.000,104.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7603104"] = {},
    ["7603105"] = {},
    ["7603106"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11918:2147.112,111.998,11212.790,0.000,-141.749,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
