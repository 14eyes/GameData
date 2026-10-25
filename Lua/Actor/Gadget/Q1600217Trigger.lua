require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600217Trigger = class("Q1600217Trigger", GadgetActorProxy)
Q1600217Trigger.defaultAlias = "Q1600217Trigger"
local Q16002ClientConfig = require("Quest/Client/Q16002ClientConfig")

local this
local subIDs = Q16002ClientConfig.SubIDs
local datas = Q16002ClientConfig.Datas
local npcs = Q16002ClientConfig.Npcs
local points = Q16002ClientConfig.Points

function Q1600217Trigger:OnPostDataPrepare()
    print("Q1600217Trigger - OnPostDataPrepare")
    this = self
end

function Q1600217Trigger:OnPostComponentPrepare()
    print("Q1600217Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16002)
end

function Q1600217Trigger:TriggerIn()
    print("Q1600217Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1600217)
    this:DestroySelf()
end

function Q1600217Trigger:PreTriggerIn()
    print("Q1600217Trigger - PreTriggerIn")
end

function Q1600217Trigger:LightUpTriggerIn()
    print("Q1600217Trigger - LightUpTriggerIn")
end

function Q1600217Trigger:TriggerOut()
    print("Q1600217Trigger - TriggerOut")
end

return Q1600217Trigger
