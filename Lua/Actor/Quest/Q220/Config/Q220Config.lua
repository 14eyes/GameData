require("Actor/ActorCommon")

local Q220Config = {
    MainID = 220,
    ActorAlias = "220",
    SubIDs = {q22002 = 22002, q22003 = 22003, q22004 = 22004, q22005 = 22005},
    WendyData = {
        Wendy = "Wendy",
        WendyScript = "Actor/Quest/Q220/Wendy22003",
        WendyID = 102,
        bornPos = M.Pos(1426, 56.4, 176),
        bornDir = M.Dir(0, -36, 0),
        EvtFinishDance = 10079
    }
}

local extrasData = {Extras = "Extras", ExtrasAudience = "Actor/Quest/Q220/WendyAudience"}
local extrasIDs = {}
local n = 37
extrasIDs[1] = 5
extrasIDs[2] = n
extrasData.ExtrasIDs = extrasIDs
extrasData.ExtrasOriginPos = {(M.Pos(1429.2, 56.8, 184)), M.Pos(1425.79, 56.38, 178.15)}
extrasData.ExtrasOriginDir = {(M.Dir(0, 0, 0)), M.Dir(0, 0, 0)}
extrasData.ExtrasSeatPos = {(M.Pos(1424, 56.4, 177)), M.Pos(1425.79, 56.38, 178.15)}
extrasData.ExtrasSeatDir = {(M.Dir(0, 150, 0)), M.Dir(0, 160, 0)}

extrasData.ExtrasReturnCallback = {
    nil,
    function(arg1)
        arg1:Destroy(false)
    end
}

Q220Config.ExtrasData = extrasData

Q220Config.GaiaData = {
    Gaia = "Gaia",
    GaiaScript = "Actor/Quest/Q220/Gaia22003",
    GaiaID = 103,
    bornPos = M.Pos(1403, 57.4, 195),
    bornDir = M.Dir(0, -36, 0),
    FirstPos = M.Pos(1397.4, 60, 363),
    BeFollowLen = 10,
    BeFollowFailedLen = 20
}

Q220Config.AudienceInter = {
    {
        {type = InteractionType.STEER_TO, steerType = DialogSteerType.TO_LOCAL_AVATAR, duration = 1.0},
        {
            type = InteractionType.CAMERA_MOVE,
            cameraPosType = StoryCameraPosType.RELATIVE_TO_INTER,
            camPosOffset = {x = 0, y = 0.5, z = 0},
            nearLength = 2,
            camTargetType = StoryCameraTargetType.TO_INTEE,
            camForwardTargetOffset = {x = 0, y = 0.5, z = 0},
            duration = 1.0,
            lerpRatio = 5.0,
            lerpPattern = 0
        },
        {
            type = InteractionType.DIALOG,
            dialogType = DialogType.LOCK_FRAME,
            talkerName = "\232\167\130\228\188\151",
            content = "\232\183\179\232\136\158\232\183\179\229\190\151\230\140\186\229\165\189\229\149\138"
        }
    },
    {
        {type = InteractionType.DIALOG_FINISH},
        {type = InteractionType.STEER_TO, steerType = DialogSteerType.RETURN, duration = 1.0},
        {
            type = InteractionType.CAMERA_MOVE,
            cameraPosType = StoryCameraPosType.EXIT,
            camPosOffset = {x = 0, y = 0, z = 0},
            nearLength = 0,
            camTargetType = StoryCameraTargetType.TO_INTEE,
            camForwardTargetOffset = {x = 0, y = 0, z = 0},
            duration = 1.0,
            lerpRatio = 5.0,
            lerpPattern = 1
        }
    }
}

local monsterData = {}
local monsterIDs = {}
local v = 20105101
monsterIDs[1] = 20103026
monsterIDs[2] = v
monsterData.MonsterIDs = monsterIDs
Q220Config.MonsterData = monsterData

Q220Config.CutsceneData = {
    Test1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        resPath = "ART/Cutscene/Cs_UnlockCityCutScene",
        startPosType = CutsceneInitPosType.RELATIVE_TO_LOCAL_AVATAR,
        startOffset = {x = 0, y = 3, z = 0}
    }
}

return Q220Config
