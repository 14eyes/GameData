require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503205Trigger_PreTP = class("Q1503205Trigger_PreTP", GadgetActorProxy)
Q1503205Trigger_PreTP.defaultAlias = "Q1503205Trigger_PreTP"
local Q15032ClientConfig = require("Quest/Client/Q15032ClientConfig")

local this
local subIDs = Q15032ClientConfig.SubIDs
local datas = Q15032ClientConfig.Datas
local npcs = Q15032ClientConfig.Npcs
local points = Q15032ClientConfig.Points

function Q1503205Trigger_PreTP:OnPostDataPrepare()
    print("Q1503205Trigger_PreTP - OnPostDataPrepare")
    this = self
end

function Q1503205Trigger_PreTP:OnPostComponentPrepare()
    print("Q1503205Trigger_PreTP - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15032)
end

function Q1503205Trigger_PreTP:TriggerIn()
    print("Q1503205Trigger_PreTP - TriggerIn")
    actorMgr:GetActor("15032"):TransmitPlayerWithQuestIdByData(1503205, 5, datas.TransmitData1503205, nil, nil, nil)
    this:DestroySelf()
end

function Q1503205Trigger_PreTP:PreTriggerIn()
    print("Q1503205Trigger_PreTP - PreTriggerIn")
end

function Q1503205Trigger_PreTP:LightUpTriggerIn()
    print("Q1503205Trigger_PreTP - LightUpTriggerIn")
end

function Q1503205Trigger_PreTP:TriggerOut()
    print("Q1503205Trigger_PreTP - TriggerOut")
end

return Q1503205Trigger_PreTP
