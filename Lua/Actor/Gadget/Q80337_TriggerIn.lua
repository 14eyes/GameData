require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80337_TriggerIn = class("Q80337_TriggerIn", GadgetActorProxy)
Q80337_TriggerIn.defaultAlias = "Q80337_TriggerIn"
local Q803ClientConfig = require("Quest/Client/Q803ClientConfig")

local this
local subIDs = Q803ClientConfig.SubIDs
local npcs = Q803ClientConfig.Npcs
local datas = Q803ClientConfig.Datas

function Q80337_TriggerIn:OnPostDataPrepare()
    print("[MainId: 803][Trigger: Q80337_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q80337_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 803][Trigger: Q80337_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q80337_TriggerIn:TriggerIn()
    print("[MainId: 803][Trigger: Q80337_TriggerIn] TriggerIn")
    actorMgr:GetActor("803"):TransmitPlayerWithQuestIdByData(80334, 1, datas.Q80337_TransmitData_WithPureBlack)
    this:DestroySelf()
end

function Q80337_TriggerIn:PreTriggerIn()
    print("[MainId: 803][Trigger: Q80337_TriggerIn] PreTriggerIn")
end

function Q80337_TriggerIn:LightUpTriggerIn()
    print("[MainId: 803][Trigger: Q80337_TriggerIn] LightUpTriggerIn")
end

function Q80337_TriggerIn:TriggerOut()
    print("[MainId: 803][Trigger: Q80337_TriggerIn] TriggerOut")
end

return Q80337_TriggerIn
