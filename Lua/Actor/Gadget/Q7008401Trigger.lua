require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7008401Trigger = class("Q7008401Trigger", GadgetActorProxy)
Q7008401Trigger.defaultAlias = "Q7008401Trigger"
local Q70084ClientConfig = require("Quest/Client/Q70084ClientConfig")

local this
local subIDs = Q70084ClientConfig.SubIDs
local npcs = Q70084ClientConfig.Npcs
local points = Q70084ClientConfig.Points

function Q7008401Trigger:OnPostDataPrepare()
    print("Q7008401Trigger - OnPostDataPrepare")
    this = self
end

function Q7008401Trigger:OnPostComponentPrepare()
    print("Q7008401Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(5.5, 10, 18, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70084)
end

function Q7008401Trigger:TriggerIn()
    print("Q7008401Trigger - TriggerIn")
    actorMgr:GetActor("70084"):RequestInteraction(npcs.Npc17062.alias, "", true)
end

function Q7008401Trigger:PreTriggerIn()
    print("Q7008401Trigger - PreTriggerIn")
end

function Q7008401Trigger:LightUpTriggerIn()
    print("Q7008401Trigger - LightUpTriggerIn")
end

function Q7008401Trigger:TriggerOut()
    print("Q7008401Trigger - TriggerOut")
end

return Q7008401Trigger
