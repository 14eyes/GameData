require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400103_Trigger = class("Q400103_Trigger", GadgetActorProxy)
Q400103_Trigger.defaultAlias = "Q400103_Trigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400103_Trigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400103_Trigger] OnPostDataPrepare")
    this = self
end

function Q400103_Trigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400103_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400103_Trigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400103_Trigger] TriggerIn")
    actorMgr:GetActor("4001"):RequestInteraction(npcs.Npc1076Data.alias)
    this:DestroySelf()
end

function Q400103_Trigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400103_Trigger] PreTriggerIn")
end

function Q400103_Trigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400103_Trigger] LightUpTriggerIn")
end

function Q400103_Trigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400103_Trigger] TriggerOut")
end

return Q400103_Trigger
