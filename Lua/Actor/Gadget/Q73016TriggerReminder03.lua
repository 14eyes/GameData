require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016TriggerReminder03 = class("Q73016TriggerReminder03", GadgetActorProxy)
Q73016TriggerReminder03.defaultAlias = "Q73016TriggerReminder03"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016TriggerReminder03:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder03] OnPostDataPrepare")
    this = self
end

function Q73016TriggerReminder03:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder03] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016TriggerReminder03:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder03] TriggerIn")
    actorMgr:GetActor("73016"):NarratorOnlyTask(datas.NarratorTable8, nil, "")
    this:DestroySelf()
end

function Q73016TriggerReminder03:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder03] TriggerOut")
end

return Q73016TriggerReminder03
