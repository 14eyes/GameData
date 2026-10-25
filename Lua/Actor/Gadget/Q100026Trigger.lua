require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100026Trigger = class("Q100026Trigger", GadgetActorProxy)
Q100026Trigger.defaultAlias = "Q100026Trigger"
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

function Q100026Trigger:OnPostDataPrepare() end

function Q100026Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(16.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100026Trigger:TriggerIn()
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q100026")
    self:CallDelay(2, function(arg1)
        local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 100026)
        end

        arg1:DestroySelf()
    end)
end

function Q100026Trigger:TriggerOut() end
return Q100026Trigger
