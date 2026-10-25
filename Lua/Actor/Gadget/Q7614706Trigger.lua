require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614706Trigger = class("Q7614706Trigger", GadgetActorProxy)
Q7614706Trigger.defaultAlias = "Q7614706Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614706Trigger:OnPostDataPrepare()
    print("Q7614706Trigger - OnPostDataPrepare")
    this = self
end

function Q7614706Trigger:OnPostComponentPrepare()
    print("Q7614706Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614706Trigger:TriggerIn()
    print("Q7614706Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614706)
    this:DestroySelf()
end

function Q7614706Trigger:PreTriggerIn()
    print("Q7614706Trigger - PreTriggerIn")
end

function Q7614706Trigger:LightUpTriggerIn()
    print("Q7614706Trigger - LightUpTriggerIn")
end

function Q7614706Trigger:TriggerOut()
    print("Q7614706Trigger - TriggerOut")
end

return Q7614706Trigger
