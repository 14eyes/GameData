require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700701TransmitOut = class("Q700701TransmitOut", GadgetActorProxy)
Q700701TransmitOut.defaultAlias = "Q700701TransmitOut"
local Q7007ClientConfig = require("Quest/Client/Q7007ClientConfig")

local this
local subIDs = Q7007ClientConfig.SubIDs
local datas = Q7007ClientConfig.Datas
local npcs = Q7007ClientConfig.Npcs
local points = Q7007ClientConfig.Points

function Q700701TransmitOut:OnPostDataPrepare()
    print("Q700701TransmitOut - OnPostDataPrepare")
    this = self
end

function Q700701TransmitOut:OnPostComponentPrepare()
    print("Q700701TransmitOut - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7007)
end

function Q700701TransmitOut:TriggerIn()
    print("Q700701TransmitOut - TriggerIn")
end

function Q700701TransmitOut:PreTriggerIn()
    print("Q700701TransmitOut - PreTriggerIn")
end

function Q700701TransmitOut:LightUpTriggerIn()
    print("Q700701TransmitOut - LightUpTriggerIn")
    actorMgr:GetActor("7007"):TransmitPlayerWithQuestIdByData(700701, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700701TransmitOut:TriggerOut()
    print("Q700701TransmitOut - TriggerOut")
end

return Q700701TransmitOut
