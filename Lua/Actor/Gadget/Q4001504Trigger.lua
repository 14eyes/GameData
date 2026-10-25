require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001504Trigger = class("Q4001504Trigger", GadgetActorProxy)
Q4001504Trigger.defaultAlias = "Q4001504Trigger"
local Q40015ClientConfig = require("Quest/Client/Q40015ClientConfig")

local mainID = Q40015ClientConfig.MainID
local actorAlias = Q40015ClientConfig.ActorAlias
local subIDs = Q40015ClientConfig.SubIDs
local npcs = Q40015ClientConfig.Npcs
local gadgets = Q40015ClientConfig.Gadgets
local datas = Q40015ClientConfig.Datas

function Q4001504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001504Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(4001504, npcs.PaimonData.id, 3)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q4001504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4001504Trigger
