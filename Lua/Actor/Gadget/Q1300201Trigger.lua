require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300201Trigger = class("Q1300201Trigger", GadgetActorProxy)
Q1300201Trigger.defaultAlias = "Q1300201Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300201Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("13002")
    actor:CreateQuestNpcById(1300201, npcs.Npc1050Data.id, 1)
    actor:RequestInteraction(npcs.Npc1050Data.alias)
    self:DestroySelf()
end

function Q1300201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300201Trigger
