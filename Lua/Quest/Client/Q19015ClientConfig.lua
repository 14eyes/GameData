return {
    MainID = 19015,
    ActorAlias = "19015",
    SubIDs = {
        q1901501 = 1901501,
        q1901502 = 1901502,
        q1901511 = 1901511,
        q1901503 = 1901503,
        q1901508 = 1901508,
        q1901509 = 1901509,
        q1901510 = 1901510,
        q1901504 = 1901504,
        q1901505 = 1901505,
        q1901506 = 1901506,
        q1901507 = 1901507
    },
    Npcs = {
        Npc12170Data = {
            id = 12170,
            alias = "Npc12170",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Coop_SayuData = {
            id = 504,
            alias = "Coop_Sayu",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3106Data = {
            id = 3106,
            alias = "Npc3106",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q19015Trigger_RunFinsh = {
            alias = "Q19015Trigger_RunFinsh",
            script = "Actor/Gadget/Q19015Trigger_RunFinsh",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19015_Sayu2_Pos")
        },
        Q19015Trigger_TrainningArea = {
            alias = "Q19015Trigger_TrainningArea",
            script = "Actor/Gadget/Q19015Trigger_TrainningArea",
            id = 70900002,
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Text_Fail1 = {"COOP_Black_Q19015_fail2"},
        Text_Fail2_OutTrigger = {"COOP_Black_Q19015_fail"},
        Q19015Trigger_BattleArea = {
            alias = "Q19015Trigger_BattleArea",
            script = "Actor/Gadget/Q19015Trigger_BattleArea",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19015_Battle_Pos")
        }
    }
}
