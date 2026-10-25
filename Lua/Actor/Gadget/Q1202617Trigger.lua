require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202617Trigger = class("Q1202617Trigger", GadgetActorProxy)
Q1202617Trigger.defaultAlias = "Q1202617Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202617Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202617Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202617Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12026")
    actor:CreateQuestNpcById(1202617, npcs.PaimonData.id, 4)
    actor:RequestInteraction(npcs.PaimonData.alias)
end

function Q1202617Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202617Trigger
