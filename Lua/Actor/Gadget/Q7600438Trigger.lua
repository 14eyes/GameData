require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600438Trigger = class("Q7600438Trigger", GadgetActorProxy)
Q7600438Trigger.defaultAlias = "Q7600438Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600438Trigger:OnPostDataPrepare()
    print("Q7600438Trigger - OnPostDataPrepare")
    this = self
end

function Q7600438Trigger:OnPostComponentPrepare()
    print("Q7600438Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600438Trigger:TriggerIn()
    print("Q7600438Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600438)
    this:DestroySelf()
end

function Q7600438Trigger:PreTriggerIn()
    print("Q7600438Trigger - PreTriggerIn")
end

function Q7600438Trigger:LightUpTriggerIn()
    print("Q7600438Trigger - LightUpTriggerIn")
end

function Q7600438Trigger:TriggerOut()
    print("Q7600438Trigger - TriggerOut")
end

return Q7600438Trigger
