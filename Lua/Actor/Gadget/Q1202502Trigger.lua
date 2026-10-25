require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202502Trigger = class("Q1202502Trigger", GadgetActorProxy)
Q1202502Trigger.defaultAlias = "Q1202502Trigger"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202502Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12025")
    actor:CreateQuestNpcById(1202502, npcs.PaimonData.id, 1)
    actor:RequestInteraction(npcs.PaimonData.alias)
end

function Q1202502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202502Trigger
