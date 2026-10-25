return {
    MainID = 11022,
    ActorAlias = "11022",
    SubIDs = {
        q1102201 = 1102201,
        q1102202 = 1102202,
        q1102203 = 1102203,
        q1102207 = 1102207,
        q1102204 = 1102204,
        q1102205 = 1102205,
        q1102206 = 1102206
    },
    Npcs = {
        Npc10232Data = {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10303Data = {
            id = 10303,
            alias = "Npc10303",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10302Data = {
            id = 10302,
            alias = "Npc10302",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        GadgetData = {id = 71700097, alias = "", point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}}
    },
    Datas = {
        NarratorWithId01 = {narratorId = 1102203, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId02 = {narratorId = 1102205, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q1102207Trigger_ = {
            alias = "Q1102207Trigger",
            script = "Actor/Gadget/Q1102207Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1102207ZL")
        },
        Q1102203Trigger_ = {
            alias = "Q1102203Trigger",
            script = "Actor/Gadget/Q1102203Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11022Gad2")
        },
        NarratorWithId03 = {narratorId = 1102204, pauseLen = 10, resumeLen = 5, tag = "Story"}
    },
    CameraData = {pos = {x = 1253.035, y = 202.8256, z = -101.4509}, rot = {x = 7.537, y = 9.786, z = 0.0}},
    Ray = {
        {
            posA = sceneData:GetDummyPoint(3, "Q11022VP1").pos,
            posB = {
                x = sceneData:GetDummyPoint(3, "Q11022VP0").pos.x + (sceneData:GetDummyPoint(3, "Q11022VP1").pos.x - sceneData:GetDummyPoint(3, "Q11022VP0").pos.x) / 6 * 1,
                y = sceneData:GetDummyPoint(3, "Q11022VP0").pos.y + (sceneData:GetDummyPoint(3, "Q11022VP1").pos.y - sceneData:GetDummyPoint(3, "Q11022VP0").pos.y) / 6 * 1,
                z = sceneData:GetDummyPoint(3, "Q11022VP0").pos.z + (sceneData:GetDummyPoint(3, "Q11022VP1").pos.z - sceneData:GetDummyPoint(3, "Q11022VP0").pos.z) / 6 * 1
            }
        },
        {
            posA = sceneData:GetDummyPoint(3, "Q11022VP2").pos,
            posB = {
                x = sceneData:GetDummyPoint(3, "Q11022VP0").pos.x + (sceneData:GetDummyPoint(3, "Q11022VP2").pos.x - sceneData:GetDummyPoint(3, "Q11022VP0").pos.x) / 6 * 1,
                y = sceneData:GetDummyPoint(3, "Q11022VP0").pos.y + (sceneData:GetDummyPoint(3, "Q11022VP2").pos.y - sceneData:GetDummyPoint(3, "Q11022VP0").pos.y) / 6 * 1,
                z = sceneData:GetDummyPoint(3, "Q11022VP0").pos.z + (sceneData:GetDummyPoint(3, "Q11022VP2").pos.z - sceneData:GetDummyPoint(3, "Q11022VP0").pos.z) / 6 * 1
            }
        },
        {
            posA = sceneData:GetDummyPoint(3, "Q11022VP3").pos,
            posB = {
                x = sceneData:GetDummyPoint(3, "Q11022VP0").pos.x + (sceneData:GetDummyPoint(3, "Q11022VP3").pos.x - sceneData:GetDummyPoint(3, "Q11022VP0").pos.x) / 6 * 1,
                y = sceneData:GetDummyPoint(3, "Q11022VP0").pos.y + (sceneData:GetDummyPoint(3, "Q11022VP3").pos.y - sceneData:GetDummyPoint(3, "Q11022VP0").pos.y) / 6 * 1,
                z = sceneData:GetDummyPoint(3, "Q11022VP0").pos.z + (sceneData:GetDummyPoint(3, "Q11022VP3").pos.z - sceneData:GetDummyPoint(3, "Q11022VP0").pos.z) / 6 * 1
            }
        }
    }
}
