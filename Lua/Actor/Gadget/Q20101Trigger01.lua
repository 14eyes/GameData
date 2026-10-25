require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20101Trigger01 = class("Q20101Trigger01", GadgetActorProxy)
Q20101Trigger01.defaultAlias = "Q20101Trigger01"
local Q20101ClientConfig = require("Quest/Client/Q20101ClientConfig")

function Q20101Trigger01:OnPostDataPrepare() end

function Q20101Trigger01:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20101Trigger01:TriggerIn()
    print("In Q20101Trigger01")
    local actor = actorMgr:GetActor(Q20101ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2010102)
    end

    self:DestroySelf()
end

function Q20101Trigger01:TriggerOut() end
return Q20101Trigger01
