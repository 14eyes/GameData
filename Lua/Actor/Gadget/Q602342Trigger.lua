require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602342Trigger = class("Q602342Trigger", GadgetActorProxy)
Q602342Trigger.defaultAlias = "Q602342Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602342Trigger:OnPostDataPrepare()
    print("Q602342Trigger - OnPostDataPrepare")
    this = self
end

function Q602342Trigger:OnPostComponentPrepare()
    print("Q602342Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602342Trigger:TriggerIn()
    print("Q602342Trigger - TriggerIn")
end

function Q602342Trigger:PreTriggerIn()
    print("Q602342Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602342)
    this:DestroySelf()
end

function Q602342Trigger:LightUpTriggerIn()
    print("Q602342Trigger - LightUpTriggerIn")
end

function Q602342Trigger:TriggerOut()
    print("Q602342Trigger - TriggerOut")
end

return Q602342Trigger
