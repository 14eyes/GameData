require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202601Trigger = class("Q1202601Trigger", GadgetActorProxy)
Q1202601Trigger.defaultAlias = "Q1202601Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202601Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202601Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202601Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):FinishQuestID(false, 1202601)
end

function Q1202601Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202601Trigger
