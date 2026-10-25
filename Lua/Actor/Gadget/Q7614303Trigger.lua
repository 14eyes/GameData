require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614303Trigger = class("Q7614303Trigger", GadgetActorProxy)
Q7614303Trigger.defaultAlias = "Q7614303Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614303Trigger:OnPostDataPrepare()
    print("Q7614303Trigger - OnPostDataPrepare")
    this = self
end

function Q7614303Trigger:OnPostComponentPrepare()
    print("Q7614303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614303Trigger:TriggerIn()
    print("Q7614303Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614303)
    this:DestroySelf()
end

function Q7614303Trigger:PreTriggerIn()
    print("Q7614303Trigger - PreTriggerIn")
end

function Q7614303Trigger:LightUpTriggerIn()
    print("Q7614303Trigger - LightUpTriggerIn")
end

function Q7614303Trigger:TriggerOut()
    print("Q7614303Trigger - TriggerOut")
end

return Q7614303Trigger
