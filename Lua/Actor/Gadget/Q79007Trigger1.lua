require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79007Trigger1 = class("Q79007Trigger1", GadgetActorProxy)
Q79007Trigger1.defaultAlias = "Q79007Trigger1"
local Q79007ClientConfig = require("Quest/Client/Q79007ClientConfig")

local mainID = Q79007ClientConfig.MainID
local actorAlias = Q79007ClientConfig.ActorAlias
local subIDs = Q79007ClientConfig.SubIDs
local npcs = Q79007ClientConfig.Npcs
local datas = Q79007ClientConfig.Datas

function Q79007Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79007Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(1200, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q79007Trigger1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q79007ClientConfig.ActorAlias)
    if actor:GetSubQuestState(7900701) == 2 then
        actor:FinishQuestID(false, 7900701)
    end

    self:DestroySelf()
end

function Q79007Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q79007Trigger1
