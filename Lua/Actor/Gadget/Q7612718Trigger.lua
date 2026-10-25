require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612718Trigger = class("Q7612718Trigger", GadgetActorProxy)
Q7612718Trigger.defaultAlias = "Q7612718Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612718Trigger:OnPostDataPrepare()
    print("Q7612718Trigger - OnPostDataPrepare")
    this = self
end

function Q7612718Trigger:OnPostComponentPrepare()
    print("Q7612718Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612718Trigger:TriggerIn()
    print("Q7612718Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612718)
    this:DestroySelf()
end

function Q7612718Trigger:PreTriggerIn()
    print("Q7612718Trigger - PreTriggerIn")
end

function Q7612718Trigger:LightUpTriggerIn()
    print("Q7612718Trigger - LightUpTriggerIn")
end

function Q7612718Trigger:TriggerOut()
    print("Q7612718Trigger - TriggerOut")
end

return Q7612718Trigger
