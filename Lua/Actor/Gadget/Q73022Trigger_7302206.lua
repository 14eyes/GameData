require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73022Trigger_7302206 = class("Q73022Trigger_7302206", GadgetActorProxy)
Q73022Trigger_7302206.defaultAlias = "Q73022Trigger_7302206"
local Q73022ClientConfig = require("Quest/Client/Q73022ClientConfig")

local subIDs = Q73022ClientConfig.SubIDs
local npcs = Q73022ClientConfig.Npcs
local datas = Q73022ClientConfig.Datas

function Q73022Trigger_7302206:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73022Trigger_7302206:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73022Trigger_7302206:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73022")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7302201_N4195").pos, 0, 3, true, false)
    actor:NarratorOnlyTask(datas.Reminder_7302206, nil, "")
    actorUtils.FinishQuestID(false, 7302206)
    self:DestroySelf()
end

function Q73022Trigger_7302206:TriggerOut()
    print("TriggerOut")
end

return Q73022Trigger_7302206
