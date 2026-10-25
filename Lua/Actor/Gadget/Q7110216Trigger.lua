require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110216Trigger = class("Q7110216Trigger", GadgetActorProxy)
Q7110216Trigger.defaultAlias = "Q7110216Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110216Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110216Trigger] OnPostDataPrepare")
    this = self
end

function Q7110216Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110216Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110216Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110216Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71102")
    actorUtils.FinishQuestID(false, 7110216)
    actor:NarratorOnlyTaskByData(datas.Narrator_7110206)
    this:DestroySelf()
end

function Q7110216Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110216Trigger] PreTriggerIn")
end

function Q7110216Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110216Trigger] LightUpTriggerIn")
end

function Q7110216Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110216Trigger] TriggerOut")
end

return Q7110216Trigger
