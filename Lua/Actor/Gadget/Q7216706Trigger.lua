require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216706Trigger = class("Q7216706Trigger", GadgetActorProxy)
Q7216706Trigger.defaultAlias = "Q7216706Trigger"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216706Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):RequestInteraction(npcs.Npc20322Data.alias)
    self:DestroySelf()
end

function Q7216706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216706Trigger
