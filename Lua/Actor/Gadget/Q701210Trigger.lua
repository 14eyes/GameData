require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701210Trigger = class("Q701210Trigger", GadgetActorProxy)
Q701210Trigger.defaultAlias = "Q701210Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701210Trigger:OnPostDataPrepare()
    print("Q701210Trigger - OnPostDataPrepare")
    this = self
end

function Q701210Trigger:OnPostComponentPrepare()
    print("Q701210Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "7_0_AQ701210_RollbackRegeion_01", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701210Trigger:TriggerIn()
    print("Q701210Trigger - TriggerIn")
end

function Q701210Trigger:PreTriggerIn()
    print("Q701210Trigger - PreTriggerIn")
end

function Q701210Trigger:LightUpTriggerIn()
    print("Q701210Trigger - LightUpTriggerIn")
end

function Q701210Trigger:TriggerOut()
    print("Q701210Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({true}, {701210})
end

return Q701210Trigger
