require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601922Trigger = class("Q1601922Trigger", GadgetActorProxy)
Q1601922Trigger.defaultAlias = "Q1601922Trigger"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601922Trigger:OnPostDataPrepare()
    print("Q1601922Trigger - OnPostDataPrepare")
    this = self
end

function Q1601922Trigger:OnPostComponentPrepare()
    print("Q1601922Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601922Trigger:TriggerIn()
    print("Q1601922Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1601922})
    this:DestroySelf()
end

function Q1601922Trigger:PreTriggerIn()
    print("Q1601922Trigger - PreTriggerIn")
end

function Q1601922Trigger:LightUpTriggerIn()
    print("Q1601922Trigger - LightUpTriggerIn")
end

function Q1601922Trigger:TriggerOut()
    print("Q1601922Trigger - TriggerOut")
end

return Q1601922Trigger
