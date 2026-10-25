require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602243Trigger = class("Q602243Trigger", GadgetActorProxy)
Q602243Trigger.defaultAlias = "Q602243Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602243Trigger:OnPostDataPrepare()
    print("Q602243Trigger - OnPostDataPrepare")
    this = self
end

function Q602243Trigger:OnPostComponentPrepare()
    print("Q602243Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602243Trigger:TriggerIn()
    print("Q602243Trigger - TriggerIn")
end

function Q602243Trigger:PreTriggerIn()
    print("Q602243Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602243)
    this:DestroySelf()
end

function Q602243Trigger:LightUpTriggerIn()
    print("Q602243Trigger - LightUpTriggerIn")
end

function Q602243Trigger:TriggerOut()
    print("Q602243Trigger - TriggerOut")
end

return Q602243Trigger
