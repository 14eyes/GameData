require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40144Trigger1 = class("Q40144Trigger1", GadgetActorProxy)
Q40144Trigger1.defaultAlias = "Q40144Trigger1"
local Q40144ClientConfig = require("Quest/Client/Q40144ClientConfig")

local this
local subIDs = Q40144ClientConfig.SubIDs
local npcs = Q40144ClientConfig.Npcs
local points = Q40144ClientConfig.Points
local datas = Q40144ClientConfig.Datas

function Q40144Trigger1:OnPostDataPrepare()
    print("[MainId: 40144][Trigger: Q40144Trigger1] OnPostDataPrepare")
    this = self
end

function Q40144Trigger1:OnPostComponentPrepare()
    print("[MainId: 40144][Trigger: Q40144Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40144Trigger1:TriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger1] TriggerIn")
    actorMgr:GetActor("40144"):RequestInteraction(npcs.LisaData.alias, "", true)
    this:DestroySelf()
end

function Q40144Trigger1:PreTriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger1] PreTriggerIn")
end

function Q40144Trigger1:LightUpTriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger1] LightUpTriggerIn")
end

function Q40144Trigger1:TriggerOut()
    print("[MainId: 40144][Trigger: Q40144Trigger1] TriggerOut")
end

return Q40144Trigger1
