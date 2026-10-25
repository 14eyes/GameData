require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100301Trigger = class("Q1100301Trigger", GadgetActorProxy)
Q1100301Trigger.defaultAlias = "Q1100301Trigger"
local Q11003ClientConfig = require("Quest/Client/Q11003ClientConfig")

local olafData = Q11003ClientConfig.OlafData
function Q1100301Trigger:OnPostDataPrepare() end

function Q1100301Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100301Trigger:TriggerIn()
    print("IN Q1100301Trigger")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1100302Olaf").pos, 2, 2, true)
    local actor = actorMgr:GetActor(Q11003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100301)
    end

    actor:GetQuestNpcActor(olafData.Alias):DoFreeStyle(4200)
    self:DestroySelf()
end

function Q1100301Trigger:TriggerOut() end
return Q1100301Trigger
