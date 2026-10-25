require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020Trigger6 = class("Q4020Trigger6", GadgetActorProxy)
Q4020Trigger6.defaultAlias = "Q4020Trigger6"
local Q4020ClientConfig = require("Quest/Client/Q4020ClientConfig")

local this
local subIDs = Q4020ClientConfig.SubIDs
local npcs = Q4020ClientConfig.Npcs
local gadgets = Q4020ClientConfig.Gadgets
local points = Q4020ClientConfig.Points
local datas = Q4020ClientConfig.Datas

function Q4020Trigger6:OnPostDataPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger6] OnPostDataPrepare")
    this = self
end

function Q4020Trigger6:OnPostComponentPrepare()
    print("[MainId: 4020][Trigger: Q4020Trigger6] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 2.8, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4020Trigger6:TriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger6] TriggerIn")
    local actor = actorMgr:GetActor("4020")
    actor:ShowBlackScreenWithDialogText(0, 0.5, 0, nil, nil, nil, 0, false, true)
    actor:CreateQuestNpcById(402013, npcs.Npc1075Data.id, 1)
    actor:RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q4020Trigger6:PreTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger6] PreTriggerIn")
end

function Q4020Trigger6:LightUpTriggerIn()
    print("[MainId: 4020][Trigger: Q4020Trigger6] LightUpTriggerIn")
end

function Q4020Trigger6:TriggerOut()
    print("[MainId: 4020][Trigger: Q4020Trigger6] TriggerOut")
end

return Q4020Trigger6
