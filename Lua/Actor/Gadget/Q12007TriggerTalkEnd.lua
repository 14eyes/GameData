require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12007TriggerTalkEnd = class("Q12007TriggerTalkEnd", GadgetActorProxy)
Q12007TriggerTalkEnd.defaultAlias = "Q12007TriggerTalkEnd"
local Q12007ClientConfig = require("Quest/Client/Q12007ClientConfig")

local mainID = Q12007ClientConfig.MainID
local actorAlias = Q12007ClientConfig.ActorAlias
local subIDs = Q12007ClientConfig.SubIDs
local npcs = Q12007ClientConfig.Npcs
local datas = Q12007ClientConfig.Datas

function Q12007TriggerTalkEnd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12007TriggerTalkEnd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12007TriggerTalkEnd:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12007ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200706) == 2 then
        actor:FinishQuestID(false, 1200706)
    end

    self:DestroySelf()
end

function Q12007TriggerTalkEnd:TriggerOut()
    print("TriggerOut")
end

return Q12007TriggerTalkEnd
