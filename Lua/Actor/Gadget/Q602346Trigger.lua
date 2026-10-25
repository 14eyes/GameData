require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602346Trigger = class("Q602346Trigger", GadgetActorProxy)
Q602346Trigger.defaultAlias = "Q602346Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602346Trigger:OnPostDataPrepare()
    print("Q602346Trigger - OnPostDataPrepare")
    this = self
end

function Q602346Trigger:OnPostComponentPrepare()
    print("Q602346Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602346Trigger:TriggerIn()
    print("Q602346Trigger - TriggerIn")
end

function Q602346Trigger:PreTriggerIn()
    print("Q602346Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602346)
    this:DestroySelf()
end

function Q602346Trigger:LightUpTriggerIn()
    print("Q602346Trigger - LightUpTriggerIn")
end

function Q602346Trigger:TriggerOut()
    print("Q602346Trigger - TriggerOut")
end

return Q602346Trigger
