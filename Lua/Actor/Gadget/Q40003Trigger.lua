require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40003Trigger = class("Q40003Trigger", GadgetActorProxy)
Q40003Trigger.defaultAlias = "Q40003Trigger"
local Q40003ClientConfig = require("Quest/Client/Q40003ClientConfig")

function Q40003Trigger:OnPostDataPrepare() end

function Q40003Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q40003Trigger:TriggerIn()
    print("Out Q40003Trigger")
    local actor = actorMgr:GetActor(Q40003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4000305)
    end

    self:DestroySelf()
end

function Q40003Trigger:TriggerOut() end
return Q40003Trigger
