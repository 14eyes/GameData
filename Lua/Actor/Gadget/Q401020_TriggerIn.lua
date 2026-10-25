require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401020_TriggerIn = class("Q401020_TriggerIn", GadgetActorProxy)
Q401020_TriggerIn.defaultAlias = "Q401020_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401020_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401020_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401020_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401020_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401020_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401020_TriggerIn] TriggerIn")
    actorMgr:GetActor("4010"):TransmitPlayerWithDialogTextByQuestId(401020, 1, nil, 0)
    this:DestroySelf()
end

function Q401020_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401020_TriggerIn] PreTriggerIn")
end

function Q401020_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401020_TriggerIn] LightUpTriggerIn")
end

function Q401020_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401020_TriggerIn] TriggerOut")
end

return Q401020_TriggerIn
