require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007DreamTransmit = class("Q7007DreamTransmit", GadgetActorProxy)
Q7007DreamTransmit.defaultAlias = "Q7007DreamTransmit"
local Q7007ClientConfig = require("Quest/Client/Q7007ClientConfig")

local this
local subIDs = Q7007ClientConfig.SubIDs
local datas = Q7007ClientConfig.Datas
local npcs = Q7007ClientConfig.Npcs
local points = Q7007ClientConfig.Points

function Q7007DreamTransmit:OnPostDataPrepare()
    print("Q7007DreamTransmit - OnPostDataPrepare")
    this = self
end

function Q7007DreamTransmit:OnPostComponentPrepare()
    print("Q7007DreamTransmit - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7007)
end

function Q7007DreamTransmit:TriggerIn()
    print("Q7007DreamTransmit - TriggerIn")
end

function Q7007DreamTransmit:PreTriggerIn()
    print("Q7007DreamTransmit - PreTriggerIn")
end

function Q7007DreamTransmit:LightUpTriggerIn()
    print("Q7007DreamTransmit - LightUpTriggerIn")
    actorMgr:GetActor("7007"):TransmitPlayerWithQuestIdByData(700713, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q7007DreamTransmit:TriggerOut()
    print("Q7007DreamTransmit - TriggerOut")
end

return Q7007DreamTransmit
