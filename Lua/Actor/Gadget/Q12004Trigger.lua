require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12004Trigger = class("Q12004Trigger", GadgetActorProxy)
Q12004Trigger.defaultAlias = "Q12004Trigger"
local Q12004ClientConfig = require("Quest/Client/Q12004ClientConfig")

local mainID = Q12004ClientConfig.MainID
local actorAlias = Q12004ClientConfig.ActorAlias
local subIDs = Q12004ClientConfig.SubIDs
local npcs = Q12004ClientConfig.Npcs
local datas = Q12004ClientConfig.Datas

function Q12004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12004Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12004ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200403) == 2 then
        actor:FinishQuestID(false, 1200403)
    end

    self:DestroySelf()
end

function Q12004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12004Trigger
