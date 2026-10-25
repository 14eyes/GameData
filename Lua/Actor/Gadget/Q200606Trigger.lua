require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200606Trigger = class("Q200606Trigger", GadgetActorProxy)
Q200606Trigger.defaultAlias = "Q200606Trigger"
local Q2006ClientConfig = require("Quest/Client/Q2006ClientConfig")

local mainID = Q2006ClientConfig.MainID
local actorAlias = Q2006ClientConfig.ActorAlias
local subIDs = Q2006ClientConfig.SubIDs
local npcs = Q2006ClientConfig.Npcs
local datas = Q2006ClientConfig.Datas

function Q200606Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200606Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200606Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200606, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q200606Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200606Trigger
