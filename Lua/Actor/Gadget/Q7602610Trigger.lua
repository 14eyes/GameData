require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602610Trigger = class("Q7602610Trigger", GadgetActorProxy)
Q7602610Trigger.defaultAlias = "Q7602610Trigger"
local Q76026ClientConfig = require("Quest/Client/Q76026ClientConfig")

local this
local subIDs = Q76026ClientConfig.SubIDs
local datas = Q76026ClientConfig.Datas
local npcs = Q76026ClientConfig.Npcs
local points = Q76026ClientConfig.Points

function Q7602610Trigger:OnPostDataPrepare()
    print("Q7602610Trigger - OnPostDataPrepare")
    this = self
end

function Q7602610Trigger:OnPostComponentPrepare()
    print("Q7602610Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76026)
end

function Q7602610Trigger:TriggerIn()
    print("Q7602610Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602610)
    this:DestroySelf()
end

function Q7602610Trigger:PreTriggerIn()
    print("Q7602610Trigger - PreTriggerIn")
end

function Q7602610Trigger:LightUpTriggerIn()
    print("Q7602610Trigger - LightUpTriggerIn")
end

function Q7602610Trigger:TriggerOut()
    print("Q7602610Trigger - TriggerOut")
end

return Q7602610Trigger
