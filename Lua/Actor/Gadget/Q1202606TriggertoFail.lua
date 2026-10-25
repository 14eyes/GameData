require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202606TriggertoFail = class("Q1202606TriggertoFail", GadgetActorProxy)
Q1202606TriggertoFail.defaultAlias = "Q1202606TriggertoFail"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202606TriggertoFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202606TriggertoFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202606TriggertoFail:TriggerIn()
    print("TriggerIn")
end

function Q1202606TriggertoFail:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12026"):FinishQuestID(true, 1202606)
    self:DestroySelf()
end

return Q1202606TriggertoFail
