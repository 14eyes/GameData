require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216734Trigger = class("Q7216734Trigger", GadgetActorProxy)
Q7216734Trigger.defaultAlias = "Q7216734Trigger"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216734Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216734Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216734Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):RequestInteraction(npcs.Npc20322Data.alias)
    self:DestroySelf()
end

function Q7216734Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216734Trigger
