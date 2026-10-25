require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603423Trigger = class("Q603423Trigger", GadgetActorProxy)
Q603423Trigger.defaultAlias = "Q603423Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603423Trigger:OnPostDataPrepare()
    print("Q603423Trigger - OnPostDataPrepare")
    this = self
end

function Q603423Trigger:OnPostComponentPrepare()
    print("Q603423Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(150, 150, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603423Trigger:TriggerIn()
    print("Q603423Trigger - TriggerIn")
    actorMgr:GetActor("6034"):TransmitPlayerWithQuestIdByData(603423, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603423Trigger:PreTriggerIn()
    print("Q603423Trigger - PreTriggerIn")
end

function Q603423Trigger:LightUpTriggerIn()
    print("Q603423Trigger - LightUpTriggerIn")
end

function Q603423Trigger:TriggerOut()
    print("Q603423Trigger - TriggerOut")
end

return Q603423Trigger
