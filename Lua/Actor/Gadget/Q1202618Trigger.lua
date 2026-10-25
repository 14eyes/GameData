require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202618Trigger = class("Q1202618Trigger", GadgetActorProxy)
Q1202618Trigger.defaultAlias = "Q1202618Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202618Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202618Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202618Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):RequestInteraction(npcs.Npc12201Data.alias)
    self:DestroySelf()
end

function Q1202618Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202618Trigger
