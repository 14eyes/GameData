require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200501Trigger = class("Q200501Trigger", GadgetActorProxy)
Q200501Trigger.defaultAlias = "Q200501Trigger"
local Q2005ClientConfig = require("Quest/Client/Q2005ClientConfig")

local mainID = Q2005ClientConfig.MainID
local actorAlias = Q2005ClientConfig.ActorAlias
local subIDs = Q2005ClientConfig.SubIDs
local npcs = Q2005ClientConfig.Npcs
local gadgets = Q2005ClientConfig.Gadgets
local datas = Q2005ClientConfig.Datas

function Q200501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200501Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200501, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q200501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200501Trigger
