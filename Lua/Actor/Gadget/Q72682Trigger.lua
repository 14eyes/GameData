require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72682Trigger = class("Q72682Trigger", GadgetActorProxy)
Q72682Trigger.defaultAlias = "Q72682Trigger"
local Q72682ClientConfig = require("Quest/Client/Q72682ClientConfig")

local subIDs = Q72682ClientConfig.SubIDs
local npcs = Q72682ClientConfig.Npcs
local datas = Q72682ClientConfig.Datas

function Q72682Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72682Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72682Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72682"):RequestInteraction(npcs.Npc30065Data.alias)
    self:DestroySelf()
end

function Q72682Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72682Trigger
