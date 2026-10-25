require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006802_Trigger = class("Q4006802_Trigger", GadgetActorProxy)
Q4006802_Trigger.defaultAlias = "Q4006802_Trigger"
local Q40068ClientConfig = require("Quest/Client/Q40068ClientConfig")

local subIDs = Q40068ClientConfig.SubIDs
local npcs = Q40068ClientConfig.Npcs
local datas = Q40068ClientConfig.Datas

function Q4006802_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006802_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006802_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40068"):RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4006802_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006802_Trigger
