require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q380Trigger = class("Q380Trigger", GadgetActorProxy)
Q380Trigger.defaultAlias = "Q380Trigger"
local Q380ClientConfig = require("Quest/Client/Q380ClientConfig")

function Q380Trigger:OnPostDataPrepare() end

function Q380Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(70, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q380Trigger:TriggerIn()
    print("Out Q380Trigger")
    local actor = actorMgr:GetActor(Q380ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q380Trigger:TriggerOut() end
return Q380Trigger
