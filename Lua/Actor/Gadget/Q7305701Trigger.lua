require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305701Trigger = class("Q7305701Trigger", GadgetActorProxy)
Q7305701Trigger.defaultAlias = "Q7305701Trigger"
local Q73057ClientConfig = require("Quest/Client/Q73057ClientConfig")

local subIDs = Q73057ClientConfig.SubIDs
local npcs = Q73057ClientConfig.Npcs
local datas = Q73057ClientConfig.Datas

function Q7305701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305701Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305701)
    self:DestroySelf()
end

function Q7305701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305701Trigger
