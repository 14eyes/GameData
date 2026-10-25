require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612715Trigger = class("Q7612715Trigger", GadgetActorProxy)
Q7612715Trigger.defaultAlias = "Q7612715Trigger"
local Q76127ClientConfig = require("Quest/Client/Q76127ClientConfig")

local this
local subIDs = Q76127ClientConfig.SubIDs
local datas = Q76127ClientConfig.Datas
local npcs = Q76127ClientConfig.Npcs
local points = Q76127ClientConfig.Points

function Q7612715Trigger:OnPostDataPrepare()
    print("Q7612715Trigger - OnPostDataPrepare")
    this = self
end

function Q7612715Trigger:OnPostComponentPrepare()
    print("Q7612715Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76127)
end

function Q7612715Trigger:TriggerIn()
    print("Q7612715Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612715)
    this:DestroySelf()
end

function Q7612715Trigger:PreTriggerIn()
    print("Q7612715Trigger - PreTriggerIn")
end

function Q7612715Trigger:LightUpTriggerIn()
    print("Q7612715Trigger - LightUpTriggerIn")
end

function Q7612715Trigger:TriggerOut()
    print("Q7612715Trigger - TriggerOut")
end

return Q7612715Trigger
