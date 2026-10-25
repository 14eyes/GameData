require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73019Trigger_7301901 = class("Q73019Trigger_7301901", GadgetActorProxy)
Q73019Trigger_7301901.defaultAlias = "Q73019Trigger_7301901"
local Q73019ClientConfig = require("Quest/Client/Q73019ClientConfig")

local subIDs = Q73019ClientConfig.SubIDs
local npcs = Q73019ClientConfig.Npcs
local datas = Q73019ClientConfig.Datas

function Q73019Trigger_7301901:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73019Trigger_7301901:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73019Trigger_7301901:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73019")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7301901_N4193").pos, 0, 3, true, false)
    actorUtils.FinishQuestID(false, 7301901)
    actor:NarratorOnlyTask(datas.Reminder_7301901, nil, "")
    self:DestroySelf()
end

function Q73019Trigger_7301901:TriggerOut()
    print("TriggerOut")
end

return Q73019Trigger_7301901
