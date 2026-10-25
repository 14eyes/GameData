require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402616Trigger = class("Q7402616Trigger", GadgetActorProxy)
Q7402616Trigger.defaultAlias = "Q7402616Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402616Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402616Trigger] OnPostDataPrepare")
    this = self
end

function Q7402616Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402616Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402616Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402616Trigger] TriggerIn")
    actorMgr:GetActor("74026"):NarratorOnlyTaskByData(datas.WorkingEnv, nil, 74026)
    actorUtils.FinishQuestID(false, 7402616)
    this:DestroySelf()
end

function Q7402616Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402616Trigger] PreTriggerIn")
end

function Q7402616Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402616Trigger] LightUpTriggerIn")
end

function Q7402616Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402616Trigger] TriggerOut")
end

return Q7402616Trigger
