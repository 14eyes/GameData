return {
    MainID = 40106,
    ActorAlias = "40106",
    SubIDs = {
        q4010601 = 4010601,
        q4010603 = 4010603,
        q4010604 = 4010604,
        q4010606 = 4010606,
        q4010602 = 4010602,
        q4010605 = 4010605
    },
    Npcs = {
        Npc1064Data = {
            id = 1064,
            alias = "Npc1064",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q4010602_TriggerOut = {pos = {x = -408.6665, y = 280.7111, z = 2742.927}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q4010603_TriggerOut = {pos = {x = -405.2367, y = 280.7111, z = 2742.242}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q4010603_TriggerOut2 = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q4010602_TriggerOut2 = sceneData:GetDummyPoint(3, "Q4010015_N1050"),
        TPos_Q4010602_TriggerIn = {pos = {x = -408.6665, y = 280.7111, z = 2742.927}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q4010606_TriggerOut = {pos = {x = -301.263, y = 242.098, z = 2864.498}, rot = {x = 0.0, y = 63.473, z = 0.0}},
        TPos_Q4010603_TriggerIn = {pos = {x = -405.2367, y = 280.7111, z = 2742.242}, rot = {x = 0, y = 0, z = 0}}
    },
    Datas = {
        Q4010602_TriggerIn = {
            alias = "Q4010602_TriggerOut",
            script = "Actor/Gadget/Q4010602_TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4010015_N1050")
        },
        Q4010603_TriggerIn = {
            alias = "Q4010603_TriggerOut",
            script = "Actor/Gadget/Q4010603_TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4010007_N13200")
        },
        Q4010602_TriggerOut = {
            alias = "Q4010602_TriggerOut2",
            script = "Actor/Gadget/Q4010602_TriggerOut2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4010015_N1050")
        },
        Q4010603_TriggerOut = {
            alias = "Q4010603_TriggerOut2",
            script = "Actor/Gadget/Q4010603_TriggerOut2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "")
        },
        Q4010606_TriggerOut = {
            alias = "Q4010606_TriggerOut",
            script = "Actor/Gadget/Q4010606_TriggerOut",
            id = 70900002,
            point = {pos = {x = -301.263, y = 242.098, z = 2864.498}, rot = {x = 0.0, y = 63.473, z = 0.0}}
        }
    }
}
