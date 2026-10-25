require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401008_TriggerIn_2 = class("Q401008_TriggerIn_2", GadgetActorProxy)
Q401008_TriggerIn_2.defaultAlias = "Q401008_TriggerIn_2"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401008_TriggerIn_2:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn_2] OnPostDataPrepare")
    this = self
end

function Q401008_TriggerIn_2:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn_2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401008_TriggerIn_2:TriggerIn()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn_2] TriggerIn")
    actorMgr:GetActor("4010"):TransmitPlayerWithDialogTextByQuestId(401007, 1, datas.DialogsId_40109902, 0.5)
    this:DestroySelf()
end

function Q401008_TriggerIn_2:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn_2] PreTriggerIn")
end

function Q401008_TriggerIn_2:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn_2] LightUpTriggerIn")
end

function Q401008_TriggerIn_2:TriggerOut()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn_2] TriggerOut")
end

return Q401008_TriggerIn_2
