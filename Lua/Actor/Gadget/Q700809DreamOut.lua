require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700809DreamOut = class("Q700809DreamOut", GadgetActorProxy)
Q700809DreamOut.defaultAlias = "Q700809DreamOut"
local Q7008ClientConfig = require("Quest/Client/Q7008ClientConfig")

local this
local subIDs = Q7008ClientConfig.SubIDs
local datas = Q7008ClientConfig.Datas
local npcs = Q7008ClientConfig.Npcs
local points = Q7008ClientConfig.Points

function Q700809DreamOut:OnPostDataPrepare()
    print("Q700809DreamOut - OnPostDataPrepare")
    this = self
end

function Q700809DreamOut:OnPostComponentPrepare()
    print("Q700809DreamOut - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7008)
end

function Q700809DreamOut:TriggerIn()
    print("Q700809DreamOut - TriggerIn")
end

function Q700809DreamOut:PreTriggerIn()
    print("Q700809DreamOut - PreTriggerIn")
end

function Q700809DreamOut:LightUpTriggerIn()
    print("Q700809DreamOut - LightUpTriggerIn")
    actorMgr:GetActor("7008"):TransmitPlayerWithQuestIdByData(700810, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700809DreamOut:TriggerOut()
    print("Q700809DreamOut - TriggerOut")
end

return Q700809DreamOut
