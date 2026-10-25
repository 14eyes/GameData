require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303529_TriggerIn = class("Q303529_TriggerIn", GadgetActorProxy)
Q303529_TriggerIn.defaultAlias = "Q303529_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303529_TriggerIn:OnPostDataPrepare()
    print("Q303529_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303529_TriggerIn:OnPostComponentPrepare()
    print("Q303529_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303529_TriggerIn:TriggerIn()
    print("Q303529_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):TransmitPlayerWithQuestIdByData(303529, 1, datas.TransmitData_Q303529, nil, nil, nil)
    this:DestroySelf()
end

function Q303529_TriggerIn:PreTriggerIn()
    print("Q303529_TriggerIn - PreTriggerIn")
end

function Q303529_TriggerIn:LightUpTriggerIn()
    print("Q303529_TriggerIn - LightUpTriggerIn")
end

function Q303529_TriggerIn:TriggerOut()
    print("Q303529_TriggerIn - TriggerOut")
end

return Q303529_TriggerIn
