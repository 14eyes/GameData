require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12005TriggerWanguoHide = class("Q12005TriggerWanguoHide", GadgetActorProxy)
Q12005TriggerWanguoHide.defaultAlias = "Q12005TriggerWanguoHide"
local Q12005ClientConfig = require("Quest/Client/Q12005ClientConfig")

local mainID = Q12005ClientConfig.MainID
local actorAlias = Q12005ClientConfig.ActorAlias
local subIDs = Q12005ClientConfig.SubIDs
local npcs = Q12005ClientConfig.Npcs
local datas = Q12005ClientConfig.Datas

function Q12005TriggerWanguoHide:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12005TriggerWanguoHide:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12005TriggerWanguoHide:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12005ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200505) == 2 then
        actor:FinishQuestID(false, 1200505)
    end

    self:DestroySelf()
end

function Q12005TriggerWanguoHide:TriggerOut()
    print("TriggerOut")
end

return Q12005TriggerWanguoHide
