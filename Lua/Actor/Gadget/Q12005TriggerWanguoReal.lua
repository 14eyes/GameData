require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12005TriggerWanguoReal = class("Q12005TriggerWanguoReal", GadgetActorProxy)
Q12005TriggerWanguoReal.defaultAlias = "Q12005TriggerWanguoReal"
local Q12005ClientConfig = require("Quest/Client/Q12005ClientConfig")

local mainID = Q12005ClientConfig.MainID
local actorAlias = Q12005ClientConfig.ActorAlias
local subIDs = Q12005ClientConfig.SubIDs
local npcs = Q12005ClientConfig.Npcs
local datas = Q12005ClientConfig.Datas

function Q12005TriggerWanguoReal:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12005TriggerWanguoReal:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12005TriggerWanguoReal:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12005ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200504) == 2 then
        actor:FinishQuestID(false, 1200504)
    end

    self:DestroySelf()
end

function Q12005TriggerWanguoReal:TriggerOut()
    print("TriggerOut")
end

return Q12005TriggerWanguoReal
