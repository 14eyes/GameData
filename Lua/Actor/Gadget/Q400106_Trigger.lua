require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400106_Trigger = class("Q400106_Trigger", GadgetActorProxy)
Q400106_Trigger.defaultAlias = "Q400106_Trigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400106_Trigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400106_Trigger] OnPostDataPrepare")
    this = self
end

function Q400106_Trigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400106_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400106_Trigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400106_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 400116)
    this:DestroySelf()
end

function Q400106_Trigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400106_Trigger] PreTriggerIn")
end

function Q400106_Trigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400106_Trigger] LightUpTriggerIn")
end

function Q400106_Trigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400106_Trigger] TriggerOut")
end

return Q400106_Trigger
