require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400001_Trigger = class("Q400001_Trigger", GadgetActorProxy)
Q400001_Trigger.defaultAlias = "Q400001_Trigger"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400001_Trigger:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400001_Trigger] OnPostDataPrepare")
    this = self
end

function Q400001_Trigger:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400001_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400001_Trigger:TriggerIn()
    print("[MainId: 4000][Trigger: Q400001_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4000")
    actor:CreateQuestNpcById(400001, npcs.Npc1075Data.id, 1)
    actor:RequestInteraction(npcs.Npc1075Data.alias)
    this:DestroySelf()
end

function Q400001_Trigger:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400001_Trigger] PreTriggerIn")
end

function Q400001_Trigger:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400001_Trigger] LightUpTriggerIn")
    actorMgr:GetActor("4000"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q400001_Trigger:TriggerOut()
    print("[MainId: 4000][Trigger: Q400001_Trigger] TriggerOut")
end

return Q400001_Trigger
