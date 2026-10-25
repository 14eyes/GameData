require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614718Trigger = class("Q7614718Trigger", GadgetActorProxy)
Q7614718Trigger.defaultAlias = "Q7614718Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614718Trigger:OnPostDataPrepare()
    print("Q7614718Trigger - OnPostDataPrepare")
    this = self
end

function Q7614718Trigger:OnPostComponentPrepare()
    print("Q7614718Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614718Trigger:TriggerIn()
    print("Q7614718Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614718)
    this:DestroySelf()
end

function Q7614718Trigger:PreTriggerIn()
    print("Q7614718Trigger - PreTriggerIn")
end

function Q7614718Trigger:LightUpTriggerIn()
    print("Q7614718Trigger - LightUpTriggerIn")
end

function Q7614718Trigger:TriggerOut()
    print("Q7614718Trigger - TriggerOut")
end

return Q7614718Trigger
