require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73019Trigger_7301903 = class("Q73019Trigger_7301903", GadgetActorProxy)
Q73019Trigger_7301903.defaultAlias = "Q73019Trigger_7301903"
local Q73019ClientConfig = require("Quest/Client/Q73019ClientConfig")

local subIDs = Q73019ClientConfig.SubIDs
local npcs = Q73019ClientConfig.Npcs
local datas = Q73019ClientConfig.Datas

function Q73019Trigger_7301903:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73019Trigger_7301903:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(25, 15, 8, true, {x = 0.0, y = 4.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73019Trigger_7301903:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73019")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7301903_N4196").pos, 0, 3, true, false)
    actorUtils.FinishQuestID(false, 7301903)
    actor:NarratorOnlyTask(datas.Reminder_7301903, nil, "")
    self:DestroySelf()
end

function Q73019Trigger_7301903:TriggerOut()
    print("TriggerOut")
end

return Q73019Trigger_7301903
