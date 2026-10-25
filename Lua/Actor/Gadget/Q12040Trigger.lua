require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12040Trigger = class("Q12040Trigger", GadgetActorProxy)
Q12040Trigger.defaultAlias = "Q12040Trigger"
local Q12040ClientConfig = require("Quest/Client/Q12040ClientConfig")

local subIDs = Q12040ClientConfig.SubIDs
local npcs = Q12040ClientConfig.Npcs
local gadgets = Q12040ClientConfig.Gadgets
local datas = Q12040ClientConfig.Datas

function Q12040Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12040Trigger:TriggerOut()
    print("TriggerOut")
end

function Q12040Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12040Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12040"):FinishQuestID(false, 1204002)
    self:DestroySelf()
end

return Q12040Trigger
