require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302702Trigger = class("Q7302702Trigger", GadgetActorProxy)
Q7302702Trigger.defaultAlias = "Q7302702Trigger"
local Q73027ClientConfig = require("Quest/Client/Q73027ClientConfig")

local subIDs = Q73027ClientConfig.SubIDs
local npcs = Q73027ClientConfig.Npcs
local datas = Q73027ClientConfig.Datas

function Q7302702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302702Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73027"):RequestInteraction(npcs.Npc4185Data.alias)
    self:DestroySelf()
end

function Q7302702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302702Trigger
