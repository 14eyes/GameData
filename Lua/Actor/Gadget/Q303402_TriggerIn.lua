require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303402_TriggerIn = class("Q303402_TriggerIn", GadgetActorProxy)
Q303402_TriggerIn.defaultAlias = "Q303402_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303402_TriggerIn:OnPostDataPrepare()
    print("Q303402_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303402_TriggerIn:OnPostComponentPrepare()
    print("Q303402_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303402_TriggerIn:TriggerIn()
    print("Q303402_TriggerIn - TriggerIn")
    actorMgr:GetActor("3034"):TransmitPlayerWithQuestIdByData(303402, 1, datas.TransmitData_Q303402, nil, nil, nil)
    this:DestroySelf()
end

function Q303402_TriggerIn:PreTriggerIn()
    print("Q303402_TriggerIn - PreTriggerIn")
end

function Q303402_TriggerIn:LightUpTriggerIn()
    print("Q303402_TriggerIn - LightUpTriggerIn")
end

function Q303402_TriggerIn:TriggerOut()
    print("Q303402_TriggerIn - TriggerOut")
end

return Q303402_TriggerIn
