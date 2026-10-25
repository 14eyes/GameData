require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11014TriggerSearch1 = class("Q11014TriggerSearch1", GadgetActorProxy)
Q11014TriggerSearch1.defaultAlias = "Q11014TriggerSearch1"
local Q11014ClientConfig = require("Quest/Client/Q11014ClientConfig")

local subIDs = Q11014ClientConfig.SubIDs
local npcs = Q11014ClientConfig.Npcs

function Q11014TriggerSearch1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11014TriggerSearch1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11014TriggerSearch1:TriggerIn()
    print("TriggerIn")
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q11014ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101403) == 2 then
        actor:FinishQuestID(false, 1101403)
    end

    self:DestroySelf()
end

function Q11014TriggerSearch1:TriggerOut()
    print("TriggerOut")
end

return Q11014TriggerSearch1
