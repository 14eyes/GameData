require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700801TrnasmitOut = class("Q700801TrnasmitOut", GadgetActorProxy)
Q700801TrnasmitOut.defaultAlias = "Q700801TrnasmitOut"
local Q7008ClientConfig = require("Quest/Client/Q7008ClientConfig")

local this
local subIDs = Q7008ClientConfig.SubIDs
local datas = Q7008ClientConfig.Datas
local npcs = Q7008ClientConfig.Npcs
local points = Q7008ClientConfig.Points

function Q700801TrnasmitOut:OnPostDataPrepare()
    print("Q700801TrnasmitOut - OnPostDataPrepare")
    this = self
end

function Q700801TrnasmitOut:OnPostComponentPrepare()
    print("Q700801TrnasmitOut - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7008)
end

function Q700801TrnasmitOut:TriggerIn()
    print("Q700801TrnasmitOut - TriggerIn")
end

function Q700801TrnasmitOut:PreTriggerIn()
    print("Q700801TrnasmitOut - PreTriggerIn")
end

function Q700801TrnasmitOut:LightUpTriggerIn()
    print("Q700801TrnasmitOut - LightUpTriggerIn")
    actorMgr:GetActor("7008"):TransmitPlayerWithQuestIdByData(700801, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700801TrnasmitOut:TriggerOut()
    print("Q700801TrnasmitOut - TriggerOut")
end

return Q700801TrnasmitOut
