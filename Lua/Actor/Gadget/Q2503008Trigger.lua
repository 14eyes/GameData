require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2503008Trigger = class("Q2503008Trigger", GadgetActorProxy)
Q2503008Trigger.defaultAlias = "Q2503008Trigger"
local Q25030ClientConfig = require("Quest/Client/Q25030ClientConfig")

local this
local subIDs = Q25030ClientConfig.SubIDs
local npcs = Q25030ClientConfig.Npcs
local points = Q25030ClientConfig.Points

function Q2503008Trigger:OnPostDataPrepare()
    print("Q2503008Trigger - OnPostDataPrepare")
    this = self
end

function Q2503008Trigger:OnPostComponentPrepare()
    print("Q2503008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25030)
end

function Q2503008Trigger:TriggerIn()
    print("Q2503008Trigger - TriggerIn")
    actorMgr:GetActor("25030"):RequestInteraction(npcs.Npc6088.alias, "", true)
    this:DestroySelf()
end

function Q2503008Trigger:PreTriggerIn()
    print("Q2503008Trigger - PreTriggerIn")
end

function Q2503008Trigger:LightUpTriggerIn()
    print("Q2503008Trigger - LightUpTriggerIn")
end

function Q2503008Trigger:TriggerOut()
    print("Q2503008Trigger - TriggerOut")
end

return Q2503008Trigger
