require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006714_Trigger = class("Q4006714_Trigger", GadgetActorProxy)
Q4006714_Trigger.defaultAlias = "Q4006714_Trigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006714_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006714_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006714_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40067"):RequestInteraction(npcs.Npc12625Data.alias)
    self:DestroySelf()
end

function Q4006714_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006714_Trigger
