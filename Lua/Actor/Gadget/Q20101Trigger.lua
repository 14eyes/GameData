require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20101Trigger = class("Q20101Trigger", GadgetActorProxy)
Q20101Trigger.defaultAlias = "Q20101Trigger"
local Q20101ClientConfig = require("Quest/Client/Q20101ClientConfig")

function Q20101Trigger:OnPostDataPrepare() end

function Q20101Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20101Trigger:TriggerIn()
    print("In Q20101Trigger")
    local actor = actorMgr:GetActor(Q20101ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2010104)
    end

    self:DestroySelf()
end

function Q20101Trigger:TriggerOut() end
return Q20101Trigger
