require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20101Trigger04 = class("Q20101Trigger04", GadgetActorProxy)
Q20101Trigger04.defaultAlias = "Q20101Trigger04"
local Q20101ClientConfig = require("Quest/Client/Q20101ClientConfig")

function Q20101Trigger04:OnPostDataPrepare() end

function Q20101Trigger04:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20101Trigger04:TriggerIn()
    print("In Q20101Trigger04")
    local actor = actorMgr:GetActor(Q20101ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2010124)
    end

    self:DestroySelf()
end

function Q20101Trigger04:TriggerOut() end
return Q20101Trigger04
