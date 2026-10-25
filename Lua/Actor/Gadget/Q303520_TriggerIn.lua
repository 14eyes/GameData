require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303520_TriggerIn = class("Q303520_TriggerIn", GadgetActorProxy)
Q303520_TriggerIn.defaultAlias = "Q303520_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303520_TriggerIn:OnPostDataPrepare()
    print("Q303520_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303520_TriggerIn:OnPostComponentPrepare()
    print("Q303520_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 30, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303520_TriggerIn:TriggerIn()
    print("Q303520_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):TransmitPlayerWithQuestIdByData(303520, 1, datas.TransmitData_Q303520, nil, nil, nil)
    this:DestroySelf()
end

function Q303520_TriggerIn:PreTriggerIn()
    print("Q303520_TriggerIn - PreTriggerIn")
end

function Q303520_TriggerIn:LightUpTriggerIn()
    print("Q303520_TriggerIn - LightUpTriggerIn")
end

function Q303520_TriggerIn:TriggerOut()
    print("Q303520_TriggerIn - TriggerOut")
end

return Q303520_TriggerIn
