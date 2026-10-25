require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614301Trigger = class("Q7614301Trigger", GadgetActorProxy)
Q7614301Trigger.defaultAlias = "Q7614301Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614301Trigger:OnPostDataPrepare()
    print("Q7614301Trigger - OnPostDataPrepare")
    this = self
end

function Q7614301Trigger:OnPostComponentPrepare()
    print("Q7614301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614301Trigger:TriggerIn()
    print("Q7614301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614301)
    this:DestroySelf()
end

function Q7614301Trigger:PreTriggerIn()
    print("Q7614301Trigger - PreTriggerIn")
end

function Q7614301Trigger:LightUpTriggerIn()
    print("Q7614301Trigger - LightUpTriggerIn")
end

function Q7614301Trigger:TriggerOut()
    print("Q7614301Trigger - TriggerOut")
end

return Q7614301Trigger
