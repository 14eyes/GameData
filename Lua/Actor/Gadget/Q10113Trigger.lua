require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10113Trigger = class("Q10113Trigger", GadgetActorProxy)
Q10113Trigger.defaultAlias = "Q10113Trigger"
local Q10113ClientConfig = require("Quest/Client/Q10113ClientConfig")

function Q10113Trigger:OnPostDataPrepare() end

function Q10113Trigger:OnPostComponentPrepare()
    print("")
    self:AddComponentTrigger(5, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10113Trigger:TriggerIn()
    print("In Q10113Trigger")
    local actor = actorMgr:GetActor(Q10113ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1011302)
    end

    self:DestroySelf()
end

function Q10113Trigger:TriggerOut() end
return Q10113Trigger
