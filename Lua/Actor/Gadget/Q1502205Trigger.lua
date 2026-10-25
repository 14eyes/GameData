require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502205Trigger = class("Q1502205Trigger", GadgetActorProxy)
Q1502205Trigger.defaultAlias = "Q1502205Trigger"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502205Trigger:OnPostDataPrepare()
    print("Q1502205Trigger - OnPostDataPrepare")
    this = self
end

function Q1502205Trigger:OnPostComponentPrepare()
    print("Q1502205Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 400, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502205Trigger:TriggerIn()
    print("Q1502205Trigger - TriggerIn")
    actorMgr:GetActor("15022"):TransmitPlayerWithQuestIdByData(1502205, 1, datas.TransmitData, nil, nil, nil)
end

function Q1502205Trigger:PreTriggerIn()
    print("Q1502205Trigger - PreTriggerIn")
end

function Q1502205Trigger:LightUpTriggerIn()
    print("Q1502205Trigger - LightUpTriggerIn")
end

function Q1502205Trigger:TriggerOut()
    print("Q1502205Trigger - TriggerOut")
end

return Q1502205Trigger
