require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202516Trigger = class("Q1202516Trigger", GadgetActorProxy)
Q1202516Trigger.defaultAlias = "Q1202516Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202516Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202516Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202516Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12025")
    actor:FinishQuestID(false, 1202516)
    actor:CallDelay(1, function(arg1)
        local actor = actorMgr:GetActor("12025")
        actor:ClearNarratorTask()
        actor:StopNarrator()
        local v = actorMgr:GetActor("12025")
        v:NarratorOnlyTaskByData(datas.kaiche1202503, nil, 12025)
        v:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1202618_guipopo02").pos, 1, 2, true, false)
    end)

    self:DestroySelf()
end

function Q1202516Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202516Trigger
