require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502214Trigger_1 = class("Q1502214Trigger_1", GadgetActorProxy)
Q1502214Trigger_1.defaultAlias = "Q1502214Trigger_1"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502214Trigger_1:OnPostDataPrepare()
    print("Q1502214Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1502214Trigger_1:OnPostComponentPrepare()
    print("Q1502214Trigger_1 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 455, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502214Trigger_1:TriggerIn()
    print("Q1502214Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 1502214)
    this:DestroySelf()
end

function Q1502214Trigger_1:PreTriggerIn()
    print("Q1502214Trigger_1 - PreTriggerIn")
end

function Q1502214Trigger_1:LightUpTriggerIn()
    print("Q1502214Trigger_1 - LightUpTriggerIn")
end

function Q1502214Trigger_1:TriggerOut()
    print("Q1502214Trigger_1 - TriggerOut")
end

return Q1502214Trigger_1
