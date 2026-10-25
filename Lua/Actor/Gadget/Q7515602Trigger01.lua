require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515602Trigger01 = class("Q7515602Trigger01", GadgetActorProxy)
Q7515602Trigger01.defaultAlias = "Q7515602Trigger01"
local Q75156ClientConfig = require("Quest/Client/Q75156ClientConfig")

local this
local subIDs = Q75156ClientConfig.SubIDs
local npcs = Q75156ClientConfig.Npcs

function Q7515602Trigger01:OnPostDataPrepare()
    print("[MainId: 75156][Trigger: Q7515602Trigger01] OnPostDataPrepare")
    this = self
end

function Q7515602Trigger01:OnPostComponentPrepare()
    print("[MainId: 75156][Trigger: Q7515602Trigger01] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75156)
end

function Q7515602Trigger01:TriggerIn()
    print("[MainId: 75156][Trigger: Q7515602Trigger01] TriggerIn")
    actorMgr:GetActor("75156"):RequestInteraction(npcs.Npc21778Data.alias, "", true)
end

function Q7515602Trigger01:PreTriggerIn()
    print("[MainId: 75156][Trigger: Q7515602Trigger01] PreTriggerIn")
end

function Q7515602Trigger01:LightUpTriggerIn()
    print("[MainId: 75156][Trigger: Q7515602Trigger01] LightUpTriggerIn")
end

function Q7515602Trigger01:TriggerOut()
    print("[MainId: 75156][Trigger: Q7515602Trigger01] TriggerOut")
end

return Q7515602Trigger01
