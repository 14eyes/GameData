require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300513Trigger = class("Q300513Trigger", GadgetActorProxy)
Q300513Trigger.defaultAlias = "Q300513Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300513Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300513Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300513Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("3005")
    actor:CreateQuestNpcById(300513, npcs.PaimonData.id, 4)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q300513Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300513Trigger
