require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303524_TriggerIn = class("Q303524_TriggerIn", GadgetActorProxy)
Q303524_TriggerIn.defaultAlias = "Q303524_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303524_TriggerIn:OnPostDataPrepare()
    print("Q303524_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303524_TriggerIn:OnPostComponentPrepare()
    print("Q303524_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303524_TriggerIn:TriggerIn()
    print("Q303524_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):TransmitPlayerWithQuestIdByData(303524, 1, datas.TransmitData_Q303524, nil, nil, nil)
    this:DestroySelf()
end

function Q303524_TriggerIn:PreTriggerIn()
    print("Q303524_TriggerIn - PreTriggerIn")
end

function Q303524_TriggerIn:LightUpTriggerIn()
    print("Q303524_TriggerIn - LightUpTriggerIn")
end

function Q303524_TriggerIn:TriggerOut()
    print("Q303524_TriggerIn - TriggerOut")
end

return Q303524_TriggerIn
