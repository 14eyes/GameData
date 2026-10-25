require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71509Trigger = class("Q71509Trigger", GadgetActorProxy)
Q71509Trigger.defaultAlias = "Q71509Trigger"
local Q71509ClientConfig = require("Quest/Client/Q71509ClientConfig")

local subIDs = Q71509ClientConfig.SubIDs
local npcs = Q71509ClientConfig.Npcs

function Q71509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q71509Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("71509")
    actor:CreateQuestNpc(actor, npcs.Npc30181Data.id, 1)
    actor:RequestInteraction(npcs.Npc30181Data.alias)
    self:DestroySelf()
end

function Q71509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71509Trigger
