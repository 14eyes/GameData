require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619503Trigger = class("Q7619503Trigger", GadgetActorProxy)
Q7619503Trigger.defaultAlias = "Q7619503Trigger"
local Q76195ClientConfig = require("Quest/Client/Q76195ClientConfig")

local this
local subIDs = Q76195ClientConfig.SubIDs
local datas = Q76195ClientConfig.Datas
local npcs = Q76195ClientConfig.Npcs
local points = Q76195ClientConfig.Points

function Q7619503Trigger:OnPostDataPrepare()
    print("Q7619503Trigger - OnPostDataPrepare")
    this = self
end

function Q7619503Trigger:OnPostComponentPrepare()
    print("Q7619503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76195)
end

function Q7619503Trigger:TriggerIn()
    print("Q7619503Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7619503})
    this:DestroySelf()
end

function Q7619503Trigger:PreTriggerIn()
    print("Q7619503Trigger - PreTriggerIn")
end

function Q7619503Trigger:LightUpTriggerIn()
    print("Q7619503Trigger - LightUpTriggerIn")
end

function Q7619503Trigger:TriggerOut()
    print("Q7619503Trigger - TriggerOut")
end

return Q7619503Trigger
