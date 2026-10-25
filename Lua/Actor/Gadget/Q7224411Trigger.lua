require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224411Trigger = class("Q7224411Trigger", GadgetActorProxy)
Q7224411Trigger.defaultAlias = "Q7224411Trigger"
local Q72244ClientConfig = require("Quest/Client/Q72244ClientConfig")

local subIDs = Q72244ClientConfig.SubIDs
local npcs = Q72244ClientConfig.Npcs
local datas = Q72244ClientConfig.Datas

function Q7224411Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224411Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15.09599, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224411Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72244"):FinishQuestID(false, 7224411)
    self:DestroySelf()
end

function Q7224411Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224411Trigger
