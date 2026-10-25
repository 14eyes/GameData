require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101102Trigger2 = class("Q101102Trigger2", GadgetActorProxy)
Q101102Trigger2.defaultAlias = "Q101102Trigger2"
local Q1011ClientConfig = require("Quest/Client/Q1011ClientConfig")

function Q101102Trigger2:OnPostDataPrepare() end

function Q101102Trigger2:OnPostComponentPrepare()
    self:AddComponentTrigger(170, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101102Trigger2:TriggerIn()
    local actor = actorMgr:GetActor(Q1011ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101116)
    end

    self:DestroySelf()
end

function Q101102Trigger2:TriggerOut() end
return Q101102Trigger2
