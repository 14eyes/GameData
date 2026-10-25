require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003409Trigger = class("Q4003409Trigger", GadgetActorProxy)
Q4003409Trigger.defaultAlias = "Q4003409Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q4003409Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003409Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003409Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40034"):RequestInteraction(npcs.Npc3042Data.alias)
    self:DestroySelf()
end

function Q4003409Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003409Trigger
