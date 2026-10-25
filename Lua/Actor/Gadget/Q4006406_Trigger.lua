require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006406_Trigger = class("Q4006406_Trigger", GadgetActorProxy)
Q4006406_Trigger.defaultAlias = "Q4006406_Trigger"
local Q40064ClientConfig = require("Quest/Client/Q40064ClientConfig")

local subIDs = Q40064ClientConfig.SubIDs
local npcs = Q40064ClientConfig.Npcs
local gadgets = Q40064ClientConfig.Gadgets
local datas = Q40064ClientConfig.Datas

function Q4006406_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006406_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006406_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40064"):RequestInteraction(npcs.Npc10011Data.alias)
    self:DestroySelf()
end

function Q4006406_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006406_Trigger
