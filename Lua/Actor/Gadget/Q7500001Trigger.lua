require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500001Trigger = class("Q7500001Trigger", GadgetActorProxy)
Q7500001Trigger.defaultAlias = "Q7500001Trigger"
local Q75000ClientConfig = require("Quest/Client/Q75000ClientConfig")

local this
local subIDs = Q75000ClientConfig.SubIDs
local datas = Q75000ClientConfig.Datas
local npcs = Q75000ClientConfig.Npcs
local points = Q75000ClientConfig.Points

function Q7500001Trigger:OnPostDataPrepare()
    print("Q7500001Trigger - OnPostDataPrepare")
    this = self
end

function Q7500001Trigger:OnPostComponentPrepare()
    print("Q7500001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(81.804184, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75000)
end

function Q7500001Trigger:TriggerIn()
    print("Q7500001Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7500001)
    this:DestroySelf()
end

function Q7500001Trigger:PreTriggerIn()
    print("Q7500001Trigger - PreTriggerIn")
end

function Q7500001Trigger:LightUpTriggerIn()
    print("Q7500001Trigger - LightUpTriggerIn")
end

function Q7500001Trigger:TriggerOut()
    print("Q7500001Trigger - TriggerOut")
end

return Q7500001Trigger
