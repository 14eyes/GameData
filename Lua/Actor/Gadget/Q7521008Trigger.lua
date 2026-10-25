require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521008Trigger = class("Q7521008Trigger", GadgetActorProxy)
Q7521008Trigger.defaultAlias = "Q7521008Trigger"
local Q75210ClientConfig = require("Quest/Client/Q75210ClientConfig")

local this
local subIDs = Q75210ClientConfig.SubIDs
local datas = Q75210ClientConfig.Datas
local npcs = Q75210ClientConfig.Npcs
local points = Q75210ClientConfig.Points

function Q7521008Trigger:OnPostDataPrepare()
    print("Q7521008Trigger - OnPostDataPrepare")
    this = self
end

function Q7521008Trigger:OnPostComponentPrepare()
    print("Q7521008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75210)
end

function Q7521008Trigger:TriggerIn()
    print("Q7521008Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521008)
    this:DestroySelf()
end

function Q7521008Trigger:PreTriggerIn()
    print("Q7521008Trigger - PreTriggerIn")
end

function Q7521008Trigger:LightUpTriggerIn()
    print("Q7521008Trigger - LightUpTriggerIn")
end

function Q7521008Trigger:TriggerOut()
    print("Q7521008Trigger - TriggerOut")
end

return Q7521008Trigger
