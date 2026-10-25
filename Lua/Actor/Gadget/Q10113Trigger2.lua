require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10113Trigger2 = class("Q10113Trigger2", GadgetActorProxy)
Q10113Trigger2.defaultAlias = "Q10113Trigger2"
local Q10113ClientConfig = require("Quest/Client/Q10113ClientConfig")

function Q10113Trigger2:OnPostDataPrepare() end

function Q10113Trigger2:OnPostComponentPrepare()
    print("")
    self:AddComponentTrigger(50, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10113Trigger2:TriggerIn()
    print("In Q10113Trigger2")
    local actor = actorMgr:GetActor(Q10113ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1011301)
    end

    self:DestroySelf()
end

function Q10113Trigger2:TriggerOut() end
return Q10113Trigger2
