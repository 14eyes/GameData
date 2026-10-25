require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005702Trigger = class("Q4005702Trigger", GadgetActorProxy)
Q4005702Trigger.defaultAlias = "Q4005702Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005702Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005702)
    actorMgr:GetActor("40057"):NarratorOnlyTaskByData(datas.NarratorWithId4005702)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4005702_N1032").pos, 0, 2, true, false)
    globalActor:StopLocalAvatar()
    self:EnablePlayerInput(false)
    self:CallDelay(2, function(arg1)
        arg1:EnablePlayerInput(true)
        arg1:DestroySelf()
    end)
end

function Q4005702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005702Trigger
