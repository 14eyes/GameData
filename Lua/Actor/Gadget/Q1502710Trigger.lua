require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502710Trigger = class("Q1502710Trigger", GadgetActorProxy)
Q1502710Trigger.defaultAlias = "Q1502710Trigger"
local Q15027ClientConfig = require("Quest/Client/Q15027ClientConfig")

local this
local subIDs = Q15027ClientConfig.SubIDs
local datas = Q15027ClientConfig.Datas
local npcs = Q15027ClientConfig.Npcs
local points = Q15027ClientConfig.Points

function Q1502710Trigger:OnPostDataPrepare()
    print("Q1502710Trigger - OnPostDataPrepare")
    this = self
end

function Q1502710Trigger:OnPostComponentPrepare()
    print("Q1502710Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(35, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15027)
end

function Q1502710Trigger:TriggerIn()
    print("Q1502710Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502710)
    this:DestroySelf()
end

function Q1502710Trigger:PreTriggerIn()
    print("Q1502710Trigger - PreTriggerIn")
end

function Q1502710Trigger:LightUpTriggerIn()
    print("Q1502710Trigger - LightUpTriggerIn")
end

function Q1502710Trigger:TriggerOut()
    print("Q1502710Trigger - TriggerOut")
end

return Q1502710Trigger
