require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100001Trigger01 = class("Q1100001Trigger01", GadgetActorProxy)
Q1100001Trigger01.defaultAlias = "Q1100001Trigger01"
local Q11000ClientConfig = require("Quest/Client/Q11000ClientConfig")

function Q1100001Trigger01:OnPostDataPrepare() end

function Q1100001Trigger01:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100001Trigger01:TriggerIn()
    print("IN Q1100001Trigger01")
    local actor = actorMgr:GetActor(Q11000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100001)
    end

    self:DestroySelf()
end

function Q1100001Trigger01:TriggerOut() end
return Q1100001Trigger01
