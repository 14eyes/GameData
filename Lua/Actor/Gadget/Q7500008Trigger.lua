require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500008Trigger = class("Q7500008Trigger", GadgetActorProxy)
Q7500008Trigger.defaultAlias = "Q7500008Trigger"
local Q75000ClientConfig = require("Quest/Client/Q75000ClientConfig")

local this
local subIDs = Q75000ClientConfig.SubIDs
local datas = Q75000ClientConfig.Datas
local npcs = Q75000ClientConfig.Npcs
local points = Q75000ClientConfig.Points

function Q7500008Trigger:OnPostDataPrepare()
    print("Q7500008Trigger - OnPostDataPrepare")
    this = self
end

function Q7500008Trigger:OnPostComponentPrepare()
    print("Q7500008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(85, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75000)
end

function Q7500008Trigger:TriggerIn()
    print("Q7500008Trigger - TriggerIn")
end

function Q7500008Trigger:PreTriggerIn()
    print("Q7500008Trigger - PreTriggerIn")
end

function Q7500008Trigger:LightUpTriggerIn()
    print("Q7500008Trigger - LightUpTriggerIn")
end

function Q7500008Trigger:TriggerOut()
    print("Q7500008Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7500008)
    this:DestroySelf()
end

return Q7500008Trigger
