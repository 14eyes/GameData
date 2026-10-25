require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72278Trigger = class("Q72278Trigger", GadgetActorProxy)
Q72278Trigger.defaultAlias = "Q72278Trigger"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q72278Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72278Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72278Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72278"):RequestInteraction(npcs.Npc10090Data.alias)
    self:DestroySelf()
end

function Q72278Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72278Trigger
