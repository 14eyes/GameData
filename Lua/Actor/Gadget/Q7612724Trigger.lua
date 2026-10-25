require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612724Trigger = class("Q7612724Trigger", GadgetActorProxy)
Q7612724Trigger.defaultAlias = "Q7612724Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612724Trigger:OnPostDataPrepare()
    print("Q7612724Trigger - OnPostDataPrepare")
    this = self
end

function Q7612724Trigger:OnPostComponentPrepare()
    print("Q7612724Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612724Trigger:TriggerIn()
    print("Q7612724Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612724)
    this:DestroySelf()
end

function Q7612724Trigger:PreTriggerIn()
    print("Q7612724Trigger - PreTriggerIn")
end

function Q7612724Trigger:LightUpTriggerIn()
    print("Q7612724Trigger - LightUpTriggerIn")
end

function Q7612724Trigger:TriggerOut()
    print("Q7612724Trigger - TriggerOut")
end

return Q7612724Trigger
