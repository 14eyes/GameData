require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503901Trigger = class("Q1503901Trigger", GadgetActorProxy)
Q1503901Trigger.defaultAlias = "Q1503901Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503901Trigger:OnPostDataPrepare()
    print("Q1503901Trigger - OnPostDataPrepare")
    this = self
end

function Q1503901Trigger:OnPostComponentPrepare()
    print("Q1503901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503901Trigger:TriggerIn()
    print("Q1503901Trigger - TriggerIn")
    actorUtils.ShowContext("HolidayActivityGetQuestDialogContext", 0)
    actorUtils.FinishQuestID(false, 1503901)
    this:DestroySelf()
end

function Q1503901Trigger:PreTriggerIn()
    print("Q1503901Trigger - PreTriggerIn")
end

function Q1503901Trigger:LightUpTriggerIn()
    print("Q1503901Trigger - LightUpTriggerIn")
end

function Q1503901Trigger:TriggerOut()
    print("Q1503901Trigger - TriggerOut")
end

return Q1503901Trigger
