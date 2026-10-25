require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202603Trigger = class("Q1202603Trigger", GadgetActorProxy)
Q1202603Trigger.defaultAlias = "Q1202603Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202603Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202603Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202603Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12026")
    actor:FinishQuestID(false, 1202603)
    actor:Destroy(false)
end

function Q1202603Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202603Trigger
