require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303508_TriggerIn = class("Q303508_TriggerIn", GadgetActorProxy)
Q303508_TriggerIn.defaultAlias = "Q303508_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303508_TriggerIn:OnPostDataPrepare()
    print("Q303508_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303508_TriggerIn:OnPostComponentPrepare()
    print("Q303508_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303508_TriggerIn:TriggerIn()
    print("Q303508_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):TransmitPlayerWithQuestIdByData(303508, 1, datas.TransmitData_Q303508, nil, nil, nil)
    this:DestroySelf()
end

function Q303508_TriggerIn:PreTriggerIn()
    print("Q303508_TriggerIn - PreTriggerIn")
end

function Q303508_TriggerIn:LightUpTriggerIn()
    print("Q303508_TriggerIn - LightUpTriggerIn")
end

function Q303508_TriggerIn:TriggerOut()
    print("Q303508_TriggerIn - TriggerOut")
end

return Q303508_TriggerIn
