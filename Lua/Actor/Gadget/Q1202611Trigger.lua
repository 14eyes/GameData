require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202611Trigger = class("Q1202611Trigger", GadgetActorProxy)
Q1202611Trigger.defaultAlias = "Q1202611Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202611Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202611Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202611Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):FinishQuestID(false, 1202611)
    self:DestroySelf()
end

function Q1202611Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202611Trigger
