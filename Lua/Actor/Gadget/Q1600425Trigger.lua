require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600425Trigger = class("Q1600425Trigger", GadgetActorProxy)
Q1600425Trigger.defaultAlias = "Q1600425Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600425Trigger:OnPostDataPrepare()
    print("Q1600425Trigger - OnPostDataPrepare")
    this = self
end

function Q1600425Trigger:OnPostComponentPrepare()
    print("Q1600425Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600425Trigger:TriggerIn()
    print("Q1600425Trigger - TriggerIn")
end

function Q1600425Trigger:PreTriggerIn()
    print("Q1600425Trigger - PreTriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600425, 1, datas.TransmitData_ToWorkshop, nil, nil, nil)
end

function Q1600425Trigger:LightUpTriggerIn()
    print("Q1600425Trigger - LightUpTriggerIn")
end

function Q1600425Trigger:TriggerOut()
    print("Q1600425Trigger - TriggerOut")
end

return Q1600425Trigger
