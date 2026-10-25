require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303407_TriggerIn = class("Q303407_TriggerIn", GadgetActorProxy)
Q303407_TriggerIn.defaultAlias = "Q303407_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303407_TriggerIn:OnPostDataPrepare()
    print("Q303407_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303407_TriggerIn:OnPostComponentPrepare()
    print("Q303407_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303407_TriggerIn:TriggerIn()
    print("Q303407_TriggerIn - TriggerIn")
    actorMgr:GetActor("3034"):TransmitPlayerWithQuestIdByData(303407, 1, datas.TransmitData_Q303407, nil, nil, nil)
    this:DestroySelf()
end

function Q303407_TriggerIn:PreTriggerIn()
    print("Q303407_TriggerIn - PreTriggerIn")
end

function Q303407_TriggerIn:LightUpTriggerIn()
    print("Q303407_TriggerIn - LightUpTriggerIn")
end

function Q303407_TriggerIn:TriggerOut()
    print("Q303407_TriggerIn - TriggerOut")
end

return Q303407_TriggerIn
