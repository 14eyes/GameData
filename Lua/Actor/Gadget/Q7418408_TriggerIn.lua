require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418408_TriggerIn = class("Q7418408_TriggerIn", GadgetActorProxy)
Q7418408_TriggerIn.defaultAlias = "Q7418408_TriggerIn"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q7418408_TriggerIn:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q7418408_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q7418408_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q7418408_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7418408_TriggerIn:TriggerIn()
    print("[MainId: 74184][Trigger: Q7418408_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q7418408_TriggerIn:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q7418408_TriggerIn] PreTriggerIn")
    local actor = actorMgr:GetActor("74184")
    actor:CreateQuestNpcById(7418408, npcs.Npc21432Data.id, 0)
    actor:RequestInteraction(npcs.Npc21432Data.alias, "", true)
end

function Q7418408_TriggerIn:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q7418408_TriggerIn] LightUpTriggerIn")
end

function Q7418408_TriggerIn:TriggerOut()
    print("[MainId: 74184][Trigger: Q7418408_TriggerIn] TriggerOut")
end

return Q7418408_TriggerIn
