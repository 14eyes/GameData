require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72274Trigger1 = class("Q72274Trigger1", GadgetActorProxy)
Q72274Trigger1.defaultAlias = "Q72274Trigger1"
local Q72274ClientConfig = require("Quest/Client/Q72274ClientConfig")

local subIDs = Q72274ClientConfig.SubIDs
local npcs = Q72274ClientConfig.Npcs

function Q72274Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72274Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, sceneData:GetDummyPoint(40050, "Q7227402"), self.TriggerIn, self.TriggerOut)
end

function Q72274Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72274"):RequestInteraction(npcs.Npc10325Data.alias)
    self:DestroySelf()
end

function Q72274Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72274Trigger1
