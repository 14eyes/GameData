require("Actor/ActorCommon")
local CutsceneActorProxy = require("Actor/Cutscene/CutsceneActorProxy")

local CutsceneActor_GoddessLvup = class("CutsceneActor_GoddessLvup", CutsceneActorProxy)
local str = "mywind"
local actor

local function func()
    local pos = actor:GetPos()
    actor:PlayEffect("FlyRace_Marker_Active_AS", pos)
end

function CutsceneActor_GoddessLvup:Start()
    print("****************CutsceneActor_GoddessLvup:Start*******************")
    actor = actorMgr:GetActor(str)
    if actor ~= nil then
        if actor ~= actorMgr.dummyActor then
            goto lbl_25
        end
    end

    actor = nil
    print("can not find " .. str)
    goto lbl_33
    ::lbl_25::
    actor:SetActive(false)
    self:CallDelay(1, func)
    ::lbl_33::
end

function CutsceneActor_GoddessLvup:OnDestroy()
    print("#################CutsceneActor_GoddessLvup:OnDestroy()##################")
    if actor ~= nil then
        actor:SetActive(true)
        actor = nil
    end
end

return CutsceneActor_GoddessLvup
