require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614701Trigger = class("Q7614701Trigger", GadgetActorProxy)
Q7614701Trigger.defaultAlias = "Q7614701Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614701Trigger:OnPostDataPrepare()
    print("Q7614701Trigger - OnPostDataPrepare")
    this = self
end

function Q7614701Trigger:OnPostComponentPrepare()
    print("Q7614701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(51, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614701Trigger:TriggerIn()
    print("Q7614701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614701)
    this:DestroySelf()
end

function Q7614701Trigger:PreTriggerIn()
    print("Q7614701Trigger - PreTriggerIn")
end

function Q7614701Trigger:LightUpTriggerIn()
    print("Q7614701Trigger - LightUpTriggerIn")
end

function Q7614701Trigger:TriggerOut()
    print("Q7614701Trigger - TriggerOut")
end

return Q7614701Trigger
