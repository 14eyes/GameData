require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303409_TriggerIn = class("Q303409_TriggerIn", GadgetActorProxy)
Q303409_TriggerIn.defaultAlias = "Q303409_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303409_TriggerIn:OnPostDataPrepare()
    print("Q303409_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303409_TriggerIn:OnPostComponentPrepare()
    print("Q303409_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303409_TriggerIn:TriggerIn()
    print("Q303409_TriggerIn - TriggerIn")
    actorMgr:GetActor("3034"):TransmitPlayerWithQuestIdByData(303409, 1, datas.TransmitData_Q303409, nil, nil, nil)
    this:DestroySelf()
end

function Q303409_TriggerIn:PreTriggerIn()
    print("Q303409_TriggerIn - PreTriggerIn")
end

function Q303409_TriggerIn:LightUpTriggerIn()
    print("Q303409_TriggerIn - LightUpTriggerIn")
end

function Q303409_TriggerIn:TriggerOut()
    print("Q303409_TriggerIn - TriggerOut")
end

return Q303409_TriggerIn
