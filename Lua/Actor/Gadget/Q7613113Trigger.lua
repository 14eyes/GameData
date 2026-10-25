require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613113Trigger = class("Q7613113Trigger", GadgetActorProxy)
Q7613113Trigger.defaultAlias = "Q7613113Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613113Trigger:OnPostDataPrepare()
    print("Q7613113Trigger - OnPostDataPrepare")
    this = self
end

function Q7613113Trigger:OnPostComponentPrepare()
    print("Q7613113Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613113Trigger:TriggerIn()
    print("Q7613113Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613113})
    this:DestroySelf()
end

function Q7613113Trigger:PreTriggerIn()
    print("Q7613113Trigger - PreTriggerIn")
end

function Q7613113Trigger:LightUpTriggerIn()
    print("Q7613113Trigger - LightUpTriggerIn")
end

function Q7613113Trigger:TriggerOut()
    print("Q7613113Trigger - TriggerOut")
end

return Q7613113Trigger
