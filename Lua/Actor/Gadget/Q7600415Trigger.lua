require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600415Trigger = class("Q7600415Trigger", GadgetActorProxy)
Q7600415Trigger.defaultAlias = "Q7600415Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600415Trigger:OnPostDataPrepare()
    print("Q7600415Trigger - OnPostDataPrepare")
    this = self
end

function Q7600415Trigger:OnPostComponentPrepare()
    print("Q7600415Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600415Trigger:TriggerIn()
    print("Q7600415Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600415)
    this:DestroySelf()
end

function Q7600415Trigger:PreTriggerIn()
    print("Q7600415Trigger - PreTriggerIn")
end

function Q7600415Trigger:LightUpTriggerIn()
    print("Q7600415Trigger - LightUpTriggerIn")
end

function Q7600415Trigger:TriggerOut()
    print("Q7600415Trigger - TriggerOut")
end

return Q7600415Trigger
