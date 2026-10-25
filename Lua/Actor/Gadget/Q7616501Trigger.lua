require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616501Trigger = class("Q7616501Trigger", GadgetActorProxy)
Q7616501Trigger.defaultAlias = "Q7616501Trigger"
local Q76165ClientConfig = require("Quest/Client/Q76165ClientConfig")

local this
local subIDs = Q76165ClientConfig.SubIDs
local npcs = Q76165ClientConfig.Npcs

function Q7616501Trigger:OnPostDataPrepare()
    print("Q7616501Trigger - OnPostDataPrepare")
    this = self
end

function Q7616501Trigger:OnPostComponentPrepare()
    print("Q7616501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76165)
end

function Q7616501Trigger:TriggerIn()
    print("Q7616501Trigger - TriggerIn")
    actorMgr:GetActor("76165"):CreateQuestNpc(quest, npcs.Paimon.id, 0, false, 0)
    actorMgr:GetActor("76165"):RequestInteraction(npcs.Paimon.alias, "", true)
    this:DestroySelf()
end

function Q7616501Trigger:PreTriggerIn()
    print("Q7616501Trigger - PreTriggerIn")
end

function Q7616501Trigger:LightUpTriggerIn()
    print("Q7616501Trigger - LightUpTriggerIn")
end

function Q7616501Trigger:TriggerOut()
    print("Q7616501Trigger - TriggerOut")
end

return Q7616501Trigger
