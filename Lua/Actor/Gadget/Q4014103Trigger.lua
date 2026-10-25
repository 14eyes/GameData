require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4014103Trigger = class("Q4014103Trigger", GadgetActorProxy)
Q4014103Trigger.defaultAlias = "Q4014103Trigger"
local Q40141ClientConfig = require("Quest/Client/Q40141ClientConfig")

local this
local subIDs = Q40141ClientConfig.SubIDs
local npcs = Q40141ClientConfig.Npcs
local points = Q40141ClientConfig.Points
local datas = Q40141ClientConfig.Datas

function Q4014103Trigger:OnPostDataPrepare()
    print("[MainId: 40141][Trigger: Q4014103Trigger] OnPostDataPrepare")
    this = self
end

function Q4014103Trigger:OnPostComponentPrepare()
    print("[MainId: 40141][Trigger: Q4014103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4014103Trigger:TriggerIn()
    print("[MainId: 40141][Trigger: Q4014103Trigger] TriggerIn")
    actorMgr:GetActor("40141"):NarratorOnlyTaskByData(datas.Narrator_4014199, nil, 40141)
    actorUtils.FinishQuestID(false, 4014103)
    this:DestroySelf()
end

function Q4014103Trigger:PreTriggerIn()
    print("[MainId: 40141][Trigger: Q4014103Trigger] PreTriggerIn")
end

function Q4014103Trigger:LightUpTriggerIn()
    print("[MainId: 40141][Trigger: Q4014103Trigger] LightUpTriggerIn")
end

function Q4014103Trigger:TriggerOut()
    print("[MainId: 40141][Trigger: Q4014103Trigger] TriggerOut")
end

return Q4014103Trigger
