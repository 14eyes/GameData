require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400008_Trigger = class("Q400008_Trigger", GadgetActorProxy)
Q400008_Trigger.defaultAlias = "Q400008_Trigger"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400008_Trigger:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400008_Trigger] OnPostDataPrepare")
    this = self
end

function Q400008_Trigger:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400008_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400008_Trigger:TriggerIn()
    print("[MainId: 4000][Trigger: Q400008_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4000")
    actor:CreateQuestNpcById(400008, npcs.Npc1075Data.id, 1)
    actor:RequestInteraction(npcs.Npc1075Data.alias)
    this:DestroySelf()
end

function Q400008_Trigger:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400008_Trigger] PreTriggerIn")
end

function Q400008_Trigger:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400008_Trigger] LightUpTriggerIn")
    actorMgr:GetActor("4000"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q400008_Trigger:TriggerOut()
    print("[MainId: 4000][Trigger: Q400008_Trigger] TriggerOut")
end

return Q400008_Trigger
