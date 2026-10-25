require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603406Trigger = class("Q603406Trigger", GadgetActorProxy)
Q603406Trigger.defaultAlias = "Q603406Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603406Trigger:OnPostDataPrepare()
    print("Q603406Trigger - OnPostDataPrepare")
    this = self
end

function Q603406Trigger:OnPostComponentPrepare()
    print("Q603406Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(150, 150, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603406Trigger:TriggerIn()
    print("Q603406Trigger - TriggerIn")
    actorMgr:GetActor("6034"):TransmitPlayerWithQuestIdByData(603406, 1, datas.TransmitData_Q603419, nil, nil, nil)
    this:DestroySelf()
end

function Q603406Trigger:PreTriggerIn()
    print("Q603406Trigger - PreTriggerIn")
end

function Q603406Trigger:LightUpTriggerIn()
    print("Q603406Trigger - LightUpTriggerIn")
end

function Q603406Trigger:TriggerOut()
    print("Q603406Trigger - TriggerOut")
end

return Q603406Trigger
