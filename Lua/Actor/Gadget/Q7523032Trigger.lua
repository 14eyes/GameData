require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523032Trigger = class("Q7523032Trigger", GadgetActorProxy)
Q7523032Trigger.defaultAlias = "Q7523032Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523032Trigger:OnPostDataPrepare()
    print("Q7523032Trigger - OnPostDataPrepare")
    this = self
end

function Q7523032Trigger:OnPostComponentPrepare()
    print("Q7523032Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523032Trigger:TriggerIn()
    print("Q7523032Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523032)
    this:DestroySelf()
end

function Q7523032Trigger:PreTriggerIn()
    print("Q7523032Trigger - PreTriggerIn")
end

function Q7523032Trigger:LightUpTriggerIn()
    print("Q7523032Trigger - LightUpTriggerIn")
end

function Q7523032Trigger:TriggerOut()
    print("Q7523032Trigger - TriggerOut")
end

return Q7523032Trigger
