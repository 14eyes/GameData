require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1031Trigger2 = class("Q1031Trigger2", GadgetActorProxy)
Q1031Trigger2.defaultAlias = "Q1031Trigger2"
local Q1031ClientConfig = require("Quest/Client/Q1031ClientConfig")

local subIDs = Q1031ClientConfig.SubIDs
local npcs = Q1031ClientConfig.Npcs

function Q1031Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1031Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1031Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1031"):RequestInteraction(npcs.Npc1048Data.alias)
    self:DestroySelf()
end

function Q1031Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q1031Trigger2
