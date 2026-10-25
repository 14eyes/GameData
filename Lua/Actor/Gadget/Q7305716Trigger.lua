require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305716Trigger = class("Q7305716Trigger", GadgetActorProxy)
Q7305716Trigger.defaultAlias = "Q7305716Trigger"
local Q73057ClientConfig = require("Quest/Client/Q73057ClientConfig")

local subIDs = Q73057ClientConfig.SubIDs
local npcs = Q73057ClientConfig.Npcs
local datas = Q73057ClientConfig.Datas

function Q7305716Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305716Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305716Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305716)
    self:DestroySelf()
end

function Q7305716Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305716Trigger
