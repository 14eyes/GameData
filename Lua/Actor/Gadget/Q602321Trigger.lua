require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602321Trigger = class("Q602321Trigger", GadgetActorProxy)
Q602321Trigger.defaultAlias = "Q602321Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602321Trigger:OnPostDataPrepare()
    print("Q602321Trigger - OnPostDataPrepare")
    this = self
end

function Q602321Trigger:OnPostComponentPrepare()
    print("Q602321Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602321Trigger:TriggerIn()
    print("Q602321Trigger - TriggerIn")
end

function Q602321Trigger:PreTriggerIn()
    print("Q602321Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602321)
    this:DestroySelf()
end

function Q602321Trigger:LightUpTriggerIn()
    print("Q602321Trigger - LightUpTriggerIn")
end

function Q602321Trigger:TriggerOut()
    print("Q602321Trigger - TriggerOut")
end

return Q602321Trigger
