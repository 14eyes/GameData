require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2503005Trigger = class("Q2503005Trigger", GadgetActorProxy)
Q2503005Trigger.defaultAlias = "Q2503005Trigger"
local Q25030ClientConfig = require("Quest/Client/Q25030ClientConfig")

local this
local subIDs = Q25030ClientConfig.SubIDs
local npcs = Q25030ClientConfig.Npcs
local points = Q25030ClientConfig.Points

function Q2503005Trigger:OnPostDataPrepare()
    print("Q2503005Trigger - OnPostDataPrepare")
    this = self
end

function Q2503005Trigger:OnPostComponentPrepare()
    print("Q2503005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(23, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25030)
end

function Q2503005Trigger:TriggerIn()
    print("Q2503005Trigger - TriggerIn")
    actorMgr:GetActor("25030"):RequestInteraction(npcs.Npc6088.alias, "", true)
    this:DestroySelf()
end

function Q2503005Trigger:PreTriggerIn()
    print("Q2503005Trigger - PreTriggerIn")
end

function Q2503005Trigger:LightUpTriggerIn()
    print("Q2503005Trigger - LightUpTriggerIn")
end

function Q2503005Trigger:TriggerOut()
    print("Q2503005Trigger - TriggerOut")
end

return Q2503005Trigger
