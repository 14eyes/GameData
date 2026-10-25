require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41335Trigger = class("Q41335Trigger", GadgetActorProxy)
Q41335Trigger.defaultAlias = "Q41335Trigger"
local Q41335ClientConfig = require("Quest/Client/Q41335ClientConfig")

local subIDs = Q41335ClientConfig.SubIDs
local npcs = Q41335ClientConfig.Npcs

function Q41335Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41335Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, sceneData:GetDummyPoint(3, "Q4133503QingZhou"), self.TriggerIn, self.TriggerOut)
end

function Q41335Trigger:TriggerIn()
    print("TriggerIn")
    print("41335Trigger In")
    local Q41335ClientConfig = require("Quest/Client/Q41335ClientConfig")
    local actor = actorMgr:GetActor(Q41335ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4133502)
    end

    self:DestroySelf()
end

function Q41335Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41335Trigger
