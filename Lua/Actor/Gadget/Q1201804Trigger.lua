require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201804Trigger = class("Q1201804Trigger", GadgetActorProxy)
Q1201804Trigger.defaultAlias = "Q1201804Trigger"
local Q12018ClientConfig = require("Quest/Client/Q12018ClientConfig")

local subIDs = Q12018ClientConfig.SubIDs
local npcs = Q12018ClientConfig.Npcs
local datas = Q12018ClientConfig.Datas

function Q1201804Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201804Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201804Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12018")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(1062, "Q12018Kujou_kamaji1").pos, 0, 3, true, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId120180402)
    actor:FinishQuestID(false, 1201804)
    self:DestroySelf()
end

function Q1201804Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201804Trigger
