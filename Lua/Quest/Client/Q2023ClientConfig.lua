return {
    MainID = 2023,
    ActorAlias = "2023",
    SubIDs = {q202301 = 202301, q202302 = 202302, q202303 = 202303},
    Npcs = {
        Npc12163Data = {
            id = 12163,
            alias = "Npc12163",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q202301Trigger_ = {
            alias = "Q202301Trigger",
            script = "Actor/Gadget/Q202301Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "TestLock")
        },
        NarratorWithId = {narratorId = 202302, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorTable = {
            {dialogID = 20230201, audioEvtName = "", duration = 3},
            {dialogID = 20230202, audioEvtName = "", duration = 3}
        },
        GuardPos = {
            sceneData:GetDummyPoint(3, "TestLockGuard01").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard02").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard03").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard04").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard05").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard06").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard07").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard08").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard09").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard10").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard11").pos
        },
        GuardRot = {
            sceneData:GetDummyPoint(3, "TestLockGuard01").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard02").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard03").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard04").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard05").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard06").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard07").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard08").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard09").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard10").rot,
            sceneData:GetDummyPoint(3, "TestLockGuard11").rot
        },
        PlayerPos = {
            sceneData:GetDummyPoint(3, "TestLockGuard01").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard02").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard03").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard04").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard05").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard06").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard07").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard08").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard09").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard10").pos,
            sceneData:GetDummyPoint(3, "TestLockGuard11").pos
        }
    }
}
