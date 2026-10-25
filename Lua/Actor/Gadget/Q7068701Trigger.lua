require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7068701Trigger = class("Q7068701Trigger", GadgetActorProxy)
Q7068701Trigger.defaultAlias = "Q7068701Trigger"
local Q70687ClientConfig = require("Quest/Client/Q70687ClientConfig")

local this
local subIDs = Q70687ClientConfig.SubIDs
local npcs = Q70687ClientConfig.Npcs
local points = Q70687ClientConfig.Points

function Q7068701Trigger:OnPostDataPrepare()
    print("Q7068701Trigger - OnPostDataPrepare")
    this = self
end

function Q7068701Trigger:OnPostComponentPrepare()
    print("Q7068701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70687)
end

function Q7068701Trigger:TriggerIn()
    print("Q7068701Trigger - TriggerIn")
    actorMgr:GetActor("70687"):RequestInteraction(npcs.Npc9500.alias, "", true)
end

function Q7068701Trigger:PreTriggerIn()
    print("Q7068701Trigger - PreTriggerIn")
end

function Q7068701Trigger:LightUpTriggerIn()
    print("Q7068701Trigger - LightUpTriggerIn")
end

function Q7068701Trigger:TriggerOut()
    print("Q7068701Trigger - TriggerOut")
end

return Q7068701Trigger
