require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523018Trigger = class("Q7523018Trigger", GadgetActorProxy)
Q7523018Trigger.defaultAlias = "Q7523018Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523018Trigger:OnPostDataPrepare()
    print("Q7523018Trigger - OnPostDataPrepare")
    this = self
end

function Q7523018Trigger:OnPostComponentPrepare()
    print("Q7523018Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523018Trigger:TriggerIn()
    print("Q7523018Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523018)
    this:DestroySelf()
end

function Q7523018Trigger:PreTriggerIn()
    print("Q7523018Trigger - PreTriggerIn")
end

function Q7523018Trigger:LightUpTriggerIn()
    print("Q7523018Trigger - LightUpTriggerIn")
end

function Q7523018Trigger:TriggerOut()
    print("Q7523018Trigger - TriggerOut")
end

return Q7523018Trigger
