require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602240Trigger = class("Q602240Trigger", GadgetActorProxy)
Q602240Trigger.defaultAlias = "Q602240Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602240Trigger:OnPostDataPrepare()
    print("Q602240Trigger - OnPostDataPrepare")
    this = self
end

function Q602240Trigger:OnPostComponentPrepare()
    print("Q602240Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602240Trigger:TriggerIn()
    print("Q602240Trigger - TriggerIn")
end

function Q602240Trigger:PreTriggerIn()
    print("Q602240Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602240)
    this:DestroySelf()
end

function Q602240Trigger:LightUpTriggerIn()
    print("Q602240Trigger - LightUpTriggerIn")
end

function Q602240Trigger:TriggerOut()
    print("Q602240Trigger - TriggerOut")
end

return Q602240Trigger
