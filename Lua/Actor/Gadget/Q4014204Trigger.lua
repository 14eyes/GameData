require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4014204Trigger = class("Q4014204Trigger", GadgetActorProxy)
Q4014204Trigger.defaultAlias = "Q4014204Trigger"
local Q40142ClientConfig = require("Quest/Client/Q40142ClientConfig")

local this
local subIDs = Q40142ClientConfig.SubIDs
local npcs = Q40142ClientConfig.Npcs
local points = Q40142ClientConfig.Points
local datas = Q40142ClientConfig.Datas

function Q4014204Trigger:OnPostDataPrepare()
    print("[MainId: 40142][Trigger: Q4014204Trigger] OnPostDataPrepare")
    this = self
end

function Q4014204Trigger:OnPostComponentPrepare()
    print("[MainId: 40142][Trigger: Q4014204Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40142)
end

function Q4014204Trigger:TriggerIn()
    print("[MainId: 40142][Trigger: Q4014204Trigger] TriggerIn")
end

function Q4014204Trigger:PreTriggerIn()
    print("[MainId: 40142][Trigger: Q4014204Trigger] PreTriggerIn")
end

function Q4014204Trigger:LightUpTriggerIn()
    print("[MainId: 40142][Trigger: Q4014204Trigger] LightUpTriggerIn")
end

function Q4014204Trigger:TriggerOut()
    print("[MainId: 40142][Trigger: Q4014204Trigger] TriggerOut")
    actorMgr:GetActor("40142"):DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
    this:DestroySelf()
end

return Q4014204Trigger
