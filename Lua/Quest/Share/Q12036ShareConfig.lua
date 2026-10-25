main_id = 12036
sub_ids = {1203601}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
local tbl = {}
local v = {}
local quest_var = {}
local n = -1
local n2 = -1
local n3 = -1
local n4 = -1
quest_var[1] = 1
quest_var[2] = n
quest_var[3] = n2
quest_var[4] = n3
quest_var[5] = n4
v.quest_var = quest_var
tbl["1203601"] = v
rewind_data = tbl

quest_data = {
    ["1203601"] = {
        npcs = {
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203304_N1005",
                scene_id = 1061,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203304_N10000005",
                scene_id = 1061,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12451,
                alias = "Npc12451",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203410_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12523,
                alias = "Npc12523",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203410board",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12528,
                alias = "Npc12528",
                script = "Actor/Npc/TempNPC",
                pos = "Q12034board3",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12529,
                alias = "Npc12529",
                script = "Actor/Npc/TempNPC",
                pos = "Q12034board4",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}
