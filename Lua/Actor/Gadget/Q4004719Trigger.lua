require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004719Trigger = class("Q4004719Trigger", GadgetActorProxy)
Q4004719Trigger.defaultAlias = "Q4004719Trigger"
local Q40047ClientConfig = require("Quest/Client/Q40047ClientConfig")

local subIDs = Q40047ClientConfig.SubIDs
local npcs = Q40047ClientConfig.Npcs
local datas = Q40047ClientConfig.Datas

function Q4004719Trigger:FuncBegin()
    print("FuncBegin")
    local actor = actorMgr:GetActor("40047")
    actor:EnablePlayerInput(true)
    actor:FinishQuestID(false, 4004719)
end

function Q4004719Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004719Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18.14573, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004719Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40047")
    actor:EnablePlayerInput(false)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004705_guide").pos, 0, 2, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004702, nil, 40047)
    actor:CallDelay(2, self.FuncBegin)
    self:DestroySelf()
end

function Q4004719Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004719Trigger
