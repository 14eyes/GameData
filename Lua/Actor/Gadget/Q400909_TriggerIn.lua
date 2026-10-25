require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400909_TriggerIn = class("Q400909_TriggerIn", GadgetActorProxy)
Q400909_TriggerIn.defaultAlias = "Q400909_TriggerIn"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400909_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400909_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400909_TriggerIn:TriggerIn()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn] TriggerIn")
    actorMgr:GetActor("4009"):TransmitPlayerWithDialogTextByQuestId(400908, 1, datas.DialogsId, 0.5)
    this:DestroySelf()
end

function Q400909_TriggerIn:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn] PreTriggerIn")
end

function Q400909_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn] LightUpTriggerIn")
end

function Q400909_TriggerIn:TriggerOut()
    print("[MainId: 4009][Trigger: Q400909_TriggerIn] TriggerOut")
end

return Q400909_TriggerIn
