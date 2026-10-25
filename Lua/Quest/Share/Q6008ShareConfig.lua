main_id = 6008
local tbl = {}
local n = 600802
local v = 600803
tbl[1] = 600801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["600801"] = {}, ["600802"] = {}}

quest_data = {
    ["600801"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11735:1939.338,236.522,10535.540,0.000,38.492,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["600802"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11739:2143.145,109.201,11210.940,359.932,232.280,2.410]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["600803"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11739:2143.145,109.201,11210.940,359.932,232.280,2.410]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
