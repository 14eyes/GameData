require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11011TriggerYu = class("Q11011TriggerYu", GadgetActorProxy)
Q11011TriggerYu.defaultAlias = "Q11011TriggerYu"
local Q11011ClientConfig = require("Quest/Client/Q11011ClientConfig")

local mainID = Q11011ClientConfig.MainID
local actorAlias = Q11011ClientConfig.ActorAlias
local subIDs = Q11011ClientConfig.SubIDs
local npcs = Q11011ClientConfig.Npcs
local datas = Q11011ClientConfig.Datas

function Q11011TriggerYu:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11011TriggerYu:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11011TriggerYu:TriggerIn()
    local actor = actorMgr:GetActor(Q11011ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101108) == 2 then
        actor:FinishQuestID(false, 1101108)
    end

    print("let 1101108 finish")
    self:DestroySelf()
end

function Q11011TriggerYu:TriggerOut()
    print("TriggerOut")
end

return Q11011TriggerYu
