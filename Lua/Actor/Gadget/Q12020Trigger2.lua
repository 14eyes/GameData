require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12020Trigger2 = class("Q12020Trigger2", GadgetActorProxy)
Q12020Trigger2.defaultAlias = "Q12020Trigger2"
local Q12020ClientConfig = require("Quest/Client/Q12020ClientConfig")

local subIDs = Q12020ClientConfig.SubIDs
local npcs = Q12020ClientConfig.Npcs

function Q12020Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12020Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12020Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12020"):RequestInteraction(npcs.Npc12061Data.alias)
end

function Q12020Trigger2:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12020Trigger2
