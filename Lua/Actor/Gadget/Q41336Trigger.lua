require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41336Trigger = class("Q41336Trigger", GadgetActorProxy)
Q41336Trigger.defaultAlias = "Q41336Trigger"
local Q41336ClientConfig = require("Quest/Client/Q41336ClientConfig")

local mainID = Q41336ClientConfig.MainID
local actorAlias = Q41336ClientConfig.ActorAlias
local subIDs = Q41336ClientConfig.SubIDs
local npcs = Q41336ClientConfig.Npcs
local datas = Q41336ClientConfig.Datas

function Q41336Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41336Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddQuestComponentTrigger(41336, 25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41336Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(4133604, npcs.Npc201701Data.id, 0)
    actor:RequestInteractionForceAlias(npcs.Npc201701Data.alias)
end

function Q41336Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41336Trigger
