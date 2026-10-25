require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007805Trigger = class("Q4007805Trigger", GadgetActorProxy)
Q4007805Trigger.defaultAlias = "Q4007805Trigger"
local Q40078ClientConfig = require("Quest/Client/Q40078ClientConfig")

local subIDs = Q40078ClientConfig.SubIDs
local npcs = Q40078ClientConfig.Npcs
local gadgets = Q40078ClientConfig.Gadgets
local datas = Q40078ClientConfig.Datas

function Q4007805Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007805Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13.30748, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007805Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007805)
    local actor = actorMgr:GetActor("40078")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4007802)
    globalActor:StopLocalAvatar()
    actor:EnablePlayerInput(false)
    actor:EnterSceneLookCamera({x = 2129.267, y = 210.799, z = -540.527}, 0, 3, false, false)
    actor:CallDelay(2, function(arg1)
        actorMgr:GetActor("40078"):EnablePlayerInput(true)
    end)

    self:DestroySelf()
end

function Q4007805Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007805Trigger
