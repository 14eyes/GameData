require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200905Trigger = class("Q200905Trigger", GadgetActorProxy)
Q200905Trigger.defaultAlias = "Q200905Trigger"
local Q2009ClientConfig = require("Quest/Client/Q2009ClientConfig")

local mainID = Q2009ClientConfig.MainID
local actorAlias = Q2009ClientConfig.ActorAlias
local subIDs = Q2009ClientConfig.SubIDs
local npcs = Q2009ClientConfig.Npcs
local gadgets = Q2009ClientConfig.Gadgets
local datas = Q2009ClientConfig.Datas

function Q200905Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200905Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200905Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200905, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q200905Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200905Trigger
