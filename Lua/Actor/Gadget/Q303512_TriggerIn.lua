require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303512_TriggerIn = class("Q303512_TriggerIn", GadgetActorProxy)
Q303512_TriggerIn.defaultAlias = "Q303512_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303512_TriggerIn:OnPostDataPrepare()
    print("Q303512_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303512_TriggerIn:OnPostComponentPrepare()
    print("Q303512_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303512_TriggerIn:TriggerIn()
    print("Q303512_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):TransmitPlayerWithQuestIdByData(303512, 1, datas.TransmitData_Q303512, nil, nil, nil)
    this:DestroySelf()
end

function Q303512_TriggerIn:PreTriggerIn()
    print("Q303512_TriggerIn - PreTriggerIn")
end

function Q303512_TriggerIn:LightUpTriggerIn()
    print("Q303512_TriggerIn - LightUpTriggerIn")
end

function Q303512_TriggerIn:TriggerOut()
    print("Q303512_TriggerIn - TriggerOut")
end

return Q303512_TriggerIn
