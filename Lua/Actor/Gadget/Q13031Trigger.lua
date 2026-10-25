require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13031Trigger = class("Q13031Trigger", GadgetActorProxy)
Q13031Trigger.defaultAlias = "Q13031Trigger"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q13031Trigger:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q13031Trigger] OnPostDataPrepare")
    this = self
end

function Q13031Trigger:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q13031Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13031Trigger:TriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger] TriggerIn")
    actorMgr:GetActor("13031"):NarratorOnlyTaskByData(datas.NarratorWithId)
    actorUtils.FinishQuestID(false, 1303102)
    this:DestroySelf()
end

function Q13031Trigger:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger] PreTriggerIn")
end

function Q13031Trigger:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger] LightUpTriggerIn")
end

function Q13031Trigger:TriggerOut()
    print("[MainId: 13031][Trigger: Q13031Trigger] TriggerOut")
end

return Q13031Trigger
