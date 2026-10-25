require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502213Trigger = class("Q1502213Trigger", GadgetActorProxy)
Q1502213Trigger.defaultAlias = "Q1502213Trigger"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502213Trigger:OnPostDataPrepare()
    print("Q1502213Trigger - OnPostDataPrepare")
    this = self
end

function Q1502213Trigger:OnPostComponentPrepare()
    print("Q1502213Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502213Trigger:TriggerIn()
    print("Q1502213Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502213)
    this:DestroySelf()
end

function Q1502213Trigger:PreTriggerIn()
    print("Q1502213Trigger - PreTriggerIn")
end

function Q1502213Trigger:LightUpTriggerIn()
    print("Q1502213Trigger - LightUpTriggerIn")
end

function Q1502213Trigger:TriggerOut()
    print("Q1502213Trigger - TriggerOut")
end

return Q1502213Trigger
