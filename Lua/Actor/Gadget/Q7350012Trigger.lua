require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350012Trigger = class("Q7350012Trigger", GadgetActorProxy)
Q7350012Trigger.defaultAlias = "Q7350012Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350012Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350012Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350012Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73500"):RequestInteraction(npcs.Npc1051Data.alias)
    self:DestroySelf()
end

function Q7350012Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350012Trigger
