require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12031Trigger = class("Q12031Trigger", GadgetActorProxy)
Q12031Trigger.defaultAlias = "Q12031Trigger"
local Q12031ClientConfig = require("Quest/Client/Q12031ClientConfig")

local subIDs = Q12031ClientConfig.SubIDs
local npcs = Q12031ClientConfig.Npcs
local gadgets = Q12031ClientConfig.Gadgets
local datas = Q12031ClientConfig.Datas

function Q12031Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12031Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12031Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12031")
    actorMgr:GetActor("12031"):FinishQuestID(false, 1203110)
    self:DestroySelf()
end

function Q12031Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12031Trigger
