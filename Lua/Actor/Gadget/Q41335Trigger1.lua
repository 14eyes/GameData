require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41335Trigger1 = class("Q41335Trigger1", GadgetActorProxy)
Q41335Trigger1.defaultAlias = "Q41335Trigger1"
local Q41335ClientConfig = require("Quest/Client/Q41335ClientConfig")

local subIDs = Q41335ClientConfig.SubIDs
local npcs = Q41335ClientConfig.Npcs

function Q41335Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41335Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, sceneData:GetDummyPoint(3, "Q4133505Fanmier"), self.TriggerIn, self.TriggerOut)
end

function Q41335Trigger1:TriggerIn()
    print("TriggerIn")
    local Q41335ClientConfig = require("Quest/Client/Q41335ClientConfig")
    local actor = actorMgr:GetActor(Q41335ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4133504)
    end

    self:DestroySelf()
end

function Q41335Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q41335Trigger1
