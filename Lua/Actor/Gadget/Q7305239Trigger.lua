require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305239Trigger = class("Q7305239Trigger", GadgetActorProxy)
Q7305239Trigger.defaultAlias = "Q7305239Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305239Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305239Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305239Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 0)
    self:DestroySelf()
end

function Q7305239Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305239Trigger
