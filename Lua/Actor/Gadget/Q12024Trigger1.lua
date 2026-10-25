require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12024Trigger1 = class("Q12024Trigger1", GadgetActorProxy)
Q12024Trigger1.defaultAlias = "Q12024Trigger1"
local Q12024ClientConfig = require("Quest/Client/Q12024ClientConfig")

local subIDs = Q12024ClientConfig.SubIDs
local npcs = Q12024ClientConfig.Npcs

function Q12024Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12024Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12024Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12024"):RequestInteraction(npcs.Npc1037Data.alias)
end

function Q12024Trigger1:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12024Trigger1
