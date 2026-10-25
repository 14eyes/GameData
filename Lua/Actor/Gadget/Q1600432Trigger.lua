require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600432Trigger = class("Q1600432Trigger", GadgetActorProxy)
Q1600432Trigger.defaultAlias = "Q1600432Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600432Trigger:OnPostDataPrepare()
    print("Q1600432Trigger - OnPostDataPrepare")
    this = self
end

function Q1600432Trigger:OnPostComponentPrepare()
    print("Q1600432Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(350, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600432Trigger:TriggerIn()
    print("Q1600432Trigger - TriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600432, 1, datas.TransmitData_ToParty, nil, nil, nil)
end

function Q1600432Trigger:PreTriggerIn()
    print("Q1600432Trigger - PreTriggerIn")
end

function Q1600432Trigger:LightUpTriggerIn()
    print("Q1600432Trigger - LightUpTriggerIn")
end

function Q1600432Trigger:TriggerOut()
    print("Q1600432Trigger - TriggerOut")
end

return Q1600432Trigger
