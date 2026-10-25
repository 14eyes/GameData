require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016TriggerReminder01 = class("Q73016TriggerReminder01", GadgetActorProxy)
Q73016TriggerReminder01.defaultAlias = "Q73016TriggerReminder01"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016TriggerReminder01:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder01] OnPostDataPrepare")
    this = self
end

function Q73016TriggerReminder01:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder01] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016TriggerReminder01:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder01] TriggerIn")
    actorMgr:GetActor("73016"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    this:DestroySelf()
end

function Q73016TriggerReminder01:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder01] TriggerOut")
end

return Q73016TriggerReminder01
