require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502013_trigger = class("Q1502013_trigger", GadgetActorProxy)
Q1502013_trigger.defaultAlias = "Q1502013_trigger"
local Q15020ClientConfig = require("Quest/Client/Q15020ClientConfig")

local this
local subIDs = Q15020ClientConfig.SubIDs
local datas = Q15020ClientConfig.Datas
local npcs = Q15020ClientConfig.Npcs
local points = Q15020ClientConfig.Points

function Q1502013_trigger:OnPostDataPrepare()
    print("Q1502013_trigger - OnPostDataPrepare")
    this = self
end

function Q1502013_trigger:OnPostComponentPrepare()
    print("Q1502013_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15020)
end

function Q1502013_trigger:TriggerIn()
    print("Q1502013_trigger - TriggerIn")
    actorMgr:GetActor("15020"):RequestInteraction(npcs.Npc21711.alias, "", true)
    this:DestroySelf()
end

function Q1502013_trigger:PreTriggerIn()
    print("Q1502013_trigger - PreTriggerIn")
end

function Q1502013_trigger:LightUpTriggerIn()
    print("Q1502013_trigger - LightUpTriggerIn")
end

function Q1502013_trigger:TriggerOut()
    print("Q1502013_trigger - TriggerOut")
end

return Q1502013_trigger
