require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11011TriggerPier = class("Q11011TriggerPier", GadgetActorProxy)
Q11011TriggerPier.defaultAlias = "Q11011TriggerPier"
local Q11011ClientConfig = require("Quest/Client/Q11011ClientConfig")

local mainID = Q11011ClientConfig.MainID
local actorAlias = Q11011ClientConfig.ActorAlias
local subIDs = Q11011ClientConfig.SubIDs
local npcs = Q11011ClientConfig.Npcs
local datas = Q11011ClientConfig.Datas

function Q11011TriggerPier:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11011TriggerPier:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11011TriggerPier:TriggerIn()
    local actor = actorMgr:GetActor(Q11011ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101102) == 2 then
        actor:FinishQuestID(false, 1101102)
    end

    print("let 1101102 finish")
    self:DestroySelf()
end

function Q11011TriggerPier:TriggerOut()
    print("TriggerOut")
end

return Q11011TriggerPier
