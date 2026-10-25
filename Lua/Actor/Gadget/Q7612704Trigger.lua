require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612704Trigger = class("Q7612704Trigger", GadgetActorProxy)
Q7612704Trigger.defaultAlias = "Q7612704Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612704Trigger:OnPostDataPrepare()
    print("Q7612704Trigger - OnPostDataPrepare")
    this = self
end

function Q7612704Trigger:OnPostComponentPrepare()
    print("Q7612704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612704Trigger:TriggerIn()
    print("Q7612704Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612704)
    this:DestroySelf()
end

function Q7612704Trigger:PreTriggerIn()
    print("Q7612704Trigger - PreTriggerIn")
end

function Q7612704Trigger:LightUpTriggerIn()
    print("Q7612704Trigger - LightUpTriggerIn")
end

function Q7612704Trigger:TriggerOut()
    print("Q7612704Trigger - TriggerOut")
end

return Q7612704Trigger
