require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12005TriggerSeek2 = class("Q12005TriggerSeek2", GadgetActorProxy)
Q12005TriggerSeek2.defaultAlias = "Q12005TriggerSeek2"
local Q12005ClientConfig = require("Quest/Client/Q12005ClientConfig")

local mainID = Q12005ClientConfig.MainID
local actorAlias = Q12005ClientConfig.ActorAlias
local subIDs = Q12005ClientConfig.SubIDs
local npcs = Q12005ClientConfig.Npcs
local datas = Q12005ClientConfig.Datas

function Q12005TriggerSeek2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12005TriggerSeek2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12005TriggerSeek2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12005ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200517) == 2 then
        actor:FinishQuestID(false, 1200517)
    end

    self:DestroySelf()
end

function Q12005TriggerSeek2:TriggerOut()
    print("TriggerOut")
end

return Q12005TriggerSeek2
