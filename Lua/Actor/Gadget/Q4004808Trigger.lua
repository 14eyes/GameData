require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004808Trigger = class("Q4004808Trigger", GadgetActorProxy)
Q4004808Trigger.defaultAlias = "Q4004808Trigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q4004808Trigger:FuncBegin()
    print("FuncBegin")
    actorMgr:GetActor("40048"):EnablePlayerInput(true)
end

function Q4004808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40.75724, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004808Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40048")
    actor:EnablePlayerInput(false)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004801_tower").pos, 0, 3.5, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004801, nil, 40048)
    actor:CallDelay(3, self.FuncBegin)
    actor:FinishQuestID(false, 4004808)
    self:DestroySelf()
end

function Q4004808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004808Trigger
