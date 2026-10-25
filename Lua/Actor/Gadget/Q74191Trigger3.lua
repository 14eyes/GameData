require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74191Trigger3 = class("Q74191Trigger3", GadgetActorProxy)
Q74191Trigger3.defaultAlias = "Q74191Trigger3"
local Q74191ClientConfig = require("Quest/Client/Q74191ClientConfig")

local this
local subIDs = Q74191ClientConfig.SubIDs
local npcs = Q74191ClientConfig.Npcs
local datas = Q74191ClientConfig.Datas

function Q74191Trigger3:OnPostDataPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger3] OnPostDataPrepare")
    this = self
end

function Q74191Trigger3:OnPostComponentPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(62.57188, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74191)
end

function Q74191Trigger3:TriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger3] TriggerIn")
    this:DestroySelf()
end

function Q74191Trigger3:PreTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger3] PreTriggerIn")
    local actor = actorMgr:GetActor("74191")
    actor:CreateQuestNpcById(7419102, npcs.Npc21355Data.id, 0)
    actor:CreateQuestNpcById(7419102, npcs.Npc21462Data.id, 0)
    actor:RequestInteraction(npcs.Npc21355Data.alias, "", true)
end

function Q74191Trigger3:LightUpTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger3] LightUpTriggerIn")
end

function Q74191Trigger3:TriggerOut()
    print("[MainId: 74191][Trigger: Q74191Trigger3] TriggerOut")
end

return Q74191Trigger3
