require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603422Trigger = class("Q603422Trigger", GadgetActorProxy)
Q603422Trigger.defaultAlias = "Q603422Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603422Trigger:OnPostDataPrepare()
    print("Q603422Trigger - OnPostDataPrepare")
    this = self
end

function Q603422Trigger:OnPostComponentPrepare()
    print("Q603422Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603422Trigger:TriggerIn()
    print("Q603422Trigger - TriggerIn")
    actorMgr:GetActor("6034"):TransmitPlayerWithQuestIdByData(603422, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603422Trigger:PreTriggerIn()
    print("Q603422Trigger - PreTriggerIn")
end

function Q603422Trigger:LightUpTriggerIn()
    print("Q603422Trigger - LightUpTriggerIn")
end

function Q603422Trigger:TriggerOut()
    print("Q603422Trigger - TriggerOut")
end

return Q603422Trigger
