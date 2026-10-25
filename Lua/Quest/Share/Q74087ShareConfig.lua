main_id = 74087
local tbl = {}
local n = 7408702
local v = 7408703
local n2 = 7408704
tbl[1] = 7408701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7408701"] = {}, ["7408702"] = {}, ["7408703"] = {}}

quest_data = {
    ["7408701"] = {},
    ["7408702"] = {
        npcs = {
            {
                id = 21084,
                alias = "Npc21084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5011:4823.708,469.960,3955.652,0.000,95.380,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5259,
                alias = "Npc5259",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5012:4823.807,469.960,3957.412,0.000,117.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7408703"] = {
        npcs = {
            {
                id = 21084,
                alias = "Npc21084",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6480:4848.640,463.960,3944.049,0.000,310.519,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5259,
                alias = "Npc5259",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6481:4846.982,463.960,3944.570,0.000,87.945,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7408704"] = {}
}
