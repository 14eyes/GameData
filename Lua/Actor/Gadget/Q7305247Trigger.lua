require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305247Trigger = class("Q7305247Trigger", GadgetActorProxy)
Q7305247Trigger.defaultAlias = "Q7305247Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305247Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305247Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(9, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305247Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305247)
    self:DestroySelf()
end

function Q7305247Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305247Trigger
