require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602339Trigger = class("Q602339Trigger", GadgetActorProxy)
Q602339Trigger.defaultAlias = "Q602339Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602339Trigger:OnPostDataPrepare()
    print("Q602339Trigger - OnPostDataPrepare")
    this = self
end

function Q602339Trigger:OnPostComponentPrepare()
    print("Q602339Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602339Trigger:TriggerIn()
    print("Q602339Trigger - TriggerIn")
end

function Q602339Trigger:PreTriggerIn()
    print("Q602339Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602339)
    this:DestroySelf()
end

function Q602339Trigger:LightUpTriggerIn()
    print("Q602339Trigger - LightUpTriggerIn")
end

function Q602339Trigger:TriggerOut()
    print("Q602339Trigger - TriggerOut")
end

return Q602339Trigger
