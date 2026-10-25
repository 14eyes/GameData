return {
    MainID = 11045,
    ActorAlias = "11045",
    SubIDs = {
        q1104501 = 1104501,
        q1104502 = 1104502,
        q1104508 = 1104508,
        q1104506 = 1104506,
        q1104509 = 1104509,
        q1104511 = 1104511,
        q1104510 = 1104510,
        q1104507 = 1104507,
        q1104503 = 1104503,
        q1104504 = 1104504,
        q1104505 = 1104505
    },
    Npcs = {
        Npc1018Data = {
            id = 1018,
            alias = "Npc1018",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1020Data = {
            id = 1020,
            alias = "Npc1020",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc158701Data = {
            id = 158701,
            alias = "Npc158701",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget71700097Data = {
            id = 71700097,
            alias = "Gadget71700097",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Q11045Puzzle2 = {
            id = 71700097,
            alias = "Gadget71700097",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorPuzzle1 = {narratorId = 1104502, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorPuzzle2 = {narratorId = 1104506, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorBeforeUnlock = {narratorId = 1104503, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorUnlocked = {narratorId = 1104504, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q1104502Trigger_ = {
            alias = "Q1104502Trigger",
            script = "Actor/Gadget/Q1104502Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11045Gad1")
        },
        Q1104503Trigger_ = {
            alias = "Q1104503Trigger",
            script = "Actor/Gadget/Q1104503Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11045Gad2")
        },
        Q1104507Trigger_ = {
            alias = "Q1104507Trigger",
            script = "Actor/Gadget/Q1104507Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11045Albedo1")
        },
        Q1104501Trigger_ = {
            alias = "Q1104501Trigger",
            script = "Actor/Gadget/Q1104501Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11045Albedo1")
        },
        Q1104504Trigger_ = {
            alias = "Q1104504Trigger",
            script = "Actor/Gadget/Q1104504Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11045Albedo2")
        }
    }
}
