require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007112_Trigger = class("Q4007112_Trigger", GadgetActorProxy)
Q4007112_Trigger.defaultAlias = "Q4007112_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local datas = Q40071ClientConfig.Datas

function Q4007112_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007112_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007112_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40071"):RequestInteraction(npcs.Npc12626Data.alias)
    self:DestroySelf()
end

function Q4007112_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007112_Trigger
