require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602349Trigger = class("Q602349Trigger", GadgetActorProxy)
Q602349Trigger.defaultAlias = "Q602349Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602349Trigger:OnPostDataPrepare()
    print("Q602349Trigger - OnPostDataPrepare")
    this = self
end

function Q602349Trigger:OnPostComponentPrepare()
    print("Q602349Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602349Trigger:TriggerIn()
    print("Q602349Trigger - TriggerIn")
end

function Q602349Trigger:PreTriggerIn()
    print("Q602349Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602349)
    this:DestroySelf()
end

function Q602349Trigger:LightUpTriggerIn()
    print("Q602349Trigger - LightUpTriggerIn")
end

function Q602349Trigger:TriggerOut()
    print("Q602349Trigger - TriggerOut")
end

return Q602349Trigger
