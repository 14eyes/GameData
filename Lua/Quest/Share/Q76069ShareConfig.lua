main_id = 76069
local tbl = {}
local n = 7606902
local v = 7606903
local n2 = 7606905
local n3 = 7606904
tbl[1] = 7606901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7606901"] = {}, ["7606902"] = {}, ["7606903"] = {}, ["7606904"] = {}, ["7606905"] = {}}

quest_data = {
    ["7606901"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1013, pos = "[20337_2:530.000,11.860,368.435]"}}
    },
    ["7606902"] = {},
    ["7606903"] = {},
    ["7606904"] = {
        npcs = {
            {
                id = 16279,
                alias = "Npc16279",
                script = "Actor/Npc/TempNPC",
                pos = "[20337_1:526.255,11.860,390.934]",
                scene_id = 20337,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7606905"] = {}
}
