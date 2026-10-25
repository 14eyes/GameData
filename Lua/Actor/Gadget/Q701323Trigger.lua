require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701323Trigger = class("Q701323Trigger", GadgetActorProxy)
Q701323Trigger.defaultAlias = "Q701323Trigger"
local Q7013ClientConfig = require("Quest/Client/Q7013ClientConfig")

local this
local subIDs = Q7013ClientConfig.SubIDs
local datas = Q7013ClientConfig.Datas
local npcs = Q7013ClientConfig.Npcs
local points = Q7013ClientConfig.Points

function Q701323Trigger:OnPostDataPrepare()
    print("Q701323Trigger - OnPostDataPrepare")
    this = self
end

function Q701323Trigger:OnPostComponentPrepare()
    print("Q701323Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "7_0_AQ701310_RollbackRegeion_02", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 7013)
end

function Q701323Trigger:TriggerIn()
    print("Q701323Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701323})
    this:DestroySelf()
end

function Q701323Trigger:PreTriggerIn()
    print("Q701323Trigger - PreTriggerIn")
end

function Q701323Trigger:LightUpTriggerIn()
    print("Q701323Trigger - LightUpTriggerIn")
end

function Q701323Trigger:TriggerOut()
    print("Q701323Trigger - TriggerOut")
end

return Q701323Trigger
