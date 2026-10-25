require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202503TriggertoFail = class("Q1202503TriggertoFail", GadgetActorProxy)
Q1202503TriggertoFail.defaultAlias = "Q1202503TriggertoFail"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202503TriggertoFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202503TriggertoFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202503TriggertoFail:TriggerIn()
    print("TriggerIn")
end

function Q1202503TriggertoFail:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("12025")
    actor:ShowBlackScreen(0.4, 3, 0.4, nil, nil, nil, "QUEST_Black_Q1202621", false, true)
    actor:FinishQuestID(true, 1202503)
    self:DestroySelf()
end

return Q1202503TriggertoFail
