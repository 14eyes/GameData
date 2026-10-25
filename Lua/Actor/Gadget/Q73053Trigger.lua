require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73053Trigger = class("Q73053Trigger", GadgetActorProxy)
Q73053Trigger.defaultAlias = "Q73053Trigger"
local Q73053ClientConfig = require("Quest/Client/Q73053ClientConfig")

local subIDs = Q73053ClientConfig.SubIDs
local npcs = Q73053ClientConfig.Npcs
local datas = Q73053ClientConfig.Datas

function Q73053Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73053Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73053Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305301)
    self:DestroySelf()
end

function Q73053Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73053Trigger
