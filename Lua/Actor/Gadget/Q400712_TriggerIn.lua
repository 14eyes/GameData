require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400712_TriggerIn = class("Q400712_TriggerIn", GadgetActorProxy)
Q400712_TriggerIn.defaultAlias = "Q400712_TriggerIn"
local Q4007ClientConfig = require("Quest/Client/Q4007ClientConfig")

local this
local subIDs = Q4007ClientConfig.SubIDs
local npcs = Q4007ClientConfig.Npcs
local points = Q4007ClientConfig.Points
local datas = Q4007ClientConfig.Datas

function Q400712_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4007][Trigger: Q400712_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400712_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4007][Trigger: Q400712_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400712_TriggerIn:TriggerIn()
    print("[MainId: 4007][Trigger: Q400712_TriggerIn] TriggerIn")
    actorMgr:GetActor("4007"):TransmitPlayerWithDialogTextByQuestId(400710, 1, datas.DialogsId_40079905, 0.5, function(arg1)
        actorMgr:GetActor("4007"):NarratorOnlyTaskByData(datas.NarratorWithId_400710)
        actorUtils.FinishQuestID(false, 400712)
    end)

    this:DestroySelf()
end

function Q400712_TriggerIn:PreTriggerIn()
    print("[MainId: 4007][Trigger: Q400712_TriggerIn] PreTriggerIn")
end

function Q400712_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4007][Trigger: Q400712_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4007"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q400712_TriggerIn:TriggerOut()
    print("[MainId: 4007][Trigger: Q400712_TriggerIn] TriggerOut")
end

return Q400712_TriggerIn
