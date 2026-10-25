require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005103Trigger = class("Q4005103Trigger", GadgetActorProxy)
Q4005103Trigger.defaultAlias = "Q4005103Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18.4468, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005103Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40051")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4005102, nil, 40051)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4005103_guide").pos, 0, 1.5, false, false)
    self:DestroySelf()
end

function Q4005103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005103Trigger
