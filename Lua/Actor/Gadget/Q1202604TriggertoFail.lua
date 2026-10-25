require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202604TriggertoFail = class("Q1202604TriggertoFail", GadgetActorProxy)
Q1202604TriggertoFail.defaultAlias = "Q1202604TriggertoFail"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202604TriggertoFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202604TriggertoFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(65, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202604TriggertoFail:TriggerIn()
    print("TriggerIn")
end

function Q1202604TriggertoFail:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12026"):FinishQuestID(true, 1202604)
    self:DestroySelf()
end

return Q1202604TriggertoFail
