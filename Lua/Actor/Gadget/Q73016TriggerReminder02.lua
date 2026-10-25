require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016TriggerReminder02 = class("Q73016TriggerReminder02", GadgetActorProxy)
Q73016TriggerReminder02.defaultAlias = "Q73016TriggerReminder02"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016TriggerReminder02:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder02] OnPostDataPrepare")
    this = self
end

function Q73016TriggerReminder02:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder02] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016TriggerReminder02:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder02] TriggerIn")
    local actor = actorMgr:GetActor("73016")
    actor:NarratorOnlyTask(datas.NarratorTable7, nil, "")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "guide_Q7301609_reminder").pos, 0, 2, false, false)
    this:DestroySelf()
end

function Q73016TriggerReminder02:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016TriggerReminder02] TriggerOut")
end

return Q73016TriggerReminder02
