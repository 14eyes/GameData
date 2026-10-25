require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602340Trigger = class("Q602340Trigger", GadgetActorProxy)
Q602340Trigger.defaultAlias = "Q602340Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602340Trigger:OnPostDataPrepare()
    print("Q602340Trigger - OnPostDataPrepare")
    this = self
end

function Q602340Trigger:OnPostComponentPrepare()
    print("Q602340Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602340Trigger:TriggerIn()
    print("Q602340Trigger - TriggerIn")
end

function Q602340Trigger:PreTriggerIn()
    print("Q602340Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602340)
    this:DestroySelf()
end

function Q602340Trigger:LightUpTriggerIn()
    print("Q602340Trigger - LightUpTriggerIn")
end

function Q602340Trigger:TriggerOut()
    print("Q602340Trigger - TriggerOut")
end

return Q602340Trigger
