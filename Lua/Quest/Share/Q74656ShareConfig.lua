main_id = 74656
local tbl = {}
local n = 7465602
tbl[1] = 7465601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"7465601"}}}}

rewind_data = {
    ["7465601"] = {},
    ["7465602"] = {
        npcs = {
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6060:3488.318,426.624,4482.836,0.000,335.634,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7465601"] = {
        npcs = {
            {
                id = 5020,
                alias = "Npc5020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6060:3488.318,426.624,4482.836,0.000,335.634,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7465602"] = {}
}
