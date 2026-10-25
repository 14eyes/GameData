require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202512Trigger = class("Q1202512Trigger", GadgetActorProxy)
Q1202512Trigger.defaultAlias = "Q1202512Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202512Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202512Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202512Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):RequestInteraction(npcs.Npc12202Data.alias)
    self:DestroySelf()
end

function Q1202512Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202512Trigger
