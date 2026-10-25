require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016322Trigger = class("Q4016322Trigger", GadgetActorProxy)
Q4016322Trigger.defaultAlias = "Q4016322Trigger"
local Q40163ClientConfig = require("Quest/Client/Q40163ClientConfig")

local this
local subIDs = Q40163ClientConfig.SubIDs
local datas = Q40163ClientConfig.Datas
local npcs = Q40163ClientConfig.Npcs
local points = Q40163ClientConfig.Points

function Q4016322Trigger:OnPostDataPrepare()
    print("Q4016322Trigger - OnPostDataPrepare")
    this = self
end

function Q4016322Trigger:OnPostComponentPrepare()
    print("Q4016322Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40163)
end

function Q4016322Trigger:TriggerIn()
    print("Q4016322Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016322)
    this:DestroySelf()
end

function Q4016322Trigger:PreTriggerIn()
    print("Q4016322Trigger - PreTriggerIn")
end

function Q4016322Trigger:LightUpTriggerIn()
    print("Q4016322Trigger - LightUpTriggerIn")
end

function Q4016322Trigger:TriggerOut()
    print("Q4016322Trigger - TriggerOut")
end

return Q4016322Trigger
