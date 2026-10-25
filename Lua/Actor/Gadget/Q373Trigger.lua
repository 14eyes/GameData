require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q373Trigger = class("Q373Trigger", GadgetActorProxy)
Q373Trigger.defaultAlias = "Q373Trigger"
local Q373ClientConfig = require("Quest/Client/Q373ClientConfig")

function Q373Trigger:OnPostDataPrepare() end

function Q373Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q373Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q373ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q373Trigger:TriggerOut() end
return Q373Trigger
