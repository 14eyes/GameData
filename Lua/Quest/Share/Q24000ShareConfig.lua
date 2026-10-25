main_id = 24000
local tbl = {}
local n = 2400002
local v = 2400003
local n2 = 2400004
tbl[1] = 2400001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2400001"] = {},
    ["2400002"] = {},
    ["2400003"] = {
        npcs = {
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4442:3609.066,428.221,4584.756,0.000,260.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400004"] = {
        npcs = {
            {
                id = 5024,
                alias = "Npc5024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4443:3627.917,446.263,4474.120,0.000,290.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2400001"] = {
        npcs = {
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4415:3606.844,506.533,4603.666,0.000,5.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5082,
                alias = "Npc5082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400001_N13342",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400002"] = {
        npcs = {
            {
                id = 5046,
                alias = "Npc5046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400001_N13342",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4415:3606.844,506.533,4603.666,0.000,5.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5033,
                alias = "Npc5033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4442:3609.066,428.221,4584.756,0.000,260.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2400003"] = {
        npcs = {
            {
                id = 5046,
                alias = "Npc5046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400001_N13342",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5024,
                alias = "Npc5024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4443:3627.917,446.263,4474.120,0.000,290.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400004"] = {
        npcs = {
            {
                id = 5046,
                alias = "Npc5046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4415:3606.844,506.533,4603.666,0.000,5.370,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400001_N13342",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
