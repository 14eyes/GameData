require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400104_Trigger = class("Q400104_Trigger", GadgetActorProxy)
Q400104_Trigger.defaultAlias = "Q400104_Trigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400104_Trigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400104_Trigger] OnPostDataPrepare")
    this = self
end

function Q400104_Trigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400104_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400104_Trigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400104_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("4001")
    actor:CreateQuestNpcById(400104, npcs.Npc1075Data.id, 1)
    actor:RequestInteraction(npcs.Npc1075Data.alias)
    this:DestroySelf()
end

function Q400104_Trigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400104_Trigger] PreTriggerIn")
end

function Q400104_Trigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400104_Trigger] LightUpTriggerIn")
    actorMgr:GetActor("4001"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q400104_Trigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400104_Trigger] TriggerOut")
end

return Q400104_Trigger
