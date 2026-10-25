require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701301Trigger = class("Q7701301Trigger", GadgetActorProxy)
Q7701301Trigger.defaultAlias = "Q7701301Trigger"
local Q77013ClientConfig = require("Quest/Client/Q77013ClientConfig")

local this
local subIDs = Q77013ClientConfig.SubIDs
local datas = Q77013ClientConfig.Datas
local npcs = Q77013ClientConfig.Npcs
local points = Q77013ClientConfig.Points

function Q7701301Trigger:OnPostDataPrepare()
    print("Q7701301Trigger - OnPostDataPrepare")
    this = self
end

function Q7701301Trigger:OnPostComponentPrepare()
    print("Q7701301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77013)
end

function Q7701301Trigger:TriggerIn()
    print("Q7701301Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7701301})
    this:DestroySelf()
end

function Q7701301Trigger:PreTriggerIn()
    print("Q7701301Trigger - PreTriggerIn")
end

function Q7701301Trigger:LightUpTriggerIn()
    print("Q7701301Trigger - LightUpTriggerIn")
end

function Q7701301Trigger:TriggerOut()
    print("Q7701301Trigger - TriggerOut")
end

return Q7701301Trigger
