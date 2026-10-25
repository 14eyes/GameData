require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713017Trigger = class("Q7713017Trigger", GadgetActorProxy)
Q7713017Trigger.defaultAlias = "Q7713017Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713017Trigger:OnPostDataPrepare()
    print("Q7713017Trigger - OnPostDataPrepare")
    this = self
end

function Q7713017Trigger:OnPostComponentPrepare()
    print("Q7713017Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "7_0_WQ77130_Questzone", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713017Trigger:TriggerIn()
    print("Q7713017Trigger - TriggerIn")
end

function Q7713017Trigger:PreTriggerIn()
    print("Q7713017Trigger - PreTriggerIn")
end

function Q7713017Trigger:LightUpTriggerIn()
    print("Q7713017Trigger - LightUpTriggerIn")
end

function Q7713017Trigger:TriggerOut()
    print("Q7713017Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({true}, {7713017})
    this:DestroySelf()
end

return Q7713017Trigger
