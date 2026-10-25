require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302605Trigger = class("Q7302605Trigger", GadgetActorProxy)
Q7302605Trigger.defaultAlias = "Q7302605Trigger"
local Q73026ClientConfig = require("Quest/Client/Q73026ClientConfig")

local subIDs = Q73026ClientConfig.SubIDs
local npcs = Q73026ClientConfig.Npcs
local datas = Q73026ClientConfig.Datas

function Q7302605Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302605Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302605Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73026"):RequestInteraction(npcs.Npc20645Data.alias)
    self:DestroySelf()
end

function Q7302605Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302605Trigger
