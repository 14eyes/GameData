require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202623Trigger = class("Q1202623Trigger", GadgetActorProxy)
Q1202623Trigger.defaultAlias = "Q1202623Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202623Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202623Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202623Trigger:TriggerIn()
    print("TriggerIn")
    local questVar = actorMgr:GetActor("12026"):GetQuestVar(1202607, 2)
    print("questvar1 =", questVar)
    if questVar == 1 then
        local actor = actorMgr:GetActor("12026")
        actor:NarratorOnlyTaskByData(datas.kaiche1202601, nil, 12026)
        actor:FinishQuestID(false, 1202623)
        self:DestroySelf()
    end
end

function Q1202623Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202623Trigger
