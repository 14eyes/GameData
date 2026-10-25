require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503903Trigger_1 = class("Q1503903Trigger_1", GadgetActorProxy)
Q1503903Trigger_1.defaultAlias = "Q1503903Trigger_1"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503903Trigger_1:OnPostDataPrepare()
    print("Q1503903Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1503903Trigger_1:OnPostComponentPrepare()
    print("Q1503903Trigger_1 - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "Natlan_Quest_fail_1503903", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503903Trigger_1:TriggerIn()
    print("Q1503903Trigger_1 - TriggerIn")
end

function Q1503903Trigger_1:PreTriggerIn()
    print("Q1503903Trigger_1 - PreTriggerIn")
end

function Q1503903Trigger_1:LightUpTriggerIn()
    print("Q1503903Trigger_1 - LightUpTriggerIn")
end

function Q1503903Trigger_1:TriggerOut()
    print("Q1503903Trigger_1 - TriggerOut")
    actorUtils.FinishQuestID(true, 1503903)
    actorUtils.FinishQuestID(true, 1503912)
    this:DestroySelf()
end

return Q1503903Trigger_1
