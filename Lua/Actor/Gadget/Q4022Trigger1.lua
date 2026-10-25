require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022Trigger1 = class("Q4022Trigger1", GadgetActorProxy)
Q4022Trigger1.defaultAlias = "Q4022Trigger1"
local Q4022ClientConfig = require("Quest/Client/Q4022ClientConfig")

local this
local subIDs = Q4022ClientConfig.SubIDs
local npcs = Q4022ClientConfig.Npcs
local gadgets = Q4022ClientConfig.Gadgets
local points = Q4022ClientConfig.Points
local datas = Q4022ClientConfig.Datas

function Q4022Trigger1:OnPostDataPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger1] OnPostDataPrepare")
    this = self
end

function Q4022Trigger1:OnPostComponentPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4022Trigger1:TriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("4022")
    actor:CreateQuestNpcById(402209, npcs.Npc13316Data.id, 0)
    actor:RequestInteraction(npcs.Npc13316Data.alias, "", true)
    this:DestroySelf()
end

function Q4022Trigger1:PreTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger1] PreTriggerIn")
end

function Q4022Trigger1:LightUpTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger1] LightUpTriggerIn")
    actorMgr:GetActor("4022"):ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
end

function Q4022Trigger1:TriggerOut()
    print("[MainId: 4022][Trigger: Q4022Trigger1] TriggerOut")
end

return Q4022Trigger1
