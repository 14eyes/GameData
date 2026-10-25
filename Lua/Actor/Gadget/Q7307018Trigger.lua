require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7307018Trigger = class("Q7307018Trigger", GadgetActorProxy)
Q7307018Trigger.defaultAlias = "Q7307018Trigger"
local Q73070ClientConfig = require("Quest/Client/Q73070ClientConfig")

local subIDs = Q73070ClientConfig.SubIDs
local npcs = Q73070ClientConfig.Npcs
local datas = Q73070ClientConfig.Datas

function Q7307018Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7307018Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7307018Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7307018)
    self:DestroySelf()
end

function Q7307018Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7307018Trigger
