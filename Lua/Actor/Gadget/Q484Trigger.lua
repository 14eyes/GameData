require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q484Trigger = class("Q484Trigger", GadgetActorProxy)
Q484Trigger.defaultAlias = "Q484Trigger"
local Q484ClientConfig = require("Quest/Client/Q484ClientConfig")

function Q484Trigger:OnPostDataPrepare() end

function Q484Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q484Trigger:TriggerIn()
    print("In Q484Trigger")
    local actor = actorMgr:GetActor(Q484ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q484Trigger:TriggerOut() end
return Q484Trigger
