require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22019Trigger1 = class("Q22019Trigger1", GadgetActorProxy)
Q22019Trigger1.defaultAlias = "Q22019Trigger1"
local Q22019ClientConfig = require("Quest/Client/Q22019ClientConfig")

local subIDs = Q22019ClientConfig.SubIDs
local npcs = Q22019ClientConfig.Npcs

function Q22019Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22019Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22019Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22019"):RequestInteraction(npcs.Npc3041Data.alias)
end

function Q22019Trigger1:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q22019Trigger1
