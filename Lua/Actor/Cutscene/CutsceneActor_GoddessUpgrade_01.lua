require("Actor/ActorCommon")
local CutsceneActorProxy = require("Actor/Cutscene/CutsceneActorProxy")

local CutsceneActor_GoddessLvup = class("CutsceneActor_GoddessLvup", CutsceneActorProxy)
local v
local tbl = {}
local str = "WindField_Horizontal_01"
local str2 = "WindField_Horizontal_02"
local str3 = "WindField_Horizontal_03"
tbl[1] = "WindField_Vertical_01"
tbl[2] = str
tbl[3] = str2
tbl[4] = str3

function CutsceneActor_GoddessLvup:CreateWindLocal()
    if v ~= nil then
        local pos = v:GetPos()
        actorMgr:CreateActorWithPos("localWind", "Actor/Gadget/AirflowFieldActor", 70610101, 0, pos, {x = 0, y = 0, z = 0}, true, false)
    end
end

function CutsceneActor_GoddessLvup:DestroyWindLocal()
    local actor = actorMgr:GetActor("localWind")
    if actor ~= nil then
        if actor ~= actorMgr.dummyActor then
            goto lbl_15
        end
    end

    print("can not find localWind")
    goto lbl_17
    ::lbl_15::
    actor:DestroySelf()
    ::lbl_17::
end

function CutsceneActor_GoddessLvup:ShowEffect()
    if v ~= nil then
        local pos = v:GetPos()
        self:PlayEffect("Eff_Stages_WindSource01_PowerUp", pos)
    end
end

function CutsceneActor_GoddessLvup:Start()
    print("****************CutsceneActor_GoddessLvup:Start*******************")
    for i, value in ipairs(tbl) do
        local actor = actorMgr:GetActor(value)
        if actor ~= nil then
            if actor ~= actorMgr.dummyActor then
                goto lbl_24
            end
        end

        print("can not find " .. value)
        goto lbl_30
        ::lbl_24::
        if i == 1 then
            v = actor
        end

        actor:SetActive(false)
        ::lbl_30::
    end

    if v ~= nil then
        self:CallDelay(9, self.ShowEffect)
    end
end

function CutsceneActor_GoddessLvup:OnDestroy()
    print("#################CutsceneActor_GoddessLvup:OnDestroy()##################")
    self:DestroyWindLocal()
    for i, value in ipairs(tbl) do
        local actor = actorMgr:GetActor(value)
        if actor ~= nil then
            if actor ~= actorMgr.dummyActor then
                actor:SetActive(true)
            end
        end
    end

    v = nil
end

return CutsceneActor_GoddessLvup
