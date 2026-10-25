require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76026Trigger = class("Q76026Trigger", GadgetActorProxy)
Q76026Trigger.defaultAlias = "Q76026Trigger"
local Q76026ClientConfig = require("Quest/Client/Q76026ClientConfig")

local this
local subIDs = Q76026ClientConfig.SubIDs
local datas = Q76026ClientConfig.Datas
local npcs = Q76026ClientConfig.Npcs
local points = Q76026ClientConfig.Points

function Q76026Trigger:OnPostDataPrepare()
    print("Q76026Trigger - OnPostDataPrepare")
    this = self
end

function Q76026Trigger:OnPostComponentPrepare()
    print("Q76026Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(46.235153, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76026)
end

function Q76026Trigger:TriggerIn()
    print("Q76026Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602608)
    this:DestroySelf()
end

function Q76026Trigger:PreTriggerIn()
    print("Q76026Trigger - PreTriggerIn")
end

function Q76026Trigger:LightUpTriggerIn()
    print("Q76026Trigger - LightUpTriggerIn")
end

function Q76026Trigger:TriggerOut()
    print("Q76026Trigger - TriggerOut")
end

return Q76026Trigger
