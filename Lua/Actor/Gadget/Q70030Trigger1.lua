require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70030Trigger1 = class("Q70030Trigger1", GadgetActorProxy)
Q70030Trigger1.defaultAlias = "Q70030Trigger1"
local Q70030ClientConfig = require("Quest/Client/Q70030ClientConfig")

local subIDs = Q70030ClientConfig.SubIDs
local npcs = Q70030ClientConfig.Npcs

function Q70030Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70030Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn)
end

function Q70030Trigger1:TriggerIn()
    print("TriggerIn")
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q70030ClientConfig.ActorAlias)
    if actor:GetSubQuestState(7003001) == 2 then
        actor:FinishQuestID(false, 7003001)
    end

    self:DestroySelf()
end

function Q70030Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q70030Trigger1
