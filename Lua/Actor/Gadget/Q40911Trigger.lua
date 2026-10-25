require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40911Trigger = class("Q40911Trigger", GadgetActorProxy)
Q40911Trigger.defaultAlias = "Q40911Trigger"
local Q40911ClientConfig = require("Quest/Client/Q40911ClientConfig")

function Q40911Trigger:OnPostDataPrepare() end

function Q40911Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
    print("creat client trigger 40911Trigger")
end

function Q40911Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q40911ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4091102)
    end

    self:DestroySelf()
end

function Q40911Trigger:TriggerOut() end
return Q40911Trigger
