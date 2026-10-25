require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902507Trigger = class("Q7902507Trigger", GadgetActorProxy)
Q7902507Trigger.defaultAlias = "Q7902507Trigger"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902507Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902507)
    self:DestroySelf()
end

function Q7902507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7902507Trigger
