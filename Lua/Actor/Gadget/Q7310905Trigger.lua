require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310905Trigger = class("Q7310905Trigger", GadgetActorProxy)
Q7310905Trigger.defaultAlias = "Q7310905Trigger"
local Q73109ClientConfig = require("Quest/Client/Q73109ClientConfig")

local subIDs = Q73109ClientConfig.SubIDs
local npcs = Q73109ClientConfig.Npcs
local datas = Q73109ClientConfig.Datas

function Q7310905Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310905Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310905Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73109"):RequestInteraction(npcs.Npc4160Data.alias)
    self:DestroySelf()
end

function Q7310905Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7310905Trigger
