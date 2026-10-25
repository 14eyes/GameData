require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400222_Trigger = class("Q400222_Trigger", GadgetActorProxy)
Q400222_Trigger.defaultAlias = "Q400222_Trigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400222_Trigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400222_Trigger] OnPostDataPrepare")
    this = self
end

function Q400222_Trigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400222_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400222_Trigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400222_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4002")
    actor:CreateQuestNpcById(400222, npcs.Npc1075Data.id, 1)
    actor:RequestInteraction(npcs.Npc1075Data.alias)
    this:DestroySelf()
end

function Q400222_Trigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400222_Trigger] PreTriggerIn")
end

function Q400222_Trigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400222_Trigger] LightUpTriggerIn")
end

function Q400222_Trigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400222_Trigger] TriggerOut")
end

return Q400222_Trigger
