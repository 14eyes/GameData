require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40144Trigger2 = class("Q40144Trigger2", GadgetActorProxy)
Q40144Trigger2.defaultAlias = "Q40144Trigger2"
local Q40144ClientConfig = require("Quest/Client/Q40144ClientConfig")

local this
local subIDs = Q40144ClientConfig.SubIDs
local npcs = Q40144ClientConfig.Npcs
local points = Q40144ClientConfig.Points
local datas = Q40144ClientConfig.Datas

function Q40144Trigger2:OnPostDataPrepare()
    print("[MainId: 40144][Trigger: Q40144Trigger2] OnPostDataPrepare")
    this = self
end

function Q40144Trigger2:OnPostComponentPrepare()
    print("[MainId: 40144][Trigger: Q40144Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40144)
end

function Q40144Trigger2:TriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger2] TriggerIn")
    actorMgr:GetActor("40144"):RequestInteraction(npcs.LisaData.alias, "", true)
    this:DestroySelf()
end

function Q40144Trigger2:PreTriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger2] PreTriggerIn")
end

function Q40144Trigger2:LightUpTriggerIn()
    print("[MainId: 40144][Trigger: Q40144Trigger2] LightUpTriggerIn")
end

function Q40144Trigger2:TriggerOut()
    print("[MainId: 40144][Trigger: Q40144Trigger2] TriggerOut")
end

return Q40144Trigger2
