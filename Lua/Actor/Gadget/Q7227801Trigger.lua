require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227801Trigger = class("Q7227801Trigger", GadgetActorProxy)
Q7227801Trigger.defaultAlias = "Q7227801Trigger"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227801Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72278"):RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q7227801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7227801Trigger
