require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72280Trigger = class("Q72280Trigger", GadgetActorProxy)
Q72280Trigger.defaultAlias = "Q72280Trigger"
local Q72280ClientConfig = require("Quest/Client/Q72280ClientConfig")

local subIDs = Q72280ClientConfig.SubIDs
local npcs = Q72280ClientConfig.Npcs
local datas = Q72280ClientConfig.Datas

function Q72280Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72280Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72280Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72280"):RequestInteraction(npcs.Npc3082Data.alias)
    self:DestroySelf()
end

function Q72280Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72280Trigger
