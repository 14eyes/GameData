require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q357Trigger = class("Q357Trigger", GadgetActorProxy)
Q357Trigger.defaultAlias = "Q357Trigger"
local Q358ClientConfig = require("Quest/Client/Q358ClientConfig")

local paimonData = Q358ClientConfig.PaimonData
local actor = actorMgr:GetActor(Q358ClientConfig.ActorAlias)
function Q357Trigger:OnPostDataPrepare() end

function Q357Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q357Trigger:TriggerIn() end

function Q357Trigger:TriggerOut()
    print("357Trigger Out : Destory Paimon")
    local questNpcActor = actor:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:DestroySelf()
end

return Q357Trigger
