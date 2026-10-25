require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609901Trigger = class("Q7609901Trigger", GadgetActorProxy)
Q7609901Trigger.defaultAlias = "Q7609901Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609901Trigger:OnPostDataPrepare()
    print("Q7609901Trigger - OnPostDataPrepare")
    this = self
end

function Q7609901Trigger:OnPostComponentPrepare()
    print("Q7609901Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "6_3_YZT_Enter", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609901Trigger:TriggerIn()
    print("Q7609901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609901)
    this:DestroySelf()
end

function Q7609901Trigger:PreTriggerIn()
    print("Q7609901Trigger - PreTriggerIn")
end

function Q7609901Trigger:LightUpTriggerIn()
    print("Q7609901Trigger - LightUpTriggerIn")
end

function Q7609901Trigger:TriggerOut()
    print("Q7609901Trigger - TriggerOut")
end

return Q7609901Trigger
