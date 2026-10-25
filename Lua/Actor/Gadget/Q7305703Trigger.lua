require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305703Trigger = class("Q7305703Trigger", GadgetActorProxy)
Q7305703Trigger.defaultAlias = "Q7305703Trigger"
local Q73057ClientConfig = require("Quest/Client/Q73057ClientConfig")

local subIDs = Q73057ClientConfig.SubIDs
local npcs = Q73057ClientConfig.Npcs
local datas = Q73057ClientConfig.Datas

function Q7305703Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305703Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305703Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305703)
    self:DestroySelf()
end

function Q7305703Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305703Trigger
