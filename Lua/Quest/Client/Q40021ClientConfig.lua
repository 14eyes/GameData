return {
    MainID = 40021,
    ActorAlias = "40021",
    SubIDs = {
        q4002110 = 4002110,
        q4002101 = 4002101,
        q4002102 = 4002102,
        q4002103 = 4002103,
        q4002113 = 4002113,
        q4002104 = 4002104,
        q4002105 = 4002105,
        q4002115 = 4002115,
        q4002111 = 4002111,
        q4002114 = 4002114,
        q4002116 = 4002116,
        q4002106 = 4002106,
        q4002117 = 4002117,
        q4002107 = 4002107,
        q4002108 = 4002108,
        q4002112 = 4002112,
        q4002109 = 4002109,
        q4002118 = 4002118
    },
    Npcs = {
        Npc1042Data = {
            id = 1042,
            alias = "Npc1042",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1038Data = {
            id = 1038,
            alias = "Npc1038",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10200Data = {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30067Data = {
            id = 30067,
            alias = "Npc30067",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget70710489Data2 = {
            id = 70710489,
            alias = "Gadget70710489Data2",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710489Data1 = {
            id = 70710489,
            alias = "Gadget70710489Data1",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710524Data1 = {
            id = 70710524,
            alias = "Gadget70710524data1",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710524Data2 = {
            id = 70710524,
            alias = "Gadget70710524data2",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710524Data3 = {
            id = 70710524,
            alias = "Gadget70710524data3",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Narrator1 = {
            narratorId = 4002104,
            pauseLen = 10,
            resumeLen = 5,
            tag = "StoryInMainPage",
            startCheckPause = true
        },
        Narrator2 = {
            narratorId = 4002106,
            pauseLen = 10,
            resumeLen = 5,
            tag = "StoryInMainPage",
            startCheckPause = true
        },
        Q40021Trigger1_ = {
            alias = "Q40021Trigger1",
            script = "Actor/Gadget/Q40021Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q40020gate")
        },
        Q40021Trigger2_ = {
            alias = "Q40021Trigger2",
            script = "Actor/Gadget/Q40021Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4002017player")
        },
        Q40021Trigger3_ = {
            alias = "Q40021Trigger3",
            script = "Actor/Gadget/Q40021Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(47002, "Q4002107target2")
        }
    }
}
