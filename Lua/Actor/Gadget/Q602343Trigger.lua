require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602343Trigger = class("Q602343Trigger", GadgetActorProxy)
Q602343Trigger.defaultAlias = "Q602343Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602343Trigger:OnPostDataPrepare()
    print("Q602343Trigger - OnPostDataPrepare")
    this = self
end

function Q602343Trigger:OnPostComponentPrepare()
    print("Q602343Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602343Trigger:TriggerIn()
    print("Q602343Trigger - TriggerIn")
end

function Q602343Trigger:PreTriggerIn()
    print("Q602343Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602343)
    this:DestroySelf()
end

function Q602343Trigger:LightUpTriggerIn()
    print("Q602343Trigger - LightUpTriggerIn")
end

function Q602343Trigger:TriggerOut()
    print("Q602343Trigger - TriggerOut")
end

return Q602343Trigger
