return {
    MainID = 11120,
    ActorAlias = "11120",
    SubIDs = {q1112001 = 1112001, q1112005 = 1112005, q1112002 = 1112002, q1112003 = 1112003, q1112004 = 1112004},
    Npcs = {
        Npc2078Data = {
            id = 2078,
            alias = "Npc2078",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10232Data = {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10377Data = {
            id = 10377,
            alias = "Npc10377",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10376Data = {
            id = 10376,
            alias = "Npc10376",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2148Data = {
            id = 2148,
            alias = "Npc2148",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc214801Data = {
            id = 214801,
            alias = "Npc214801",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId_1112002 = {narratorId = 1112002, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q11120Trigger_Boss_ = {
            alias = "Q11120Trigger_Boss",
            script = "Actor/Gadget/Q11120Trigger_Boss",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11120_Player_Boss2_Pos")
        },
        Q11120Trigger_Zhongli_ = {
            alias = "Q11120Trigger_Zhongli",
            script = "Actor/Gadget/Q11120Trigger_Zhongli",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11120_Zhongli_Pos")
        }
    }
}
