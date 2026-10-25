require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73054Trigger = class("Q73054Trigger", GadgetActorProxy)
Q73054Trigger.defaultAlias = "Q73054Trigger"
local Q73054ClientConfig = require("Quest/Client/Q73054ClientConfig")

local subIDs = Q73054ClientConfig.SubIDs
local npcs = Q73054ClientConfig.Npcs
local datas = Q73054ClientConfig.Datas

function Q73054Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73054Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73054Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305401)
    self:DestroySelf()
end

function Q73054Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73054Trigger
