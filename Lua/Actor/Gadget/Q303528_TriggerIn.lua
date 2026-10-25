require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303528_TriggerIn = class("Q303528_TriggerIn", GadgetActorProxy)
Q303528_TriggerIn.defaultAlias = "Q303528_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303528_TriggerIn:OnPostDataPrepare()
    print("Q303528_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303528_TriggerIn:OnPostComponentPrepare()
    print("Q303528_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303528_TriggerIn:TriggerIn()
    print("Q303528_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):TransmitPlayerWithQuestIdByData(303528, 1, datas.TransmitData_Q303528, nil, nil, nil)
    this:DestroySelf()
end

function Q303528_TriggerIn:PreTriggerIn()
    print("Q303528_TriggerIn - PreTriggerIn")
end

function Q303528_TriggerIn:LightUpTriggerIn()
    print("Q303528_TriggerIn - LightUpTriggerIn")
end

function Q303528_TriggerIn:TriggerOut()
    print("Q303528_TriggerIn - TriggerOut")
end

return Q303528_TriggerIn
