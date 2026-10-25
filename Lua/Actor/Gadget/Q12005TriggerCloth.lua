require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12005TriggerCloth = class("Q12005TriggerCloth", GadgetActorProxy)
Q12005TriggerCloth.defaultAlias = "Q12005TriggerCloth"
local Q12005ClientConfig = require("Quest/Client/Q12005ClientConfig")

local mainID = Q12005ClientConfig.MainID
local actorAlias = Q12005ClientConfig.ActorAlias
local subIDs = Q12005ClientConfig.SubIDs
local npcs = Q12005ClientConfig.Npcs
local datas = Q12005ClientConfig.Datas

function Q12005TriggerCloth:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12005TriggerCloth:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12005TriggerCloth:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12005ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200501) == 2 then
        actor:FinishQuestID(false, 1200501)
    end

    self:DestroySelf()
end

function Q12005TriggerCloth:TriggerOut()
    print("TriggerOut")
end

return Q12005TriggerCloth
